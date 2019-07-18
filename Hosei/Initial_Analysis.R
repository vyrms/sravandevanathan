library(dplyr)
library (edgeR)

data = read.table("/Users/Sravan/Desktop/t_data_combined", sep = "\t", header =TRUE) 
#str(data)
low_variance_fpkm_isoforms = apply(data[,4:26], 1, var) < 1 
data2 = data[!low_variance_fpkm_isoforms, ]
#apply ( data2[,4:26], 2, quantile )
#hist(log2(data2$L6_unmatched),
#     xlab = "log2(FPKM)",
#     xlim = c(-12,12),
#     main = "Histogram distribution of L6_unmatched",
#     breaks=50,
#     las = 1) 

#apply ( data2[,5:26 ]  , 2, sum)
#cor ( data2[, 4:26], method = "spearman")

pdf ('~/Desktop/Scatterfinal.pdf', width = 5 , height = 5)
#pairs (data2[,4:8])

plot (data2$L6_GATCAG, data2$L6_ATCACG, 
      pch = 19, cex = 0.5, 
      main = "Scatterplot of FPKM Values", 
      log = "xy",  las = 1)
      xlab = "L6_GATCAG",
      ylab = "L6_ATCACG",
      xlim = c(1,10000)
      )
abline( a =0 , b =1 , col = "red", lwd=  1.5)


plot (data2$L2_GCCAAT, data2$L6_ATCACG, 
      pch = 19, cex = 0.5, 
      main = "Scatterplot of FPKM Values", 
      log = "xy",  las = 1,
      xlab = "L2_GCCAAT",
      ylab = "L6_ATCACG",
    xlim = c(1, 10000))
abline( a =0 , b =1 , col = "red", lwd=  1.5)

dev.off()
#dev.off()

plotMDS ( data2[,4:26])
# This suggests looking at L6_CGATTGT and L2-ACAGTG in more detail. 
# L2_ACAGTG seems to not correlate at all with other samples likely an artifact 
# should be investigated in more detail and possibly removed. 


