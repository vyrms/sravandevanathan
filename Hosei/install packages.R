# for transforming data
install.packages('dplyr')
install.packages('tidyr')

install.packages('matrixStats')
install.packages('CARS')
install.packages('reshape')
install.packages('installr')
install.packages('ape')
install.packages('data.table')
install.packages('pheatmap')

# make visualizations
install.packages('ggplot2')
install.packages('ggforce')
install.packages('GGally')
install.packages('ggmosaic')

install.packages('plotly')
if (!require(remotes)) install.packages("remotes")
remotes::install_github("cpsievert/plotly_book")

# for obtaining and working with geo-spatial data structures
install.packages('sf')
install.packages('rnaturalearth')
install.packages('cartogram')

# for working with statistical model and summaries
install.packages('MASS')
install.packages('broom')
install.packages('forecast')

# for running R code in response to user input
install.packages('shiny')

# for combining multiple views and combining results
install.packages('htmltools')
install.packages('htmlwidgets')

library(dplyr)
library(tidyr)

library(matrixStats)
library(CARS)
library(installr)
library(ape)
library(data.table)
library(pheatmap)
library(reshape)

library(ggplot2)
library(ggforce)
library(GGally)
library(ggmosaic)

library(plotly)
library(plotlyBook)

library(sf)
library(rnaturalearth)
library(cartogram)

library(MASS)
library(broom)
library(forecast)

library(shiny)

library(htmltools)
library(htmlwidgets)


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



