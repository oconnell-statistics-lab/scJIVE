\name{svdmiss}
\alias{SVDmiss}
\title{
Missing Data SVD
}
\description{
This function and description borrowed from R package SpatioTemporal (no longer on CRAN), from authors Paul D. Sampson and Johan Lindstrom. It completes a data matrix using iterative svd as described in Fuentes et. al. (2006). The function iterates between computing the singular value decomposition (svd) for the matrix and replacing the missing values by linear regression of the columns onto the first ncomp svd components. As initial replacement for the missing values regression on the column averages are used. The function will fail if entire rows and/or columns are missing from the data matrix.
}
\usage{
SVDmiss(X, niter = 25, ncomp = min(4, dim(X)[2]), conv.reldiff = 0.001)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
Data matrix, with missing values marked by NA.
}
  \item{niter}{
Maximum number of iterations to run before exiting, Inf will run until the conv.reldiff criteria is met.
}
  \item{ncomp}{
Number of SVD components to use in the reconstruction (>0).
}
 \item{conv.reldiff}{
Assume the iterative procedure has converged when the relative difference between two consecutive iterations is less than conv.reldiff.
}
}

\value{
  A list with the following components: \item{Xfill}{The
  completed data matrix with missing values replaced by
  fitting the data to the \code{ncomp} most important svd
  components} \item{svd}{The result of svd on the completed
  data matrix, i.e.  \code{svd(Xfill)}} \item{status}{A
  vector of status variables: \code{diff}, the absolute
  difference between the two last iterations;
  \code{rel.diff}, the relative difference; \code{n.iter},
  the number of iterations; and \code{max.iter}, the
  requested maximum number of iterations.}
}



