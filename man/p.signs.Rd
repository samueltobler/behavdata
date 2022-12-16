\name{p.signs}
\title{Assigning symbols to p-values}
\usage{
p.signs(
  data, 
  margins = TRUE
  )
}
\description{
This functions allows Assigning symbols to p-values.}

\arguments{
\item{data}{Vector with p-values}
\item{margins}{Determines whether p-values between 0.05 and 0.1 should be mentioned as well}
}
\examples{
p.signs(c(0.05, 0.2, 0.001))
}

