likert_means_7p <- function(data, weight = 2, round = 2) {
  
  values <- vector()
  
  for (i in 1:dim(data)[1]) {
    daty <- data[i,]
    individual <- behavdata::count_if(daty, value = c(1,2,3,4,5,6,7))$Count
    value <- weight*individual[1]*1 + individual[2]*2 + 
      individual[3]*3 + individual[4]*4 + individual[5]*5 + 
      individual[6]*6 + weight*individual[7]*7

    sum <- weight*individual[1] + individual[2] + 
      individual[3] + individual[4] + individual[5] +
      individual[6] +weight*individual[7]
    values[i] <- value/sum
  }
  
  values <- round(values, 2)
  return(values = values)
  
}