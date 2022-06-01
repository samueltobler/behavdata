#' Correlation Table
#'
#' @param
#' @keywords Correlation; Table; Transformation
#' @export
#' @examples
#'


correlation_table <- function(data, name = "") {
  
  require(Hmisc)
  require(knitr)
  
  flattenCorrMatrix <- function(cormat, pmat) {
    ut <- upper.tri(cormat)
    data.frame(
      row = rownames(cormat)[row(cormat)[ut]],
      column = rownames(cormat)[col(cormat)[ut]],
      cor  =(cormat)[ut],
      p = pmat[ut]
    )
  } # Function by sthda.com
  
  resh <- rcorr(as.matrix(data))
  cortable.h <- flattenCorrMatrix(round(resh$r,2), round(resh$P,4))
  knitr::kable(cortable.h)
  namex <- paste("Tables/", name, "Correlations.csv", sep = "")
  write.table(cortable.h, namex, sep = ";")
  
}
