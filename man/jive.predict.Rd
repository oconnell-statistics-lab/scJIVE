\name{jive.predict}
\alias{jive.predict}
\title{
Predict JIVE scores for new data
}
\description{
Computes joint and individual variation explained (JIVE) scores for new data via iterative least squares, with fixed loadings given by a previous JIVE analysis.
}
\usage{
jive.predict(data.new, jive.output)
}
\arguments{
  \item{data.new}{
  A list of two or more linked data matrices on which to estimate JIVE scores.  These matrices must have the same column dimension N, which is assumed to be common. 
}
  \item{jive.output}{
	An object of class "jive", with row dimensions matching those for data.new.  
}
}

\value{
\item{joint.scores}{r X N matrix of joint scores}
\item{individual.scores}{List where entry [[i]] gives the r_i X N matrix of individual scores for source i}
\item{errors}{Vector of the proportion of total variance explained over iterations during estimation}
\item{joint.load}{d X r matrix of joint loadings} 
\item{indiv.load}{List where entry [[i]] gives the d_i X N matrix of individual laodings for source i}
}


\references{
Kaplan, A. and Lock, E.F. (2017). Prediction with Dimension Reduction of Multiple Molecular Data Sources for Patient Survival. arXiv:1704.02069, 2017.   
}
\author{
Adam Kaplan
}

\seealso{
\code{\link{jive}}
}
\examples{
##Load data that were simulated as in Section 2.4 of Lock et al., 2013,
##with rank 1 joint structure, and rank 1 individual structure for each dataset
data(SimData) 
##load JIVE results (using default settings) for simulated data 
data(SimResults) 
#predict JIVE scores for data (treated as "new data" here)
pred.results <- jive.predict(SimData,Results) 
##estimated joint structure is pred.results$joint.load %*% pred.results$joint.scores
##estimated individual structure for source i is 
##pred.results$indiv.load[[i]] %*% pred.results$indiv.scores[[i]]
}

