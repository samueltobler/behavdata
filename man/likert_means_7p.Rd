\name{likert_means_7p}
\title{Average Likert score for 7-point Likert scales}
\usage{
likert_means_5p(
  data,
  weight = 2,
  round = 2)
}
\description{
A function to calculate sum scores for 7-point Likert scale items if multiple items are used to assess one trait with a weighting factor to compensate for the lower representation of border-values. Weight = 2 compensates for different representation on interval scale. 
}
\arguments{
\item{data}{data frame}
\item{weight}{weighting of the scale items}
\item{round}{Rounding factor}
}
\examples{}