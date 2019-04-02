install.packages("tidyr")
library (data.table)
library(tidyr)

mainTable <- mergeTables(wd = "C:/Users/Hosei/Documents/0lab/sravandevanathan/ballgown",commonName = "gene_abundance.tab", firstFile= "L2_ACAGTG")
# call to function 

mergeTables <- function(wd, commonName, firstFile){
  #function definations: wd = working directory, commonName = share name of files, FirstFile = first file to be imported
  
  setwd(wd)
  
  files <- list.files(path =".")
  
  for(file in files){
    setwd(paste(wd,'/',file, sep = ""))
    print(file)
    x <- fread(commonName, drop = c(1,3,4,7,9)) 
    x <- unite(x,`Gene Names`,c(`Gene Name`,Start, End), remove = TRUE)
    names(x)[names(x) == 'FPKM'] <- paste('FPKM', file)
    
    xnoDups <- x[-c(which(duplicated(x$`Gene Names`)))] # removes duplicates 
    
    if(file == firstFile){
      assign("mainTable",xnoDups)
      
    }else {
      mainTable<-merge(mainTable, xnoDups,by = "Gene Names", all.x = TRUE)
      #mainTable <- na.omit(mainTable)
      assign(file, xnoDups)
    }
  }
  return(mainTable)
}


#ignore all below this 
uniqueItems <- unique(mainTable[1])
dups <- which(duplicated(mainTable$`Gene Names`))
duplicates <- mainTable[c(dups)]
here <-as.data.frame(duplicates)

which(L2_ACTTGA$`Gene Names`== "AKAP17A_1591593_1602520")