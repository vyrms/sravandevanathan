#folder with all the files
setwd("C:/Users/Seraph/Documents/sravandevanathan/ballgown_all") 

# generate sample list: *** all samples included
samples.list <- list.files(path =".")
samples.list

# good samples
(bg@dirs)

# ones that were filtered out
samples.list[-which(samples.list %in% bg@dirs)]
