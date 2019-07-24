transcripts = bg@expr[['trans']]
exons = bg@expr[['exon']]
introns = bg@expr[['intron']]
e2t = bg@indexes[['e2t']]
i2t = bg@indexes[['i2t']]


#try&error section for getCounts
a = transcripts[grep(paste('^','RPL11', sep=''),transcripts$gene_name),'t_id']

exon_id = e2t[which(e2t$t_id %in% a),'e_id']
e_t_id = e2t[which(e2t$t_id %in% a),]
sum(rpl11$num_exons)

final = exons[which(exons$e_id %in% exon_id),]

mrcounts = final[ , grepl("e_id|chr|strand|start|end|mrcount", names(final) ) ]

exp = colnames(expressed.genes)
bg@dirs[-which(bg@dirs %in% exp)]
