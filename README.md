# scJIVE
"In single-cell RNA sequencing (scRNA-seq) data analysis, addressing batch effects — technical artifacts stemming from factors such as varying sequencing technologies, equipment, and capture times — is crucial. These factors cause unwanted variation in the data and often obfuscate the underlying biological signal of interest. The Joint and Individual Variation Explained for single-cell sequencing data (scJIVE) can be used to extract shared biological patterns from multi-source sequencing data while adjusting for individual non-biological variations (i.e., batch effect). We enhance JIVE for large-scale scRNA-seq data by boosting its computational efficiency and tailoring it to the single-cell context. scJIVE aims to decompose scRNA-seq datasets into a joint structure capturing the true biological variability and individual structures which capture technical variability within each batch."

  
## Citing scJIVE
  
Hastings, Lee and O'Connell. Batch-effect correction in single-cell RNA sequencing data using JIVE. [bioRxiv](https://www.biorxiv.org/content/10.1101/2023.10.25.563973v1).

## Authors

Joseph Hastings <hastinjw@miamioh.edu>, Donghyung Lee <leed13@miamioh.edu>, Michael J. O'Connell <oconnemj@miamioh.edu>

## scJIVE Installation

You can install the development version of scJIVE from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("oconnell-statistics-lab/scJIVE")
```


  