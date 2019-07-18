if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ballgown")
session_info()
# update R

library(ballgown)

# Hadley Wickham read book

# restarts R studio
.rs.restartR()

# get wd (working directory)
getwd()
