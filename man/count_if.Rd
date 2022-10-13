\name{count_if}
\alias{count_if}
\title{Count if function}
\usage{
count_if(
  data, 
  value, 
  ifnot = FALSE
)
}
\description{
This function allows counting of single elements or all elements in a vector in a given data set. 
}

\arguments{
\item{data}{Data input, e.g., as vector}
\item{value}{Values of the elements to be counted, either one value or vector of values}
\item{ifnot}{Specifies whether the value to be tested is true or not. Default = FALSE. ifnot = TRUE would count how many times the data set is not the value of interest. }
}
\examples{
count_if(data, value = c(1:8))
}

