wildtype = unlist(pheno.filtered[['wildtype']], use.names = FALSE)

RPL11exon = RPL11[[1]]

RPL11exon[]


RPL11exonwt = RPL11exon[which(colnames(RPL11exon) %in% 
                        c(colnames(RPL11exon[, c(1,2,3,4,5)]), paste('mrcount.', wildtype, sep = '')))]

