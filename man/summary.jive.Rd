\name{summary.jive}
\alias{summary.jive}
\alias{print.jive}
\title{
Summarize a JIVE Decomposition
}
\description{
Provides a summary of JIVE output. Displays the method used for rank selection, the chosen ranks, and a table of the proportion of variance attributable to joint structure, individual structure, and residual variance. print.jive only displays the variance table. 
}
\usage{

\method{summary}{jive}(object, ...)

\method{print}{jive}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
An object of class "jive".
}
  \item{x}{
An object of class "jive".
}
  \item{\dots}{
Additional arguments. 
}
}

\value{
Returns a list.
\item{Method}{a string containing the method used for rank selection.}
\item{Ranks}{the method used for rank selection.}
\item{Variance}{the method used for rank selection.}
}
\references{
Lock, E. F., Hoadley, K. A., Marron, J. S., & Nobel, A. B. (2013). Joint and individual variation explained (JIVE) for integrated analysis of multiple data types. The Annals of Applied Statistics, 7(1), 523-542.

O'Connell, M. J., & Lock, E.F. (2016). R.JIVE for Exploration of Multi-Source Molecular Data. Bioinformatics advance access: 10.1093/bioinformatics/btw324.
}
\author{
Michael J. O'Connell and Eric F. Lock
}

\seealso{
\code{\link{jive}}
}
\examples{
##Load JIVE results (using default settings) for simulated data 
##as in Section 2.4 of Lock et al., 2013,
##with rank 1 joint structure, and rank 1 individual structure for each dataset
data(SimResults) 

# Summary method
summary(Results)

# Print method
Results
}

