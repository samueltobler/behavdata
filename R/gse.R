gse <- function(g,n1,n2) {
  gse <- sqrt((n1 + n2)/(n1*n2) + g^2/(2*n1 + 2*n2))
  print(round(gse,4))
  output <- list("gse" = round(gse,4))
}