\name{eta_to_d}
\alias{eta_to_d}
\title{Determining Cohen's d from eta squared values}
\usage{
r_to_d(
  r
  )
}
\description{
This functions allows directly transforming r correlation values to Cohen's d values for consistent data presentation. Cohen's d is calcuated using the following formula. 
\deqn{d = \frac{2r}{\sqrt[]{(1-r^2)}}}}

\arguments{
\item{r}{correlation value}
}
\examples{
r_to_d(r = 0.2)
}

