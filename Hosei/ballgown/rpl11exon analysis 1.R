library(ggplot2)
library(reshape)
library(ggforce)

hist(rpl11exonetid$e_id, breaks = 22, ylim = range(0,14))


RPL11exonRemoved = RPL11exon[,-c(1,2,3,5)]

meltedRPL11Exon = melt(RPL11exonRemoved, id.vars = 'start')
colnames(meltedRPL11Exon) = c('start', 'sample', 'mrcount')

ggplot(meltedRPL11Exon) + 
  geom_point(aes(x = start, y = mrcount, color = sample))+
  geom_line(aes(x=start, y=mrcount, color = sample))


