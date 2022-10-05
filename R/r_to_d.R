r_to_d <- function(r) {
  d <- 2*r/sqrt((1-r^2))
  output <- list("d" = d)
  print(paste("Cohen's d = ",d, sep = ""))
}
