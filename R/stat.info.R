stat.info <- function(data, round = 2, vector.name = "", export = FALSE, exportfile = "statexport") {
  
  x = round
  exportfile <- paste(exportfile, ".csv", sep = "")
  
  if (is.vector(data) == TRUE) {
    m <- mean(data)
    sd <- sd(data)
    median <- median(data)
    max <- max(data)
    min <- min(data)
    n = length(data)
    item = vector.name
  }
  
  else {
    
    if (is.data.frame(data) == TRUE) {
      
      nx <- dim(data)[2]
      m<- sd<- median<- max<-min<- n <- vector()
      for (i in 1:nx) {
        m[i] <- mean(data[,i])
        sd[i]  <- sd(data[,i])
        median[i]  <- median(data[,i])
        max[i]  <- max(data[,i])
        min[i]  <- min(data[,i])
        n[i]  = length(data[,i])
      }
      
      item = names(data)
      
    }
    
    else {
      stop("Please choose a vector or data frame as input.")
    }
  }
  stat.summary <- data.frame(Item = item,
                             Mean = round(m,x), 
                             Median = median, 
                             SD = round(sd,x), 
                             Max = max, 
                             Min = min, 
                             n = n)
  
  print(stat.summary)
  
  if(export == TRUE) {
    
    write.csv2(stat.summary, file = exportfile)
  }
  
  outputlist <- list("mean" = m, "median" = median, "sd" = sd, "max" = max, "min" = min, "n" = n)
  
}