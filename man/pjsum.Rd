\name{pjsum}
\alias{pjsum}
\title{
Calculate Number of Free Parameters for BIC Calculation
}
\description{
Computes the number of free parameters from the individual structure of the data.  Used internally to calculate the BIC for the JIVE decomposition.
}
\usage{
pjsum(dim, rank)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dim}{
A vector containing the number of rows of each data source. 
}
  \item{rank}{
A vector containing the ranks of the individual structure. 
}
}

\value{
Returns the number of free parameters. 
}

\author{
Michael J. O'Connell and Eric F. Lock
}

\examples{
pjsum(c(25,50), c(1,2))
}

