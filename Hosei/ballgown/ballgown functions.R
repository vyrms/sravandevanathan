library(ballgown)

#folder with all the files
setwd("C:/Users/Seraph/Documents/sravandevanathan/ballgown/CHS/ballgown_filtered") 

# generate sample list: *** all samples included
samples.list <- list.files(path =".")
samples.list

bg = ballgown(samples = samples.list, meas='all') # generation of a ballgown object 
sampleNames(bg) # sanity check sample names

View(bg)
View(bg@expr[['trans']])
View(bg@expr[['exon']])
View(bg@expr[['intron']])
View(bg@indexes[['e2t']])
View(bg@indexes[['t2g']])
View(bg@structure[['intron']]@seqnames)


# make bg from gzip?
rsembg = ballgownrsem(dir=dataDir, samples=c('tiny', 'tiny2'), gtf=gtf,
                       bamout='none', zipped=TRUE)
sampleNames(rsembg)

# on the ballgown manual
ballgownrsem(dir = "", samples, gtf, UCSC = TRUE,
             tfield = "transcript_id", attrsep = "; ", bamout = "transcript",
             pData = NULL, verbose = TRUE, meas = "all", zipped = FALSE)


checkAssembledTx()



plotTranscripts('DDX11L1', bg, 
                samples= samples.list, 
                meas='cov', colorby='transcript')



