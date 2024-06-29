---
title: Illustrating splines using the diamond pricing dataset
source: "New"
author: Steve Simon
date: 2024-05-07
categories:
- Blog post
tags:
- Nonlinear regression
- R programming
output: html_document
page_update: complete
---

Splines provide a useful way to model relationships that are more complex than a simple linear relationship. They work in a variety of regression models. Here is an illustration of how to use a spline in a dataset looking at pricing for diamonds.

<!---more--->


```
## Warning: package 'pspline' was built under R version 4.3.1
```

```
## Warning: package 'rms' was built under R version 4.3.2
```

```
## Loading required package: Hmisc
```

```
## Warning: package 'Hmisc' was built under R version 4.3.2
```

```
## 
## Attaching package: 'Hmisc'
```

```
## The following objects are masked from 'package:base':
## 
##     format.pval, units
```

```
## ── Attaching core tidyverse packages ────────────────────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.2     ✔ purrr     1.0.1
## ✔ forcats   1.0.0     ✔ stringr   1.5.0
## ✔ ggplot2   3.4.2     ✔ tibble    3.2.1
## ✔ lubridate 1.9.2     ✔ tidyr     1.3.0
## ── Conflicts ──────────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter()    masks stats::filter()
## ✖ dplyr::lag()       masks stats::lag()
## ✖ dplyr::src()       masks Hmisc::src()
## ✖ dplyr::summarize() masks Hmisc::summarize()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

```
## Warning in file(file, "rt", encoding = fileEncoding): cannot open URL
## 'https://raw.githubusercontent.com/pmean/datasets/master/diamonds.yaml': HTTP status
## was '404 Not Found'
```

```
## Error in file(file, "rt", encoding = fileEncoding): cannot open the connection to 'https://raw.githubusercontent.com/pmean/datasets/master/diamonds.yaml'
```

















