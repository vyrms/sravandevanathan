remove.unexpressed = function(dataset){
  unexpressed = c()
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
      unexpressed[counter] =  x
      counter = counter+1
    }
  }
  newdata = dataset[unexpressed,]
  return(newdata)
}

expressed.genes = remove.unexpressed(genedata)
expressed.trans = remove.unexpressed(tdata)


write.csv(expressed.genes, file = "filteredgenes.csv")
write.csv(expressed.trans, file = "filteredtdata.csv")
