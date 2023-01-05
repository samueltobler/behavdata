\name{single_correlation_table}
\title{Calculate all pairwise correlations of one dimensions with one or many others and directly obtain a CSV table}
\usage{
single_correlation_table(
  MainFactor, 
  CorrelationFactors, 
  name = "", 
  mainFactorName = ""
  )
}
\description{
This function allows to calculating all pairwise correlations of one dimensions with one or many others and directly obtain a CSV table. }

\arguments{
\item{MainFactor}{a vector with which the correlations will be determined}
\item{CorrelationFactors}{a data frame with one or several different variables that will be correlated to the main factor}
\item{name}{name of the file in which the generated table is saved}
\item{mainFactorName}{name of the main factor for better labelling}
}
\examples{
# Dummy data frame generation
df <- data.frame(x = 1:5, y = 2:6, z = 19:23)

# Assume we want to correlate z with all other columns
single_correlation_table(MainFactor = df$z, CorrelationFactors = df[,1:2])
}
\references{
Frank E Harrell Jr (2021). Hmisc: Harrell Miscellaneous. R package version 4.6-0. https://CRAN.R-project.org/package=Hmisc
}