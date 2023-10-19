\name{showHeatmaps}
\alias{showHeatmaps}
\title{
Heatmaps for JIVE Decompositions
}
\description{
This function draws heatmaps for the components of a JIVE decomposition. 
}
\usage{
showHeatmaps(result, order_by = 0, show_all = TRUE)
}
\arguments{
  \item{result}{
An object of class "jive".
}
  \item{order_by}{
Specifies how to order the rows and columns of the heatmap.  If order_by=-1, the matrices are not re-ordered.  If order_by=0, orderings are determined by joint structure. Otherwise, order_by gives the number of the individual structure dataset to determine the ordering. In all cases orderings are determined by complete-linkage hiearchichal clustering of Euclidean distances.
}
  \item{show_all}{
Specifies whether to show the full decomposition of the data, JIVE estimates, and noise.  If show_all=FALSE, only the matrix (or matrices) that determined the column ordering is shown.
}
}

\details{
The columns correspond to the shared dimension (for example, a common sample set), and the ordering of the columns is the same for all matrices shown. 
}

\references{
Lock, E. F., Hoadley, K. A., Marron, J. S., & Nobel, A. B. (2013). Joint and individual variation explained (JIVE) for integrated analysis of multiple data types. The Annals of Applied Statistics, 7(1), 523-542.

O'Connell, M. J., & Lock, E.F. (2016). R.JIVE for Exploration of Multi-Source Molecular Data. Bioinformatics advance access: 10.1093/bioinformatics/btw324.
}
\author{
Michael J. O'Connell and Eric F. Lock
}

\seealso{
\code{\link{jive}}, \code{\link{plot.jive}}, \code{\link{show.image}}
}
\examples{
##Load JIVE results (using default settings) for simulated data 
##as in Section 2.4 of Lock et al., 2013,
##with rank 1 joint structure, and rank 1 individual structure for each dataset
data(SimResults) 
# Display the heatmaps (may need to fiddle with plot window dimensions for this to appear well)
showHeatmaps(Results)
# Order by first data set individual structure
showHeatmaps(Results, order_by=1)
# Show only joint structure
showHeatmaps(Results, show_all=FALSE)
}

