# About PinPath-Shiny
PinPath is an R Shiny app for visualizing (omics) data onto pathway diagrams, and **pinpoint** where in the pathway the relevant changes occur.
Results from (epi)genomics, transcriptomics, (phospho)proteomics, metabolomics and many more experiments can be visualized onto pathway diagrams from KEGG and WikiPathways. 
You can also use your own GPML and KGML files to visualize data onto custom pathways. 
As long as your data can be linked to genes, proteins, or metabolites, you can visualize it using PinPath. 

Please visit our website for more information: SyNUM-lab.github.io/PinPath

## Installation
Use the following R code to install the development version of PinPath:

```r
# install "remotes" package
if (!require("remotes", quietly = TRUE))
    install.packages("remotes")
      
# Install PinPath from GitHub
remotes::install_github("SyNUM-lab/PinPath_Shiny") 
```

## Run the app
Use the following R code to run the Shiny app:
```r
PinPathShiny::runPinPath() 
```
