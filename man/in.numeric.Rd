\name{in.numeric}
\alias{in.numeric}
\title{Transforming values in numeric scales}
\usage{
in.numeric(
    data, 
    values
)
}
\description{
This function converts data in a data frame or vector to a numeric scale.}
\arguments{
\item{data}{data input, as data frame or vector}
\item{values}{vector with the values that should be transformed to numeric ones}
}
\examples{
df <- c("yes", "no", "yes", "yes")
values = c("yes", "no")
in.numeric(df, values)
}
}
