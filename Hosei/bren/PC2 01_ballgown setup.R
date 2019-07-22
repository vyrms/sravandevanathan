library(ballgown)
library(matrixStats)

gene.info <- t_data[c(9,10)]# where gene.info is subseted from 


#folder with all the files
setwd("C:/Users/Seraph/Documents/sravandevanathan/ballgown_all") 

# generate sample list: *** all samples included
samples.list <- list.files(path =".")
samples.list
# filtered out troublesome cols 
samples.list <- colnames(expressed.genes) 
samples.list

bg = ballgown(samples = samples.list, meas='all') # generation of a ballgown object 
sampleNames(bg) # sanity check sample names


#filter out by expression 
over200 <- exprfilter(gown = bg, cutoff= 200, meas = "FPKM") #filtering example

#filter out low expressed
bg_filt = subset(bg,"rowVars(texpr(bg)) >
1",genomesubset=TRUE)

#filter boxplot
fpkm = texpr(bg_filt,meas="FPKM")
fpkm = log2(fpkm+1)
boxplot(fpkm, las = 2, ylab='log2(FPKM+1)')

#transcripts lengths 
full_table <- texpr(bg , 'all')
hist(full_table$length, breaks=1000, xlab="Transcript length (bp)", main="Distribution of transcript lengths", col="steelblue",  xlim = range(0,30000))
