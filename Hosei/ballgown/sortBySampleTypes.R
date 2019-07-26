
# separate either wildtype, carrier, or affected individuals

sortBySampleTypes = function(table, phenoList){
  wildtype = unlist(phenoList[['wildtype']], use.names = FALSE)
  carrier = unlist(phenoList[['mutant']][['carrier']], use.names = FALSE)
  affected = unlist(c(pheno.filtered[['mutant']][['intermediate']], 
                      pheno.filtered[['mutant']][['severe']]), use.names = FALSE)

  
  wildtype = table[which(colnames(table) %in%
                c(colnames(table[, c(1,2,3,4,5)]), paste('mrcount.', wildtype, sep = '')))]
  carrier = table[which(colnames(table) %in%
                          c(colnames(table[, c(1,2,3,4,5)]), paste('mrcount.', carrier, sep = '')))]
  affected = table[which(colnames(table) %in%
                           c(colnames(table[, c(1,2,3,4,5)]), paste('mrcount.', affected, sep = '')))]
  
  return(list(wildtype = wildtype, carier = carrier, affected =  affected))
}


yay = sortBySampleTypes(RPL11exon, pheno.filtered)



