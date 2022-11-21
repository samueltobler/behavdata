\name{ci_to_sd}
\alias{ci_to_sd}
\title{Determining the standard deviation from confidence intervals}
\usage{
ci_to_sd(
  n,
  upper, 
  lower,
  round = 2
  )
}
\description{
This functions allows determining the standard deviation from 95\% percentage confidence intervals.}

\arguments{
\item{n}{Sample size}
\item{upper}{Upper 95\% Confidence Interval}
\item{lower}{Lower 95\% Confidence Interval}
\item{round}{Rounding value for the effect size estimation}
}
\examples{
ci_to_sd(n = 20, lower = 0.9, upper = 1.3)
}

