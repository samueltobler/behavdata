\name{correlation_table}
\alias{correlation_table}
\title{Calculate all pairwise correlations of a big data set and directly obtain a CSV table}
\usage{
correlation_table(
  data, 
  name = "")
}
\description{
This function allows to calculating all pairwise correlations of a big data set and directly obtaining a CSV table.
}
\arguments{
\item{data}{a data frame with individual participants in rows and different measures in columns. Only numerical values should be added to this data frame}
\item{name}{name of the correlation comparison to specify the output file.}
}
\examples{
correlation_table(data = dat, name = "LearningMechanisms")
}
\references{
Frank E Harrell Jr (2021). Hmisc: Harrell Miscellaneous. R package version 4.6-0. https://CRAN.R-project.org/package=Hmisc
}