
#******************************************************************************#
# load Functions
#******************************************************************************#
sapply(list.files("Functions", full.names = TRUE), source)

#******************************************************************************#
# CRAN packages
#******************************************************************************#

library(shiny)
library(data.table)
library(DT)
library(shinyWidgets)
library(shinycssloaders)
library(shinybusy)
library(prompter)
library(colourpicker)
library(colorspace)
library(shinythemes)
library(xml2)
library(markdown)

#******************************************************************************#
#Bioconductor packages
#******************************************************************************#

library(org.Hs.eg.db)
library(org.Mm.eg.db)
library(org.Bt.eg.db)
library(org.Rn.eg.db)
library(rWikiPathways)
library(enrichplot)
library(clusterProfiler)
library(BiocFileCache)
#library(metaboliteIDmapping)

#******************************************************************************#
# Custom functions
#******************************************************************************#

whichID <- function(x){
  x <- x[!is.na(x)]
  IDtype <- "SYMBOL"
  if (sum(substr(x,1,3) == "ENS", na.rm = TRUE) > 0.5*length(x)){
    IDtype <- "ENSEMBL"
  }
  if (sum(vapply(x,FUN = is.numeric, FUN.VALUE= logical(1)), na.rm = TRUE) > 0.5*length(x)){
    IDtype <- "ENTREZID"
  }
  return(IDtype)
}