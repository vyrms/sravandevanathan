
# separate either wildtype, carrier, or affected individuals

sortBySampleTypes = function(table, phenoList){
  wildtype = unlist(phenoList[['wildtype']], use.names = FALSE)
  carrier = unlist(phenoList[['mutant']][['carrier']], use.names = FALSE)
  affected = unlist(c(pheno.filtered[['mutant']][['intermediate']], 
                      pheno.filtered[['mutant']][['severe']]), use.names = FALSE)

  
  wildtype = table[grepl(paste(c(colnames(table[, c(1,2,3,4,5)]), wildtype), collapse = '|'), 
                         colnames(table))]
  carrier = table[grepl(paste(c(colnames(table[, c(1,2,3,4,5)]), carrier), collapse = '|'),
                        colnames(table))]
  affected = table[grepl(paste(c(colnames(table[, c(1,2,3,4,5)]), affected), collapse = '|'),
                         colnames(table))]
  
  return(list(wildtype = wildtype, carier = carrier, affected =  affected))
}

RPL11exonfiltered = sortBySampleTypes(RPL11exon, pheno.filtered)
RPL11exonfiltered$wildtype

