# behavdata

[![CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

## Introduction

The **`behavdata`** package allows easy pre-processing and analysis of behavioral data. This package includes the following functions:


#### Scale Analysis Related
-   `likert_transform`: for fastly transform text inputs like from Likert scale answers into numerical values
-   `likert_switch`: to invert numerical values Likert scales
-   `AlphaCI_Bounds`: to determine the confidence interval for Cronbach's Alpha values


#### Qualitative Data Related
-   `answer_rating`: for facilitated and unbiased rating of student answers on qualitative or open ended questions


#### Correlation Analyses
-   `correlation_table`: to calculate all pairwise correlations of a big data set and directly obtain a CSV table


#### Effect Size Analyses
-   `eta_to_d`: to calculate Cohen's d values from eta squared scores
-   `r_to_d`: to calculate Cohen's d values from correlation values
-   `gse`: to determine the standard error of Hedge's g effect sizes
-   `finding_d`: to determine the lowest Cohen's d value with which two group means are statistically equivalent


#### Other Functions
-   `se_propagation`: to propagate standard errors
-   `pathback`: to go one folder up in the working directory
-   `stat.info`: to get descriptive test statistics
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

Tobler, S. (2022). behavdata: R Package for Behavioral Data Preprocessing and Analysis (Version 0.1.0) [Computer software]. https://github.com/samueltobler/behavdata
