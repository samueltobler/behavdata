# behavdata

[![CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by-nc-sa/4.0/)


[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6631102.svg)](https://doi.org/10.5281/zenodo.6631102)



## Introduction

The **`behavdata`** package allows easy pre-processing and analysis of behavioral data. This package includes the following functions:


#### Scale Analysis Related
-   `likert_transform`: for fastly transform text inputs like from Likert scale answers into numerical values
-   `likert_switch`: to invert numerical values Likert scales
-   `AlphaCI_Bounds`: to determine the confidence interval for Cronbach's Alpha values
-   `combined_scaleanalysis`: To quickly determine standard values for scale analyses


#### Qualitative Data Related
-   `answer_rating`: for facilitated and unbiased rating of student answers on qualitative or open ended questions


#### Correlation Analyses
-   `correlation_table`: to calculate all pairwise correlations of a big data set and directly obtain a CSV table


#### Effect Size Analyses
-   `eta_to_d`: to calculate Cohen's d values from eta squared scores
-   `r_to_d`: to calculate Cohen's d values from correlation values
-   `gse`: to determine the standard error of Hedge's g effect sizes
-   `finding_d`: to determine the lowest Cohen's d value with which two group means are statistically equivalent


#### Outlier Analysis
-   `outliers`: to determine statistical outliers
-   `truefalsecounter`: compare two vectors to make a vector with true / false values to indicate where the values in vector 1 are present in vector 2


#### Other Functions
-   `se_propagation`: to propagate standard errors
-   `pathback`: to go one folder up in the working directory
-   `stat.info`: to get descriptive test statistics of numerical data
-   `stat.info_chr`: to get descriptive test information of non-numerical data
-   `count_if`: to count how many times a certain number or element is present in the data


More functions will be added over time.

## Installation

``` r
library(devtools)
devtools::install_github("samueltobler/behavdata", force = TRUE)
library(behavdata)
```

## Citation

To cite the repository **`behavdata`** in publications, please use:

Tobler, S. (2022). behavdata: R Package for Behavioral Data Preprocessing and Analysis (Version 0.1.1) [Computer software]. https://github.com/samueltobler/behavdata

<br>

If you used the **`finding_d`** function, please cite additionally:

Tobler, S. (2022, October). Finding equivalence: a novel tool to investigate the effect size at which two groups are statistically equivalent. In 7th Annual Learning Sciences Graduate Student Conference (LSGSC 2022). https://doi.org/10.3929/ethz-b-000575508

<br>

## References

Some of the functions require previously published R packages. These are the references of these packages (in alphabetical order). 

- `Hmisc`: Harrell Jr F (2022). Hmisc: Harrell Miscellaneous. R package version 4.7-0, https://CRAN.R-project.org/package=Hmisc.
- `knitr`: Yihui Xie (2022). knitr: A General-Purpose Package for Dynamic Report Generation in R. R package version 1.39.
- `psych`: Revelle, W. (2022) psych: Procedures for Personality and Psychological Research, Northwestern University, Evanston, Illinois, USA. https://CRAN.R-project.org/package=psych 
- `sjmisc`: Lüdecke D (2018). “sjmisc: Data and Variable Transformation Functions.” Journal of Open Source Software, 3 (26), 754. doi:10.21105/joss.00754
- `TOSTER`: Lakens, D. (2017). Equivalence tests: A practical primer for t-tests, correlations, and meta-analyses. Social Psychological and Personality Science, 8(4), 355-362. doi:10.1177/1948550617697177


