\name{gse}
\alias{gse}
\title{Standard Error Determination for Hedge's g effect sizes}
\usage{
gse(
  g,
  n1,
  n2)
}
\description{
A function to determine the standard error of Hedge's g effect sizes. 
}
\arguments{
\item{g}{Hedge's g}
\item{n1}{Sample size of group 1}
\item{n2}{Sample size of group 2}
}
\examples{
gse(g = 0.5, n1 = 50, n2 = 30)
}