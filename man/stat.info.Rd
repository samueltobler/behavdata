\name{stat.info}
\alias{stat.info}
\title{Descriptive statistical information of test items}
\usage{
stat.info(
  data, 
  round = 2, 
  vector.name = "", 
  export = FALSE, 
  exportfile = "statexport"
)
}
\description{
This functions allows calculating descriptive statistics for test items in vectors or data frames. These measures include the mean, median, standard deviation, sample size, minimum, and maximum of points achieved in the test.  
}

\arguments{
\item{data}{data input, either as data frame or vector}
\item{round}{Rounding value for the output values}
\item{vector.name}{If vector input: name of the test for the output description}
\item{export}{TRUE if the data frame output should be exported as csv file}
\item{exportfile}{Name of the output file if expert = TRUE}
}
\examples{
stat.info(data, round = 3, export = TRUE, exportfile = "TestA")
}

