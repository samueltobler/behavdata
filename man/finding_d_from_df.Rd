\name{finding_d_from_df}
\alias{finding_d_from_df}
\title{Finding the effect size of equivalence from a data frame}
\usage{
finding_d_from_df(
  group, 
  value, 
  alpha = 0.05, 
  var.equal = FALSE,
  steps = 0.01, 
  dmax = 1)
}
\description{
This functions allows finding the lowest Cohen's d value at which the two groups of interest are statistically significantly equal. To use this function, the data must be stored in two vectors or ideally a data frame (see example). 

This function is an extension of the TOSTtwo function of the TOSTER plugin. Please cite Tobler, S. (2022) and Lakens, D. (2017) (see below). 
}
\arguments{
\item{group}{Grouping factor in the same order as the values.}
\item{value}{Values of the variable of interest. }
\item{alpha}{Alpha value of significance. Default is alpha = 0.05.}
\item{var.equal}{Equal variance of data. Default is FALSE.}
\item{steps}{Fragmentation of Cohen's d. Smaller values lead to a more fine-grained analysis. Default steps = 0.01.}
\item{dmax}{Maximal Cohen's d value of investigation. Default is dmax = 1.}
}
\examples{

df <- data.frame(
    group = c("A", "A", "A", "B", "B"), 
    value = c(1,2,5,9,8))
    
finding_d_from_df(group = df$group, value = df$value)

}
\references{
Tobler, S. (2022). Finding equivalence: a novel tool to investigate the effect size at which two groups are statistically equivalent. Proceedings of the 7th Annual Learning Sciences Graduate Student Conference (LSGSC 2022). https://doi.org/10.3929/ethz-b-000575508

Lakens, D. (2017). Equivalence tests: A practical primer for t-tests, correlations, and meta-analyses. Social Psychological and Personality Science, 8(4), 355-362. doi:10.1177/1948550617697177

}
