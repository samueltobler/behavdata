\name{likert_means_5p}
\alias{likert_means_5p}
\title{Average Likert score for 5-point Likert scales}
\usage{
likert_means_5p(
  data,
  weight = 2,
  round = 2)
}
\description{
A function to calculate sum scores for 5-point Likert scale items if multiple items are used to assess one trait with a weighting factor to compensate for the lower representation of border-values. Weight = 2 compensates for different representation on interval scale. 
}
\arguments{
\item{data}{data frame}
\item{weight}{weighting of the scale items}
\item{round}{Rounding factor}
}
\examples{}