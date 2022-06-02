\name{finding_d}
\alias{finding_d}
\title{Finding the effect size of equivalence}
\usage{
likert_transform(
  m1, 
  m2, 
  sd1, 
  sd2, 
  n1, 
  n2, 
  alpha = 0.05, 
  var.equal = FALSE,
  steps = 0.01, 
  dmax = 1)
}
\description{
This functions allows finding the lowest Cohen's d value at which the two groups of interest are statistically significantly equal. This function is an extension of the TOSTtwo function of the TOSTER plugin. Please cite the TOSTER plugin as indicated below. 
}
\arguments{
\item{m1, m2}{Means of the two groups of interest.}
\item{sd1, sd2}{Standard deviations of the two groups.}
\item{n1, n2}{Sample size of the two groups.}
\item{alpha}{Alpha value of significance. Default is alpha = 0.05.}
\item{var.equal}{Equal variance of data. Default is FALSE.}
\item{steps}{Fragmentation of Cohen's d. Smaller values lead to a more fine-grained analysis. Default steps = 0.01.}
\item{dmax}{Maximal Cohen's d value of investigation. Default is dmax = 1.}
}
\examples{
finding_d(m1 = 4.4, m2 = 4.4, sd1 = 0.1, sd2 = 0.1, n1 = 25, n2 = 25)
}
\references{
Lakens, D. (2017). Equivalence tests: A practical primer for t-tests, correlations, and meta-analyses. Social Psychological and Personality Science, 8(4), 355-362. doi:10.1177/1948550617697177
}
