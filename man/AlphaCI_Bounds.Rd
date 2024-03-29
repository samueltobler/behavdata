\name{AlphaCI_Bounds}
\alias{AlphaCI_Bounds}
\title{Determining the Confidence Interval for Cronbach's Alpha Values}
\usage{
AlphaCI_Bounds(
  data, 
  round = 2)
}
\description{
A function to directly yield the 95 Percent Confidence Intervals for Cronbach alpha derived data, analyzed with the psych Plugin (Revelle, 2021).
}
\arguments{
\item{data}{a saved 'psych::alpha' output}
\item{round}{number of rounding digits for the confidence interval}
}
\examples{
dat <- psych::alpha(data.frame(c(1:4), c(2:5), c(4:5)))
AlphaCI_Bounds(data = dat, round = 2) 
}
\references{
Revelle, W. (2021) psych: Procedures for Personality and Psychological Research, Northwestern University, Evanston, Illinois, USA, https://CRAN.R-project.org/package=psych Version = 2.1.9.
}