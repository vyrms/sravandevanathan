find.missing = function(this, that){
  counter = 0
  names = c()
  positions = c()
  fpkm = c()
  for (x in 1:length(this$`Gene Names`)){
    matching = this[x,1] %in% that$`Gene Names`
    if(matching==F){
      names[counter] = as.character(this[x,1])
      fpkm[counter] = this[x,2]
      positions[counter] = x 
      counter = counter + 1
    }
  }
  missing = data.frame(missing_gene_names = names,
                       fpkm = as.double(fpkm),
                       position = positions)
}

aca.act = find.missing(L2_ACAGTG, L2_ACTTGA)

