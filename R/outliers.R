outliers <- function(data, iqr = 1.5, plot = FALSE) {
  
  x <- boxplot(data)$out
  
  if (plot == TRUE) {
    y <- boxplot(data)
    return(list("outliers" = x, "plot" = y))
  } else {
    return("outliers" = x)
    }
  
}
