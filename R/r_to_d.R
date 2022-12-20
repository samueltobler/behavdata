r_to_d <- function(r, round = 2) {
  d <- 2 * r/sqrt((1 - r^2))
  d <- round(d, round)
  return(d)
}

