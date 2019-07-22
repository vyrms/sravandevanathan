transcripts = bg@expr[['trans']]
exons = bg@expr[['exon']]
e2t = bg@indexes[['e2t']]

plotTranscripts('DDX11L1', bg, 
                samples= samples.list, 
                meas='cov', colorby='transcript')

a= transcripts$gene_name=='RPL11'
rpl11 = transcripts[a,]


getCounts = function(gene_name,bg){
  transcripts = bg@expr[['trans']]
  exons = bg@expr[['exon']]
  e2t = bg@indexes[['e2t']]


  wanted_tid = transcripts[grep(paste('^',gene_name, sep=''),transcripts$gene_name),'t_id']
  exon_id = e2t[which(e2t$t_id %in% wanted_tid),'e_id']
  
  final = exons[which(exons$e_id %in% exon_id),]
  return(final)
}

test = getCounts('RPL11', bg)

a = transcripts[grep(paste('^','RPL11', sep=''),transcripts$gene_name),'t_id']
exon_id = e2t[which(e2t$t_id %in% a),'e_id']

final = exons[which(exons$e_id %in% exon_id),]


sum(rpl11$num_exons)
