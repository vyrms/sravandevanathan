csv = function(wd){
  data = read.csv(wd)
  row1 = data[,1]
  data = data[,-1]
  row.names(data) = row1
  return(data)
}

corgenes = csv('C:/Users/Hosei/Documents/0lab/sravandevanathan/Hosei/correlation/corgenes.csv')
cortdata = csv('C:/Users/Hosei/Documents/0lab/sravandevanathan/Hosei/correlation/cortdata.csv')
