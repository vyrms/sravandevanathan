install.packages('dplyr')
install.packages('matrixStats')
install.packages('tidyr')
install.packages('CARS')
install.packages('ggplot2')
install.packages('installr')
install.packages('ape')
install.packages('data.table')
install.packages('pheatmap')

library(dplyr)
library(matrixStats)
library(tidyr)
library(CARS)
library(ggplot2)
library(installr)
library(ape)
library(data.table)
library(pheatmap)


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("ballgown")
library(ballgown)
BiocManager::install('edgeR')
library(edgeR)

install.packages('devtools')
library(devtools)
devtools::install_github("klutometis/roxygen")
library(roxygen2)



