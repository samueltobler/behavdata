\name{finding_d}
\alias{finding_d}
\title{Finding the effect size of equivalence}
\usage{
finding_d(
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
This functions allows finding the lowest Cohen's d value at which the two groups of interest are statistically significantly equal. This function is an extension of the TOSTtwo function of the TOSTER plugin. Please cite Tobler, S. (2022) and Lakens, D. (2017) (see below).}
}
\arguments{
\item{m1}{Mean of group 1 of interest.}
\item{m2}{Mean of group 2 of interest.}
\item{sd1}{Standard deviation of group 1.}
\item{sd2}{Standard deviation of group 2.}
\item{n1}{Sample size of group 1.}
\item{n2}{Sample size of group 2.}
\item{alpha}{Alpha value of significance. Default is alpha = 0.05.}
\item{var.equal}{Equal variance of data. Default is FALSE.}
\item{steps}{Fragmentation of Cohen's d. Smaller values lead to a more fine-grained analysis. Default steps = 0.01.}
\item{dmax}{Maximal Cohen's d value of investigation. Default is dmax = 1.}
}
\examples{
finding_d(m1 = 4.4, m2 = 4.4, sd1 = 0.1, sd2 = 0.1, n1 = 25, n2 = 25)
}
\references{
Tobler, S. (2022). Finding equivalence: a novel tool to investigate the effect size at which two groups are statistically equivalent. Proceedings of the 7th Annual Learning Sciences Graduate Student Conference (LSGSC 2022). 

Lakens, D. (2017). Equivalence tests: A practical primer for t-tests, correlations, and meta-analyses. Social Psychological and Personality Science, 8(4), 355-362. doi:10.1177/1948550617697177

}
