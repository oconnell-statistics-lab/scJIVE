\name{showPCA}
\alias{showPCA}
\title{
Principal Component Plots for JIVE Decomposition
}
\description{
Display principal component plots of the joint and individual structure of a data set after a joint and individual variation explained (JIVE) decomposition.
}
\usage{
showPCA(result, n_joint = 0, n_indiv = rep(0, length(result$data)), 
         Colors = "black", pch=1)
}

\arguments{
  \item{result}{
An object of class "jive".
}
  \item{n_joint}{
The number of joint components to plot. 
}
  \item{n_indiv}{
The vector of the number of individual components to plot for each data set.
}
  \item{Colors}{
The colors of the data points in the plot. Can be a vector specifying a different color for each sample.
}
 \item{pch}{
Character to use for plotting.  Can be a vector specifying a different character for each sample.  
}
}

\details{
This shows the patterns in the column space that maximize variability of joint or individual structure, analogous to principal components.  A multi-panel figure with aligned scatterplots for each pair of principal components, across both joint and individual structure, will be generated.  Plotted points correspond to shared columns (e.g., samples).  
}


\references{
Lock, E. F., Hoadley, K. A., Marron, J. S., & Nobel, A. B. (2013). Joint and individual variation explained (JIVE) for integrated analysis of multiple data types. The Annals of Applied Statistics, 7(1), 523-542.
}
\author{
Michael J. O'Connell and Eric F. Lock
}

\seealso{
\code{\link{jive}}, \code{\link{plot.jive}}
}
\examples{
##Load JIVE results (using default settings) for simulated data 
##as in Section 2.4 of Lock et al., 2013,
##with rank 1 joint structure, and rank 1 individual structure for each dataset
data(SimResults) 
# Visualize results
# Plot the three components, 1 joint and 1 individual from each source
showPCA(Results,1,c(1,1))
###This displays three scatterplots: 
#the first joint principal component vs. the first principal component individual to source 1,
#the first joint component vs.  the first component individual to source 2, and 
#the first component individual to source 1 vs. the first component individual to source 2.
}

