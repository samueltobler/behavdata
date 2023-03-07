\name{f_to_d}
\alias{f_to_d}
\title{Determining Cohen's d from F values}
\usage{
f_to_d(
  dfn,
  dfd, 
  f, 
  round = 2
  )
}
\description{
This functions allows directly transforming ANOVA F values to Cohen's d values. Cohen's d is calcuated using the following formula. }

\arguments{
\item{dfn}{Dfn}
\item{dfd}{DFd}
\item{f}{ANOVA F value}
\item{round}{Rounding value for the effect size estimation}
}
\examples{
f_to_d(1, 40, 2.56)
}

