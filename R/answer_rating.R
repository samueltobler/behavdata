#' Rating qualitative student answers
#'
#' @param
#' @keywords answer; rating; qualitative
#' @export
#' @examples
#'


answer_rating <- function(data, name = "", skip = FALSE, export = TRUE) {
  
  data_runner <- data[]
  data_eval <- vector()
  
  for (i in 1:length(data_runner)) {
    if (skip == TRUE) {
      
      if(is.na(data_runner[i]) == TRUE) {data_eval[i] = "NA"} else {
        print(paste("Answer ", i))
        print(data_runner[i])
        data_eval[i] <- readline(prompt="Rating: ")
      }
    } else {
      print(paste("Answer ", i))
      print(data_runner[i])
      data_eval[i] <- readline(prompt="Rating: ")
    }
  }
  
  
  
  if (export == TRUE) {
    
    evaluations <- as.integer(data_eval)
    print(evaluations)
    
    if(dir.exists(file.path("CSV")) == TRUE) {} else {dir.create("CSV")}
    
    nametable <- paste("CSV/Ratings_", name,".csv", sep = "")
    write.table(evaluations, nametable, sep = ";", col.names = FALSE, row.names = FALSE)
    print("Your answers have been saved in a CSV file.") 
    
  } else {
    evaluations <- as.integer(data_eval)
    print(evaluations) 
  }
  
  
}
