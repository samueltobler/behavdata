truefalsecounter <- function(data, valuesofinterest) {
  o.1 <- valuesofinterest
  ro1 <- vector();  
  for(i in 1:length(data)) {
    for(j in 1:length(o.1)) {
      if(data[i] == o.1[j]){
        ro1[i] = TRUE
      } 
    }
  }
  for(i in 1:length(data)) {if(is.na(ro1[i]) == TRUE) {ro1[i] = FALSE}}
  
  return(output = ro1)
  
}