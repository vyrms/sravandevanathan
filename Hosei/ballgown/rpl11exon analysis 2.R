wildtype = unlist(full.pheno[['Wildtype']], use.names = FALSE)

RPL11exon = RPL11[[1]]

RPL11exon[]


which(colnames(RPL11exon) %in% wildtype)
