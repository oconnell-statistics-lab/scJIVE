\name{plot.jive}
\alias{plot.jive}
\title{
Create Plots for a JIVE Object
}
\description{
Three types of plots are available. By default (or type="var"), this creates a bar plot showing the percentage of variability attributable to joint structure, individual structure, and residual variance. With type="heat", it will create a series of heatmaps. With type="pca", it will give principal component plots.  
}
\usage{
\method{plot}{jive}(x, type="var", ...)
}
\arguments{
  \item{x}{
An object of class "jive" to be plotted.
}
  \item{type}{
A string indicating the type of plot. The default, "var", generates a bar plot of the variance explained, "heat" generates a heatmap, and "pca" generates principal component plots. 
}
  \item{\dots}{
Additional arguments to pass to the specific plotting functions. See documentation for \code{\link{showVarExplained}},\code{\link{showHeatmaps}}, and \code{\link{showPCA}} for more details.
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
\code{\link{showVarExplained}},\code{\link{showHeatmaps}},\code{\link{showPCA}}
}
\examples{
##Load JIVE results (using default settings) for simulated data 
##as in Section 2.4 of Lock et al., 2013,
##with rank 1 joint structure, and rank 1 individual structure for each dataset
data(SimResults) 
# Visualize results
# Bar plot of variation explained
plot(Results)
# Heatmap
plot(Results,type="heat")
# Principal compontents plots
plot(Results,type="pca",1,c(1,1))
}

