combined_scaleanalysis <- function(data, round = 2) {
  
  require(psych)
  a <- psych::alpha(data)
  n <- length(data)
  ci <- behavdata::AlphaCI_Bounds(a)
  o <- psych::omega(data, plot = FALSE)
  
  results <- data.frame(Values = round(c(a$total$raw_alpha,ci[1], ci[2],o$omega.tot,n),round),
                        Measures = c("Alpha", "Lower CI", "Upper CI", "Omega", "N"))
  return(results = results)
}
