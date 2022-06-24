eta_to_d <- function(eta) {
  att.f <- sqrt(eta[1] / (1-eta[1]))
  att.d <- sqrt(att.f^2 * 4)
  output <- list("CohensD" = att.d)
}