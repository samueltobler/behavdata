se_propagation <- function(se, ntot) {
  sd <- se*sqrt(ntot)
  sd.run <- vector()
  for (i in 1:length(sd)) {
    sd.run[i] <- sd[i]^2
  }
  sd.prop <- sqrt(sum(sd.run))
  round(se.prop <- sd.prop/sqrt(ntot),4)
}