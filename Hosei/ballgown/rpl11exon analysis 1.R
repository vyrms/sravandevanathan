library(ggplot2)
library(reshape)
library(ggforce)

rpl11exonmrcounts = rpl11exon[[1]]
rpl11exonetid = rpl11exon[[2]]

hist(rpl11exonetid$e_id, breaks = 22, ylim = range(0,14))


rpl11exonmrcountsRemoved = rpl11exonmrcounts[,-c(2,3,4,5)]

meltedRPL11Exon = melt(rpl11exonmrcountsRemoved, id.vars = 'e_id')
colnames(meltedRPL11Exon) = c('e_id', 'sample', 'mrcount')

ggplot(meltedRPL11Exon) + 
  geom_point(aes(x = e_id, y = mrcount, color = sample))+
  geom_line(aes(x=e_id, y=mrcount, color = sample))
