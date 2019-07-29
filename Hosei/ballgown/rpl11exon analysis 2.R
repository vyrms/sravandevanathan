RPL11exon = RPL11[[1]]


RPL11exSorted = sortByPheno(RPL11exon, pheno.filtered)

RPL11exWt = RPL11exSorted[['wildtype']]


yay = colSums(RPL11exWildtype[,6:ncol(RPL11exWildtype)])

yay2 = data.frame(RPL11exWildtype[,1:5], t(t(RPL11exWildtype[,6:ncol(RPL11exWildtype)])/yay))

RPL11exonRemoved = yay2[,-c(1,2,3,5)]

meltedRPL11Exon = melt(RPL11exonRemoved, id.vars = 'start')
colnames(meltedRPL11Exon) = c('start', 'sample', 'mrcount')

ggplot(meltedRPL11Exon) + 
  geom_point(aes(x = start, y = mrcount, color = sample))+
  geom_line(aes(x=start, y=mrcount, color = sample))



cleanEnvironment()

library(ggplot2)
library(reshape)
library(ggforce)

RPL11exonRemoved = RPL11exWildtype[,-c(1,2,3,5)]

meltedRPL11Exon = melt(RPL11exonRemoved, id.vars = 'start')
colnames(meltedRPL11Exon) = c('start', 'sample', 'mrcount')

ggplot(meltedRPL11Exon) + 
  geom_point(aes(x = start, y = mrcount, color = sample))+
  geom_line(aes(x=start, y=mrcount, color = sample))


