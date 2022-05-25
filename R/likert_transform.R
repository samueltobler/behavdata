#' Transforming Likert Scale Answers in numerical operators
#'
#' @param
#' @keywords Likert; numerical; transformation
#' @export
#' @examples
#'

setwd("/Users/toblersa/Desktop/TextAnalysis/")

datx <- read.csv("Text_Analysis.csv", header = FALSE, sep = ";")


likert_transform <- function(data, name = "", export = TRUE, lang = "de") {
  
  require(sjmisc)
  
  if (lang == "de") {
  
  for (i in 1:dim(data)[1]) {
    for (j in 1:dim(data)[2]) {
      
      if (is_empty(data[i,j]) == TRUE) {data[i,j] = "NA"}
      
      if (data[i,j] == "Trifft nicht zu") {data[i,j] = 1} 
      if (data[i,j] == "Trifft eher nicht zu") {data[i,j] = 2} 
      if (data[i,j] == "Teils-teils") {data[i,j] = 3} 
      if (data[i,j] == "Trifft eher zu") {data[i,j] = 4} 
      if (data[i,j] == "Trifft zu") {data[i,j] = 5} 
    }
  }
 
  }
  
  if (lang == "en") {
    
    for (i in 1:dim(data)[1]) {
      for (j in 1:dim(data)[2]) {
        
        if (is_empty(data[i,j]) == TRUE) {data[i,j] = "NA"}
        
        if (data[i,j] == "strongly disagree") {data[i,j] = 1} 
        if (data[i,j] == "disagree") {data[i,j] = 2} 
        if (data[i,j] == "neutral") {data[i,j] = 3} 
        if (data[i,j] == "agree") {data[i,j] = 4} 
        if (data[i,j] == "strongly") {data[i,j] = 5} 
      }
    }
    
  }
  
  
  if (export == TRUE) {
    
    if(dir.exists(file.path("CSV")) == TRUE) {} else {dir.create("CSV")}
    
    nametable <- paste("CSV/LikertTransform_", name,".csv", sep = "")
    write.table(data, nametable, sep = ";", col.names = FALSE, row.names = FALSE)
    print("Your answers have been saved in a CSV file.") 
    
  } else {
  }
  
  
}
