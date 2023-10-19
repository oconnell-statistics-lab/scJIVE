\name{r.jive-package}
\alias{r.jive-package}
\alias{r.jive}
\docType{package}
\title{
Perform JIVE Decompositions for Multi-Source Data
}
\description{
Performs the Joint and Individual Variation Explained (JIVE) decompositions on a list of data sets when the data share a dimension, returning low-rank matrices that capture the joint and individual structure of the data. It provides two methods of rank selection when the rank is unknown, a permutation test and a Bayesian Information Criterion (BIC) selection algorithm. Also included in the package are three plotting functions for visualizing the variance attributed to each data source: a bar plot that shows the percentages of the variability attributable to joint and individual structure, a heatmap that shows the structure of the variability, and principal component plots.  
}
\details{
\tabular{ll}{
Package: \tab r.jive\cr
Type: \tab Package\cr
Version: \tab 2.4\cr
Date: \tab 2020-11-11\cr
License: \tab GPL-3\cr
}

}
\author{
Michael J. O'Connell and Eric F. Lock

Maintainer: Michael J. O'Connell <oconnemj@miamioh.edu>
}
\references{
Lock, E. F., Hoadley, K. A., Marron, J. S., & Nobel, A. B. (2013). Joint and individual variation explained (JIVE) for integrated analysis of multiple data types. The Annals of Applied Statistics, 7(1), 523-542.

O'Connell, M. J., & Lock, E.F. (2016). R.JIVE for Exploration of Multi-Source Molecular Data. Bioinformatics advance access: 32(18):2877-2879, 2016.}

\keyword{ package }

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
BIC_result <- jive(SimData, method="bic")
summary(BIC_result)
}
###Load the permutation results
data(SimResults) 
# Visualize results
showVarExplained(Results)
# showVarExplained is also called by the "jive" S3 class default plot method

#show heatmaps
showHeatmaps(Results)

#show PCA plots
showPCA(Results,1,c(1,1))

}
