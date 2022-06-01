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
  
  resh <- rcorr(as.matrix(data))
  cortable.h <- flattenCorrMatrix(round(resh$r,2), round(resh$P,4))
  knitr::kable(cortable.h)
  namex <- paste("Tables/", name, "Correlations.csv", sep = "")
  write.table(cortable.h, namex, sep = ";")
  
}
