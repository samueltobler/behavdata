stat.info_chr <- function (data, round = 1, export = FALSE, 
                           exportfile = "statexport") {
  x = round
  exportfile <- paste(exportfile, ".csv", sep = "")
  if (is.character(data) == TRUE | is.numeric(data) == TRUE) {
    data <- as.factor(data)} 
  if (is.factor(data) == TRUE) {
    
    runner <- vector()
    for(i in 1:length(levels(data))) {
      xr = 0
      for(j in 1:length(data)) {
        if(data[j] == levels(data)[i]){
          xr <- xr+1
        }
        runner[i] <- xr
      }
    }
  }    else {
    stop("Please choose a factor as input.")
  }
  
  runner.rel <- round(runner/length(data)*100, x)
  
  df <- data.frame(N = runner, 
                   Nrel = runner.rel)
  names(df) <- c("Absolute Number", "Relative Number")
  
  rownames(df) <- levels(data)
  
  stat.summary <- df
  print(stat.summary)
  if (export == TRUE) {
    write.csv2(stat.summary, file = exportfile)
  }
  outputlist <- list(df = df)
}
