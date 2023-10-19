\name{show.image}
\alias{show.image}
\title{
Draw a Heatmap from a Matrix
}
\description{
Given a matrix, this function draws a heatmap. This function is used internally by the showHeatmaps function.
}
\usage{
show.image(Image, ylab = "")
}
\arguments{
  \item{Image}{
A matrix for which to create the heatmap.
}
  \item{ylab}{
A string for the y-label of the plot. 
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
\code{\link{showHeatmaps}}, \code{\link{jive}}, \code{\link{plot.jive}}
}


