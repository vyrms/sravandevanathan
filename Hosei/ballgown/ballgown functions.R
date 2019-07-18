library(ballgown)

#folder with all the files
setwd("C:/Users/Hosei/Documents/sravandevanathan/ballgown") 

# generate sample list: *** all samples included
samples.list <- list.files(path =".")
samples.list

bg = ballgown(samples = samples.list, meas='FPKM') # generation of a ballgown object 
sampleNames(bg) # sanity check sample names

bg@expr[["exon"]]


# make bg from gzip?
rsembg = ballgownrsem(dir=dataDir, samples=c('tiny', 'tiny2'), gtf=gtf,
                       bamout='none', zipped=TRUE)
sampleNames(rsembg)

# on the ballgown manual
ballgownrsem(dir = "", samples, gtf, UCSC = TRUE,
             tfield = "transcript_id", attrsep = "; ", bamout = "transcript",
             pData = NULL, verbose = TRUE, meas = "all", zipped = FALSE)


checkAssembledTx()




