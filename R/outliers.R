outliers <- function(data, iqr = 1.5) {
  x <- boxplot(data)$out
  y <- boxplot(data)
  return(list("outliers" = x, "plot" = y))
}
