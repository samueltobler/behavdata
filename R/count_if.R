count_if <- function(data, value, ifnot = FALSE) {
  
  if (is.vector(value) == FALSE) {stop("The input 'value' needs to be a vector.")}
  
if (length(value) == 1) {
  resultsa <- vector()
  if (ifnot == FALSE) {
  resultsa[1] <- sum(data == value) } else {
    resultsa[1] <-   sum(data != value)
  }} else {
  
  ijs <- length(value)
  
  if (ifnot == FALSE) {
    resultsa <- vector()
    for (i in 1:ijs) {
     resultsa[i] = sum(data == value[i]) 
    }
    
    } 
  
  else {
    resultsa <- vector()
    for (i in 1:ijs) {
      resultsa[i] = sum(data == value[i]) 
    }
    
  } 
    }
  
  
  df <- data.frame(Value = value, Count = resultsa)
  outputlist <- list("count" = resultsa)
  return(df)
  
}


