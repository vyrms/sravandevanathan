
#intial set up: DONT run
library(devtools)
devtools::install_github("klutometis/roxygen")
library(roxygen2)
create("DBA")
install("DBA")

# making docments 
setwd("C:/Users/Hosei/Documents/Bremdans stuff/sravandevanathan/DBA")
document()

# listing properties pf package 
lsf.str("package:DBA")

# saving data in the package
devtools::use_data(expressed.trans, DBA)
devtools::use_data(expressed.genes, DBA)
devtools::use_data(pheno.colors, DBA, overwrite = TRUE)
devtools::use_data(sex, DBA)
usethis::use_data(pheno, DBA, overwrite = TRUE)
usethis::use_data(pheno.basic, DBA,overwrite = TRUE)
usethis::use_data(full.pheno, DBA, overwrite = TRUE)
usethis::use_data(full.pheno.table, DBA, overwrite = TRUE)

# loading data
data("expressed.genes", package = "DBA") 
data("pheno")
data("pheno.colors")
data("pheno.basic")
data("full.pheno")
data("full.pheno.table")

# updating documentation 
devtools::document()
?filter.genes
?filter.out.genes
?var.samples
?mergeTables
?clean.environment
?pretty.gene.name


library(DBA)
