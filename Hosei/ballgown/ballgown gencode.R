library(ballgown)

#folder with all the files
setwd("C:/Users/Seraph/Documents/sravandevanathan/ballgown/Gencode/ballgown_gencode_filtered") 

# generate sample list: *** all samples included
samples.list <- list.files(path =".")
samples.list

bgGC = ballgown(samples = samples.list, meas='all') # generation of a ballgown object 
sampleNames(bg) # sanity check sample names

View(bgGC@expr[['trans']])
gcRPL11 = getCounts2('RPL11', bgGC)
View(gcRPL11[[1]])
