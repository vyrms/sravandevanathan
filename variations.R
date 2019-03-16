mergedtdata = read.table('C:/Users/Hosei/Documents/0lab/t_data_merged.tab')
mergedtdata20 = mergedtdata[1:100,]
genes40 = mainTable[1:40,]

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
    variances[x] =  log(sd(values))
  }
  plot(density(variances),xlim=c(-10,20))
}
plot.var(mergedtdata20)
plot.var(genes40)


plot.var(mergedtdata)
plot.var(mainTable)
