RPL11exon = RPL11[[1]]


RPL11exSorted = sortByPheno(RPL11exon, pheno.filtered)

RPL11exWildtype = RPL11exSorted[['wildtype']]

RPL11exSorted[['wildtype']][6]/sum(RPL11exSorted[['wildtype']][6])

apply(RPL11exWildtype[,6], 2, sum)



library(ggplot2)
library(reshape)
library(ggforce)

RPL11exonRemoved = RPL11exWildtype[,-c(1,2,3,5)]

meltedRPL11Exon = melt(RPL11exonRemoved, id.vars = 'start')
colnames(meltedRPL11Exon) = c('start', 'sample', 'mrcount')

ggplot(meltedRPL11Exon) + 
  geom_point(aes(x = start, y = mrcount, color = sample))+
  geom_line(aes(x=start, y=mrcount, color = sample))


