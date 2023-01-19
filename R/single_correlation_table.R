#' @import Hmisc

single_correlation_table <- function (MainFactor, CorrelationFactors, name = "", 
                                      mainFactorName = "") 
{
  require(Hmisc)

  mc <- data.frame(Main = MainFactor)
  cf <- as.data.frame(CorrelationFactors)
  
  nx <- dim(cf)[2]; 
  
  cf[, nx+1] <- mc
  df <- cf
  col_names <- colnames(df)
  corrdata <- df[, c(col_names[length(col_names)], col_names[-length(col_names)])]
  
  
  flattenCorrMatrix <- function(cormat, pmat) {
    ut <- upper.tri(cormat)
    data.frame(row = rownames(cormat)[row(cormat)[ut]], 
               column = rownames(cormat)[col(cormat)[ut]], 
               cor = (cormat)[ut], p = pmat[ut])
  }
  if (dir.exists(file.path("Tables")) == TRUE) {
  }
  else {
    dir.create("Tables")
  }
  resh <- rcorr(as.matrix(corrdata))
  cortable.h <- flattenCorrMatrix(round(resh$r, 2), 
                                  round(resh$P, 4))
  significance <- vector()
  for (i in 1:dim(cortable.h)[1]) {
    if (cortable.h$p[i] > 0.1) {
      significance[i] = "ns"
    }
    else {
      if (cortable.h$p[i] <= 0.1) {
        significance[i] = "."
      }
      if (cortable.h$p[i] <= 0.05) {
        significance[i] = "*"
      }
      if (cortable.h$p[i] <= 0.01) {
        significance[i] = "**"
      }
      if (cortable.h$p[i] <= 0.001) {
        significance[i] = "***"
      }
    }
  }
  cortable.h$significance <- significance
  
  value_to_keep <- "Main"
  cortable.h <- subset(cortable.h, row == value_to_keep)
  
  ifelse(mainFactorName == "", mainFactorName <- "Main", mainFactorName)
  cortable.h$row <- mainFactorName
  
  
  namex <- paste("Tables/", name, "Correlations.csv", sep = "")
  write.table(cortable.h, namex, sep = ";", col.names=NA)
  return(cortable.h)
}