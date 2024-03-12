scales <- function (data, round = 2) {
  require(psych)
  a <- psych::alpha(data)
  n <- length(data)
  ci <- behavdata::AlphaCI_Bounds(a)
  o <- psych::omega(data, plot = FALSE)
  
  covbci <- cov(data) # 1. Make covariance matrix
  GLB <- psych::glb.algebraic(covbci, LoBounds = NULL, UpBounds = NULL)$glb
  
  results <- data.frame(
    Values = round(c(a$total$raw_alpha, ci[1], ci[2], 
                     o$omega.tot, GLB, n), round), 
    Measures = c("Alpha", "Lower CI", "Upper CI", "Omega", "GLB", "N"))
  return(results = results)
}
