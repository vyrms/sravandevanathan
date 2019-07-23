
# Give function gene name, ballgown object, and whether you want exons or introns
# and function will give info about that

# map t_ids to exon_info, be able to choose exon/intron
getCounts = function(gene_name,bg, exon=TRUE){
  transcripts = bg@expr[['trans']]
  
  if(exon == FALSE){
    exons = bg@expr[['intron']]
    x2t = bg@indexes[['i2t']]
    x_id = 'i_id'
  }else{
    exons = bg@expr[['exon']]
    x2t = bg@indexes[['e2t']]
    x_id = 'e_id'
  }
  
  wanted_tid = transcripts[grep(paste('^',gene_name, sep=''),transcripts$gene_name),'t_id']
  exon_id = x2t[which(x2t$t_id %in% wanted_tid),x_id]
  
  exon_info = exons[which(exons[,x_id] %in% exon_id),]
  mrcounts = exon_info[ , grepl(paste(x_id, "|chr|strand|start|end|mrcount", sep=''), names(exon_info) ) ]
  
  
  e_t_id = x2t[which(x2t$t_id %in% a),]
  
  final = list(mrcounts = mrcounts, x2t = e_t_id)
  
  return(final)
}

test = getCounts('RPL11', bg, exon=TRUE)
View(test)
View(test[[1]])
View(test[[2]])
