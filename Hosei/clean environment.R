
# 

cleanEnvironment <- function(keep = NULL){
  
  if ( length(keep) == 0 ){
    keep <- c('cleanEnvironment', 'getCounts2', 'bg', 'RPL11', 'CDK11A', 'pheno.filtered')
  }else {
    keep <- c(keep, 'cleanEnvironment', 'getCounts2', 'bg', 'RPL11', 'CDK11A', 'pheno.filtered')
  }
  
  items <- ls(envir=.GlobalEnv)
  
  if (all(keep %in% items) == FALSE){
    not.found = keep[which(!(keep %in% items))]
    warning("Stoping discard- item specified as keep not found. Check: ", not.found)
  }else {
    keep <- c(keep, "discard")
    discard <- items[-c(which(items %in% keep))]
    print(paste("Discarded items: ", discard))
    
    rm(list = c(discard), envir=.GlobalEnv)
    rm(discard)
  }
}


cleanEnvironment(keep=c('bg', 'getCounts2', 'RPL11', 'pheno.filtered'))
