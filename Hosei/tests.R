genes40
mergedtdata20


genes40[1,1]
variances = c()
for (x in 1:nrow(genes40)){
  values = c()
  for (y in 1:ncol(genes40)-1){
    plusone = 1+1
    val = genes40[1,plusone]
    if(is.na(val==T)){
      values[y] = 0
    }else{
      values[y] = genes40[x,y+1]
    }
  }
  variances[x] = sd(values)
}
plot(density(variances))
