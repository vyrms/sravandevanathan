getCounts2 = function(gene_name,bg){
  transcripts = bg@expr[['trans']]
  wanted_tid = transcripts[grep(paste('^',gene_name, sep=''),transcripts$gene_name),'t_id']
  
  # for exons
  exons = bg@expr[['exon']]
  x2t = bg@indexes[['e2t']]
  x_id = 'e_id'
  
  exon_id = x2t[which(x2t$t_id %in% wanted_tid),x_id]
  
  exon_info = exons[which(exons[,x_id] %in% exon_id),]
  exoncounts = exon_info[ , grepl(paste(x_id, "|chr|strand|start|end|mrcount", sep=''), names(exon_info) ) ]
  
  e_t_id = x2t[which(x2t$t_id %in% wanted_tid),]
  
  
  # for introns
  exons = bg@expr[['intron']]
  x2t = bg@indexes[['i2t']]
  x_id = 'i_id'
  
  exon_id = x2t[which(x2t$t_id %in% wanted_tid),x_id]
  
  exon_info = exons[which(exons[,x_id] %in% exon_id),]
  introncounts = exon_info[ , grepl(paste(x_id, "|chr|strand|start|end|mrcount", sep=''), names(exon_info) ) ]
  
  i_t_id = x2t[which(x2t$t_id %in% wanted_tid),]
  
  
  final = list(exoncounts = exoncounts, e2t = e_t_id, introncounts = introncounts, i2t = i_t_id)
  
  return(final)
}



RPL11 = getCounts2('RPL11', bg)

CDK11A = getCounts2('CDK11A', bg)







