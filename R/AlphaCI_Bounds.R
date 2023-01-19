#' Determining the Confidence Interval for Cronbach's Alpha Values
#'
#' @param
#' @keywords Alpha; Cronbach; Confidence Interval
#' @export
#' @examples
#' @import psych
#' 



AlphaCI_Bounds <- function(fdata, round = 2) {
  
  require(psych)
  
  bounds <- c(round(fdata$total$raw_alpha - 1.96 * fdata$total$ase, round), 
              round(fdata$total$raw_alpha + 1.96 * fdata$total$ase, round))
  
}