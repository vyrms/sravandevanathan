if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ballgown")
session_info()


# Hadley Wickham read book

# restarts R studio
.rs.restartR()

# get wd (working directory)
getwd()

# list all packages in library
library()
