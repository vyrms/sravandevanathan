myheatmap = function(data){
  library(tidyverse)
  library(ggplot2)
  
  data2 <- data %>%
    rownames_to_column() %>%
    gather(colname, value, -rowname)
  
  return(ggplot(data2, aes(x = rowname, y = colname,
                          fill = value)) +
           geom_tile()+
           ggtitle(deparse(substitute(data)))+
           theme(axis.text.x = element_text(angle = 90,
                                            hjust = 1)))
}

myheatmap(cortdata)
myheatmap(corgenes)

myheatmap(log2(corgenes))
myheatmap(log2(cortdata))
