mergedtdata = read.table('C:/Users/Hosei/Documents/0lab/t_data_merged.tab')
mergedtdata20 = mergedtdata[1:100,]
genes40 = mainTable[1:40,]

genedata = mainTable[,-4]
tdata = mergedtdata[,-4]

plot.var = function(dataset){
  variances = c()
  for (x in 1:nrow(dataset)){
    values = c()
    for (y in 1:ncol(dataset)-1){
      if(is.na(dataset[x,y+1]) == T){
        values[y] = 0.0
      }else{
        values[y] = dataset[x,y+1]
      }
    }
    variances[x] =  log(sd(values)+0.00001)
  }
  plot(density(variances),xlim=c(-20,10))
}
plot.var(mergedtdata20)
plot.var(genes40)


plot.var(tdata)
plot.var(genedata)
