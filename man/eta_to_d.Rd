\name{eta_to_d}
\alias{eta_to_d}
\title{Determining Cohen's d from eta squared values}
\usage{
eta_to_d(
  eta
  )
}
\description{
This functions allows directly transforming eta values from ANOVAs, for example, to Cohen's d values for consistent data presentation. Cohen's d is calcuated using the following formula. 
\deqn{d = \sqrt[]{\frac{4 \eta^2}{1-\eta^2}} }
}
\arguments{
\item{eta}{eta squared value (e.g. generalized eta squared)}
}
\examples{
eta_to_d(eta = 0.05)
}

