\name{showVarExplained}
\alias{showVarExplained}
\title{
Display Variance Explained
}
\description{
Creates a bar plot displaying the variance explained from a joint and individual variation explained (JIVE) decomposition. Shows the percentage of variance attributed to each of joint structure, individual structure, and residual variance. 
}
\usage{
showVarExplained(result, col = c("grey20", "grey43", "grey65"))
}
\arguments{
  \item{result}{
An object of class "jive".
}
  \item{col}{
A vector for the colors of the bars in the plot.
}
}

\references{
Lock, E. F., Hoadley, K. A., Marron, J. S., & Nobel, A. B. (2013). Joint and individual variation explained (JIVE) for integrated analysis of multiple data types. The Annals of Applied Statistics, 7(1), 523-542.

O'Connell, M. J., & Lock, E.F. (2016). R.JIVE for Exploration of Multi-Source Molecular Data. Bioinformatics advance access: 10.1093/bioinformatics/btw324.
}
\author{
Michael J. O'Connell and Eric F. Lock
}

\seealso{
\code{\link{plot.jive}}
}
\examples{
##Load JIVE results (using default settings) for simulated data 
##as in Section 2.4 of Lock et al., 2013,
##with rank 1 joint structure, and rank 1 individual structure for each dataset
data(SimResults) 
# Visualize results
showVarExplained(Results)
# showVarExplained is also called by the "jive" S3 class default plot method
plot(Results)
}

