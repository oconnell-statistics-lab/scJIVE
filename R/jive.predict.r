jive.predict <- function(data.new, jive.output){

  l <- length(data.new)
  samp <- ncol(data.new[[1]])
  
  dim <- NULL
  label <- list()
  n <- NULL
  for(i in 1:l){ ##This code takes care of the dimensions of the new data
    dim[i] <- nrow(data.new[[i]])  
    label[[i]] <- rep(i, time = dim[i])
    n[i] <- nrow(data.new[[i]]) * ncol(data.new[[i]])
  }
  label = unlist(label)
  
  #Impute missing values#
  
  for(i in 1:l) {
    if(sum(is.na(data.new[[i]]))>0){
      temp.2 <- SVDmiss(data.new[[i]], ncomp=ncol(data.new[[i]]))[[1]]
      data.new[[i]] <- temp.2$u %*% diag(x=temp.2$d) %*% t(temp.2$v)
    }
  }
 
  # Center and scale individual data sets by frobenius norm
  scaled.new.data <- list()
  for(i in 1:l){
    center <- matrix(jive.output$scale$`Center Values`[[i]], nrow=dim[i], ncol=samp, byrow=FALSE)
    scaled.new.data[[i]] <- (data.new[[i]] - center) 
    scaled.new.data[[i]] <- scaled.new.data[[i]]/jive.output$scale$`Scale Values`[i]
    temp <- SVDmiss(scaled.new.data[[i]], ncomp=ncol(scaled.new.data[[i]]))[[1]]
    scaled.new.data[[i]] <- temp$u %*% diag(x=temp$d) %*% t(temp$v)
  }
  data.new <- scaled.new.data
  
  ##Finding loadings from the output of JIVE on old data##
  
  n_joint <- jive.output$rankJ
  SVD = svd(do.call(rbind,jive.output$joint), nu=n_joint, nv=n_joint)
  joint.load <- SVD$u
  
  indiv.load <- list()
  n_indiv <- list()
  for (i in 1:l){
    n_indiv[[i]] <- jive.output$rankA[i] 
    SVDI = svd(jive.output$individual[[i]],nu=n_indiv[[i]],nv=n_indiv[[i]])
    indiv.load[[i]] <- SVDI$u
  }
  
  ##Initiate Individual Scores##
  
  score.indiv <- list()
  for (i in 1:l){
    score.indiv[[i]] <- matrix(0, nrow = n_indiv[[i]], ncol = samp)
  }
  
  ##Need to set Inits##
  
  error.pre = 1
  converged = 0
  count <- 2
  error.collect <- c()
  error.collect[1] <- error.pre
  sum.sq <- c()
  for (i in 1:l){
    sum.sq[i] <- sum(data.new[[i]]^2)
  }
  
  ############################################While Loop###############
  while(converged==0){
    
    error.pre <- error.collect[count-1]
    Indiv.diff <- list()
    for (i in 1:l){
      Indiv.diff[[i]] <-  data.new[[i]] - (indiv.load[[i]])%*%score.indiv[[i]]
    }
    
    ##Joint Scores for new Data##  
    Indiv.all.diff <- abind(Indiv.diff, along = 1) ##ABIND##
    
    score.joint = t(joint.load)%*%Indiv.all.diff
    
    
    ##Individual Score Estimate for new Data##
    
    ##This is the separated joint loadings in order 
    #to estimate the new individual 
    #scores for new data#
    j.split.load <- list()
    for (i in 1:l){
      j.split.load[[i]] <- joint.load[(label==i),]
    }
    
    for (i in 1:l){
      score.indiv[[i]] <- t(indiv.load[[i]])%*%(data.new[[i]] - j.split.load[[i]]%*%score.joint)
    }
    
    ## Collect the errors ##
    errors <- c()
    for (i in 1:l){
      errors[i] <- sum((data.new[[i]] - (j.split.load[[i]])%*%score.joint - indiv.load[[i]]%*%score.indiv[[i]])^2)
    }
    
    error.new <- sum(errors)/sum(sum.sq)
    error.collect <- c(error.collect, error.new)
    count <- count+1
    converged = ifelse(abs(error.pre - error.new) < 0.000000001, 1, 0) 
    
  }
  
  
  return(list(joint.scores = score.joint, indiv.scores = score.indiv, errors = error.collect, joint.load = joint.load, indiv.load = indiv.load))
  
}


