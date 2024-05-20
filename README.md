[![DOI](https://zenodo.org/badge/725159492.svg)](https://zenodo.org/doi/10.5281/zenodo.10223848)

# Rela-Nivo in Metastatic Melanoma

## Overview 
This is a repository for code to reproduce the figures from "*Blockade of LAG3 and PD1 leads to co-expression of cytotoxic and exhaustion gene modules in CD8+ T cells to promote antitumor immunity*" by Cillo et al. 

## Reproducibility
We performed analyses in a Dockerized RStudio environment. The Dockerfile is available in this repository. 

We have also used the [renv package](https://rstudio.github.io/renv/) to track package versions that were used for analysis. These files are also available in this repository under the r_environment directory. Please refer to the [renv package tutorial](https://rstudio.github.io/renv/articles/renv.html) for more information on using renv. 

## Downloading data
The data necessary to recreate the figures are available from [our data record on Zenodo](https://zenodo.org/records/11162668). To execute the R markdown files included in this repository, these data should be downloaded and placed into the **Data** directory.
