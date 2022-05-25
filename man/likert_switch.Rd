\name{likert_switch}
\alias{likert_switch}
\title{Inverting Likert Scale Answers for reverse items}
\usage{
likert_switch(
  data, 
  name,
  n,
  qoi,
  export = TRUE)
}
\description{
As some items in Likert scale questionnaires are inversted, it is necessary to invert them to combine the results from a particular item with the others. This function does exactly that. 
}
\arguments{
\item{data}{a data frame with individual participants in rows and different measures in columns.}
\item{name}{name of the analysis to specify the output file.}
\item{n}{number of sclae items. Default = 5.}
\item{qoi}{Question or item of interest in a dataset with many different rows. Default = 1.}
\item{export}{TRUE if a CSV file with the modified data should be exported, FALSE if not.}
}
\examples{
# If you want to invert the third column that is on a 5-point Likert scale
likert_switch(data, name = "Item3_REV", n = 5, qoi = c(3), export = TRUE)
}
