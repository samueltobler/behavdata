#' Inverting Likert Scales
#'
#' @param
#' @keywords Likert; numerical; inversion
#' @export
#' @examples
#'

likert_switch <- function(data, name = "", chr = FALSE, n = 5, qoi = c(1), export = TRUE) {
  
  if (chr == TRUE) {
    
    datx <- as.data.frame(data)
    xa <- lapply(datx, as.numeric)
    data <- as.data.frame((as.data.frame(xa)))
    
  }
  
  n_run = n + 1; 
  
  for (i in 1:length(qoi)) {
    j = qoi[i]
    for (k in 1:dim(data)[1]) { 
      data[k,j] <- n_run-data[k,j]
    }
  }
  
  if (export == TRUE) {
    
    if(dir.exists(file.path("CSV")) == TRUE) {} else {dir.create("CSV")}
    
    nametable <- paste("CSV/LikertSwitch_", name,".csv", sep = "")
    write.table(data, nametable, sep = ";", col.names = FALSE, row.names = FALSE)
    print("Your answers have been saved in a CSV file.") 
    
  } else {
  }
  
  output <- list("dat" = data)
  
}
