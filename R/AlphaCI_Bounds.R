#' Determining the Confidence Interval for Cronbach's Alpha Values
#'
#' @param
#' @keywords Alpha; Cronbach; Confidence Interval
#' @export
#' @examples
#' @import psych
#' 



AlphaCI_Bounds <- function(data, round = 2) {
  
  require(psych)
  
  bounds <- c(round(data$total$raw_alpha - 1.96 * data$total$ase, round), 
              round(data$total$raw_alpha + 1.96 * data$total$ase, round))
  
  return(bounds)
  
}