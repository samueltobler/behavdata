\name{outliers}
\alias{outliers}
\title{IQR-based outlier detection}
\usage{
outliers(
  data,
  iqr = 1.5, 
  plot = FALSE)
}
\description{
A function to determine data outliers based on the interquartile range.
}
\arguments{
\item{data}{data input}
\item{iqr}{interquartile range of interest}
\item{plot}{TRUE if a plot should be shown}
}
\examples{
outliers(data = c(1,2,3,4,15), iqr = 1.5, plot = FALSE)
}
