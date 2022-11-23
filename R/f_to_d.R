f_to_d <- function(dfn, dfd, f, round = 2){
  eta2p <- f*dfn / (f *dfn + dfd)
  att.f <- sqrt(eta2p/(1 - eta2p))
  att.d <- sqrt(att.f^2 * 4)
  att.d <- round(att.d, 2)
  return("d" = att.d)
}
