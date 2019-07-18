if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install('edgeR')
library(BiocManager)
library(edgeR)
library(mclust)

forfit = filteredgenes2[-1]
forfit100 = forfit[1:100,]

plotMDS(forfit, cex=0.45)
plotMDS(log(forfit), cex = 0.45)
