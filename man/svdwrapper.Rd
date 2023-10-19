\name{svdwrapper}
\alias{svdwrapper}
\title{
Wrapper Function to Perform SVD
}
\description{
Performs SVD on a data matrix using the base svd() function in R, with a workaround to avoid LAPACK errors.  If an SVD of the data matrix gives an error, an SVD of its transpose will be performed.  Used internally when computing the JIVE decomposition.  Credit to Art Owen: \url{https://stat.ethz.ch/pipermail/r-help/2007-October/143508.html}. 
}
\usage{
svdwrapper(x, nu, nv, verbose=F )
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a numeric matrix whos SVD decomposition is to be computed.
}
  \item{nu}{
the number of left singular vectors to be computed.
}
  \item{nv}{
the number of right singular vectors to be computed.
}
 \item{verbose}{
logical.  Print error message if needed.
}
}

\value{
An svd object, as returned by svd(x,nu=nu,nv=nv).
}

\author{
Michael J. O'Connell and Eric F. Lock
}

\examples{
x<-matrix(rnorm(100),nrow=10,ncol=10)
SVD = svdwrapper(x,nu=1,nv=1)
}

