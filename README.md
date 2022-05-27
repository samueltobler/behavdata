# behavdata

[![DOI](https://zenodo.org/badge/495925772.svg)](https://zenodo.org/badge/latestdoi/495925772)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Introduction

The **`behavdata`** package allows easy pre-processing of behavioral data. This package includes the following functions:

-   `answer_rating`: for facilitated and unbiased rating of student answers on qualitative or open ended questions
-   `likert_transform`: for fastly transform text inputs like from Likert scale answers into numerical values
-   `likert_switch`: to invert numerical values Likert scales

More functions will be added over time.

## Installation

``` r
library(devtools)
devtools::install_github("samueltobler/behavdata", force = TRUE)
library(behavdata)
```

## Citation

To cite the repository **`behavdata`** in publications, please use:

Tobler, S. (2022). behavdata: R Package for Behavioral Data Preprocessing (Version 0.1.0) [Computer software]. https://github.com/samueltobler/behavdata
