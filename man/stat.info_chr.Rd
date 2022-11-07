\name{stat.info_chr}
\alias{stat.info_chr}
\title{Descriptive statistical information of test items that are not numerical}
\usage{
stat.info(
  data, 
  round = 2, 
  export = FALSE, 
  exportfile = "statexport"
)
}
\description{
This functions allows calculating descriptive statistics for test items that are not numerical. The measures include absolute and relative count data.
}

\arguments{
\item{data}{data input}
\item{round}{Rounding value for the output values}
\item{export}{TRUE if the data frame output should be exported as csv file}
\item{exportfile}{Name of the output file if expert = TRUE}
}
\examples{
stat.info_chr(data, round = 0, export = TRUE, exportfile = "TestA")
}

