likert_means_5p <- function(data, weight = 2, round = 2) {
  
  values <- vector()
  
  for (i in 1:dim(data)[1]) {
    daty <- data[i,]
    individual <- behavdata::count_if(daty, value = c(1,2,3,4,5))$Count
    value <- weight*individual[1]*1 + individual[2]*2 + 
      individual[3]*3 + individual[4]*4 + weight*individual[5]*5
    sum <- weight*individual[1] + individual[2] + 
      individual[3] + individual[4] + weight*individual[5]
    values[i] <- value/sum
  }
  
  values <- round(values, 2)
  return(values = values)
  
}