#' Correlation Table
#'
#' @param
#' @keywords Correlation; Table; Transformation
#' @export
#' @examples
#'


correlation_table <- function(data, name = "") {
  
  require(Hmisc)

  flattenCorrMatrix <- function(cormat, pmat) {
    ut <- upper.tri(cormat)
    data.frame(
      row = rownames(cormat)[row(cormat)[ut]],
      column = rownames(cormat)[col(cormat)[ut]],
      cor  =(cormat)[ut],
      p = pmat[ut]
    )
    
  } # Function above by sthda.com
  
  if(dir.exists(file.path("Tables")) == TRUE) {} else {dir.create("Tables")}
  
  
  resh <- rcorr(as.matrix(data))
  cortable.h <- flattenCorrMatrix(round(resh$r,2), round(resh$P,4))
  
  significance <- vector()
  
  for (i in 1:dim(cortable.h)[1]) {
    
   if(cortable.h$p[i] > 0.1) {significance[i] = "ns"} else {
     if(cortable.h$p[i] <= 0.1) {significance[i] = "."} 
      if(cortable.h$p[i] <= 0.05) {significance[i] = "*"} 
         if(cortable.h$p[i] <= 0.01) {significance[i] = "**"} 
           if(cortable.h$p[i] <= 0.001) {significance[i] = "***"} 
   }
  }
  
  cortable.h$significance <- significance
  namex <- paste("Tables/", name, "Correlations.csv", sep = "")
  write.table(cortable.h, namex, sep = ";", col.names=NA)
  return(cortable.h)
  
}
