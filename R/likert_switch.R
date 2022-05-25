#' Inverting Likert Scales
#'
#' @param
#' @keywords Likert; numerical; inversion
#' @export
#' @examples
#'

likert_switch <- function(data, name = "", n = 5, qoi = c(1), export = TRUE) {
  
  n_run = n + 1; 
  
  for (i in 1:length(qoi)) {
    j = qoi[i]
    for (k in 1:dim(data)[1]) { 
      data[k,j] <- 6-data[k,j]
    }
  }
  
  if (export == TRUE) {
    
    if(dir.exists(file.path("CSV")) == TRUE) {} else {dir.create("CSV")}
    
    nametable <- paste("CSV/LikertSwitch_", name,".csv", sep = "")
    write.table(data, nametable, sep = ";", col.names = FALSE, row.names = FALSE)
    print("Your answers have been saved in a CSV file.") 
    
  } else {
  }
  
}
