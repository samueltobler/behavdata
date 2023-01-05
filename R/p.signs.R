p.signs <- function(data, margins = TRUE, label.ns = TRUE) {
  vec <- vector()
  if (label.ns == TRUE) {
  for(i in 1:length(data)) {
    if(margins == TRUE) {
      if(data[i] <= 0.1 & data[i] > 0.05){vec[i]= "†"} 
      if(data[i] > 0.1 ){vec[i]= "ns"} 
    } else {
        if(data[i] > 0.05 ){vec[i]= "ns"}
    }
    if(data[i] <= 0.05 ){vec[i]= "*"} 
    if(data[i] <= 0.01 ){vec[i]= "**"} 
    if(data[i] <= 0.001 ){vec[i]= "***"} 
    if(data[i] <= 0.0001 ){vec[i]= "****"} 
  }
  }
  
  if (label.ns == FALSE) {
    for(i in 1:length(data)) {
      if(margins == TRUE) {
        if(data[i] <= 0.1 & data[i] > 0.05){vec[i]= "†"} 
        if(data[i] > 0.1 ){vec[i]= ""} 
      } else {
        if(data[i] > 0.05 ){vec[i]= ""}
      }
      if(data[i] <= 0.05 ){vec[i]= "*"} 
      if(data[i] <= 0.01 ){vec[i]= "**"} 
      if(data[i] <= 0.001 ){vec[i]= "***"} 
      if(data[i] <= 0.0001 ){vec[i]= "****"} 
    }
  }
  return(vec)
}
