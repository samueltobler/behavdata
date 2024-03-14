in.numeric <- function(data, values) {
  
  data.run <- data
  if (is.vector(data) == T) {
    for (i in 1:length(data)) {
      for (k in 1:length(values)) {
        if (data[i] == values[k]) {
          data.run[i] <- k
        }
      }
    } 
    data.rn <- as.numeric(data.run)
    return(data.rn)
  } else {
    if (is.data.frame(data) == T) {
      for (i in 1:dim(data)[1]) {
        for (j in 1:dim(data)[2]) {
          for (k in 1:length(values)) {
            if (data[i,j] == values[k]) {
              data.run[i,j] <- k
              
            }
          }
        }
      }
      return(data.run)
    }
  }
  
}

