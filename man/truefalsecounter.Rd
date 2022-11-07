\name{truefalsecounter}
\alias{truefalsecounter}
\title{Find common elements in vectors}
\usage{
truefalsecounter(
    data, 
    valuesofinterest
)
}
\description{
This functions allows comparing two vectors to make a vector with true / false values to indicate where the values in vector 1 are present in vector 2. This function can be combined with the `outlier`-function (use the output of the latter as input for the first) to determine which values in a data set are outliers (TRUE / FALSE rated)
}

\arguments{
\item{data}{data input, as vector}
\item{valuesofinterest}{Values to be found in the vector}
}
\examples{
truefalsecounter(data = c(1,2,4,7,20), 
  valuesofinterest = behavdata::outliers(data = c(1,2,4,7,20)))
}

