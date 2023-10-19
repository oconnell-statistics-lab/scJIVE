\name{jive}
\alias{jive}
\alias{jive.iter}
\alias{bic.jive}
\alias{jive.perm}
\title{
JIVE Decomposition for Multi-source Data
}
\description{
Given a list of linked data sets, this algorithm will return low-rank matrices of joint and individual structure. The jive function is a wrapper that centers and scales the data, replaces the missing values using the SVDmiss function if necessary, then proceeds with a specified rank selection method. The jive.iter function performs the joint and individual variation explained (JIVE) decomposition, given ranks and the processed data set. The functions jive.perm and bic.jive perform rank selection using a permutation test and the Bayesian Information Criterion, respectively. 
}
\usage{
jive(data, rankJ = 1, rankA = rep(1, length(data)), method = "perm",
      dnames = names(data), conv = "default", maxiter = 1000, scale = TRUE, center = TRUE,
      orthIndiv = TRUE, est = TRUE, showProgress=TRUE)

jive.iter(data, rankJ = 1, rankA = rep(1, length(data)), conv = 1e-06,
           maxiter = 1000, orthIndiv = TRUE, showProgress=TRUE)

jive.perm(data, nperms = 100, alpha = 0.05, est = TRUE, conv = 1e-06, 
           maxiter = 1000, orthIndiv = TRUE, showProgress=TRUE)

bic.jive(data, n = unlist(lapply(data, ncol)) * unlist(lapply(data, nrow)),
          d = unlist(lapply(data, nrow)), conv = 1e-06, maxiter = 1000,
          orthIndiv = TRUE, showProgress=TRUE)
}
\arguments{
  \item{data}{
A list of two or more linked data matrices on which to perform the JIVE decomposition.  These matrices must have the same column dimension, which is assumed to be common.  
}
  \item{rankJ}{
An integer giving the joint rank of the data, if known. If not given, this will be calculated using the chosen method.  If the method is "given" then the default is 1.
}
  \item{rankA}{
A vector giving the indvidual ranks of the data, if known. If not given, this will be calculated using the chosen method.  If the method is "given" then the default is rep(1, length(data)). 
}
  \item{method}{
A string with the method to use for rank selection. Possible options are "given", "perm", and "bic". The default is "perm". If ranks are known, you should use "given".  
}
  \item{dnames}{
A vector containing the names of the data sources. Default is names(data).
}
  \item{conv}{
A value indicating the convergence criterion. 
}
  \item{maxiter}{
The maximum number of iterations for each instance of the JIVE algorithm. 
}
  \item{scale}{
A boolean indicating whether or not the data should be scaled.  If TRUE, each data set is divided by its Frobenius norm prior to the JIVE algorithm. Default is TRUE.
}
  \item{center}{
A boolean indicating whether or not the data should be centered.  If TRUE, the rows of each data set are mean-centered. Default is TRUE.
}
  \item{orthIndiv}{
A boolean indicating whether or not the algorithm should enforce orthogonality between individual structures. The default is TRUE.
}
  \item{est}{
A boolean indicating whether or not the data should first be compressed via singular value decomposition before running the JIVE algorithm;  this will yield identical results, but can improve computational efficiency dramatically for data with more rows than columns.  The default is TRUE.
}
  \item{showProgress}{
A boolean indicating whether or not to give output showing the progress of the algorithm. If TRUE, the algorithm will print out updates about the number of iterations the algorithm is taking and the progress of the rank selection method, if applicable.  If FALSE, the algorithms will give no printed output when run.  
}
  \item{nperms}{
A value indicating the number of permutations for rank estimation. Default is 100.
}
  \item{alpha}{
A value between 0 and 1 giving the quantile to use for rank estimation. Default is .05.
}
  \item{n}{
A vector for the total number of entries in each data source, for use in the BIC calculation. The default is to calculate the total number of entries in each element of data. 
}
  \item{d}{
A vector for the total number of variables (rows) in each data source, for use in the BIC calculation. The default is to calculate the number of rows in each element of data. 
}
}
\details{
It is recommended to make all calls to the JIVE functions using the jive() wrapper, as this function does all of the pre-processing of the data (centering, scaling, handling missingness, and reducing the data set to increase computational efficiency). The algorithm will print the number of iterations for each call of the JIVE iteration function. 
}
\value{
%%  ~Describe the value returned
Returns an object of class jive.
%%  If it is a LIST, use
\item{data}{a list containing the centered and scaled data sets, with missing values replaced, if applicable.}
\item{joint}{a list containing matrices that capture the joint structure of the data.}
\item{individual}{a list containing matrices that capture the individual structure of the data.}
\item{rankJ}{a value giving joint rank of the data.}
\item{rankA}{a vector giving the individual ranks of the data.}
\item{method}{a string denoting the rank selection method used.}
\item{bic.table}{if bic rank selection used, a matrix that shows the BIC values for different ranks.}
\item{converged}{if permutation rank selection used, a boolean stating whether or not the rank selection converged within the maximum number of iterations.}
\item{scale}{A list of rour elements: $Center and $Scale are booleans stating whether the data were centered or scaled, respectively, $'Center Values' gives the value subtracted from each row and $'Scale Values' gives the multiplicative scale factor for each source.}
}
\references{
Lock, E. F., Hoadley, K. A., Marron, J. S., & Nobel, A. B. (2013). Joint and individual variation explained (JIVE) for integrated analysis of multiple data types. The Annals of Applied Statistics, 7(1), 523-542.

O'Connell, M. J., & Lock, E.F. (2016). R.JIVE for Exploration of Multi-Source Molecular Data. Bioinformatics, 32(18):2877-2879, 2016.

Jere, S., Dauwels, J., Asif, M. T., Vie, N. M., Cichocki, A., and Jaillet, P. (2014). Extracting commuting patterns in railway networks through matrix decompositions. In 13th IEEE International Conference on Control, Automation, Robotics and Vision (ICARCV), pages 541-546. IEEE.
}
\author{
Michael J. O'Connell and Eric F. Lock
}

\seealso{
\code{\link{summary.jive}}, \code{\link{plot.jive}}
}
\examples{
\donttest{
set.seed(10)
##Load data that were simulated as in Section 2.4 of Lock et al., 2013,
##with rank 1 joint structure, and rank 1 individual structure for each dataset
data(SimData) 
# Using default method ("perm")
Results <- jive(SimData)
summary(Results)

# Using BIC rank selection
#We set the maximum number of iterations allowed to 50 to speed up this example.  
#In practice we recommend a higher value, such as the default of 1000, 
#to ensure that all results converge.
BIC_result <- jive(SimData,method="bic",maxiter=50)  
summary(BIC_result)}
}


