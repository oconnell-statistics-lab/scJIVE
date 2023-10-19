\name{BRCA_Data}
\alias{Data}
\alias{clusts}
\docType{data}
\title{BRCA TCGA Dataset}
\description{
These data were obtained from the data freeze for The Cancer Genome Atlas flagship BRCA publication (Cancer Genome Atlas Network, 2013), and processed as described in Lock and Dunson, 2013.  Gene expression, methylation, and miRNA data are provided for 348 BRCA tumor samples.       
}
\usage{data(BRCA_data)}
\format{
 This dataset is a list of three entries for three different molecular sources:
\itemize{
\item Data[[1]] (Data$Expression): gene expression matrix for 654 genes (rows) and 348 samples (columns)
\item Data[[2]] (Data$Methylation): DNA methylation matrix for 574 cg sites (rows) and 348 samples (columns)
\item Data[[3]] (Data$miRNA): miRNA expression matrix for 423 cg sites (rows) and 348 samples (columns).
}
The 348 columns are shared by the data sources (here, they correspond to tumor samples)}
   
\references{
Cancer Genome Atlas Network. 2012. ''Comprehensive Molecular Portraits of Human Breast Tumours.'' Nature 490 (7418): 61-70.

Lock, E.F. and Dunson, D.B. 2013. ''Bayesian Consensus Clustering.'' Bioinformatics 29 (20): 2610-16.

O'Connell, M. J., & Lock, E.F. (2016). R.JIVE for Exploration of Multi-Source Molecular Data. Bioinformatics advance access: 10.1093/bioinformatics/btw324.
}

\keyword{datasets}
