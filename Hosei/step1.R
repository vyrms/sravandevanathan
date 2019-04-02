head(L2_ACAGTG, 20)
head(L2_ACTTGA, 20)
ACA20 = L2_ACAGTG[1:20,]
ACT20 = L2_ACTTGA[1:20,]

find.missing = function(this, that){
  missing = c()
  counter = 0
  positions = c()
  name = c()
  for (x in 1:length(this$`Gene Names`)){
    matching = this[x,1] %in% that$`Gene Names`
    if(matching==F){
      missing[counter] = this[x,1]
      counter = counter + 1
      positions[counter] = x 
    }
  }
  print(missing)
  print(positions)
}

find.missing(ACA20, ACT20)
