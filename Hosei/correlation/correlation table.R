clas = c('NULL', NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA
         ,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)
filteredgenes = read.csv('C:/Users/Hosei/Documents/0lab/sravandevanathan/Hosei/filtering/filteredgenes.csv'
                 ,colClasses = clas)
filteredtdata = read.csv('C:/Users/Hosei/Documents/0lab/sravandevanathan/Hosei/filtering/filteredtdata.csv'
                 ,colClasses = clas)


cor.table = function(dataset){
  cortable = data.frame(matrix(nrow=ncol(dataset)-1, ncol=0),
                        row.names = colnames(dataset[,-1]))
  for (x in 1:(ncol(dataset)-1)){
    rowcors = c()
    for (y in 1:(ncol(dataset)-1)){
      val = cor.test(dataset[,x+1], 
                     dataset[,y+1], 
                     method = 'spearman',
                     dataset = genes40,
                     conf.level = 0.95)$estimate
      rowcors[y] = val
    }
    cortable = cbind(cortable,rowcors)
  }
  names(cortable) = colnames(dataset[,-1])
  return(cortable)
}

corgenes = cor.table(filteredgenes)
cortdata = cor.table(filteredtdata)

write.csv(corgenes, file = 'C:/Users/Hosei/Documents/0lab/sravandevanathan/corgenes.csv')
write.csv(cortdata, file = 'C:/Users/Hosei/Documents/0lab/sravandevanathan/cortdata.csv')
