install.packages('dplyr')
library(dplyr)
install.packages('matrixStats')
library(matrixStats)
install.packages('tidyr')
library(tidyr)
install.packages('CARS')
library(CARS)
install.packages('ggplot2')
library(ggplot2)
install.packages('installr')
library(installr)

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




