ci_to_sd <- function(n, upper, lower, round = 2) {
  sd <- sqrt(n) * (upper-lower) / 3.92
  print(round(sd, round))
  return <- list("SD" = round(sd, round))
}
