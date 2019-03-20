plot.var.high = function(dataset){
  variances = c()
  counter = 1
  for (x in 1:nrow(dataset)){
    values = c()
    for (y in 1:ncol(dataset)-1){
      if(is.na(dataset[x,y+1]) == T){
        values[y] = 0.0
      }else{
        values[y] = dataset[x,y+1]
      }
    }
    if(log(sd(values)+0.00001) >= -7){
      variances[counter] =  log(sd(values)+0.00001)
      counter = counter+1
    }
  }
  plot(density(variances),xlim=c(-20,10))
}

plot.var.high(genes40)
plot.var(genes40)
plot.var.high(mergedtdata20)
plot.var(mergedtdata20)

plot.var.high(mergedtdata)
plot.var.high(mainTable)
