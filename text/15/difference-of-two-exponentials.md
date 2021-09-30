---
title: "PMean: Nonlinear regression for the difference of two exponentials"
author: "Steve Simon"
source: "http://blog.pmean.com/difference-of-two-exponentials/"
date: "2015-10-05"
category: Blog post
tags: nonlinear regression, R software
output: html_document
---

I wanted to provide an overview of how you analyze a classic nonlinear
regression model. It is a difference of two exponential functions. This
nonlinear function is used commonly in pharmocokinetic models and is a
simply way to model the oral administration of a drug. I want to show
how the model works in a mathematical sense and then how you fit it
using R.

<!---More--->

Here are some simple examples of nonlinear regression. We will use the
built-in data set Theoph for all our examples.

``` {.r}
# start without any extraneous variables
rm(list=ls())
head(Theoph)
```

    ##   Subject   Wt Dose Time  conc
    ## 1       1 79.6 4.02 0.00  0.74
    ## 2       1 79.6 4.02 0.25  2.84
    ## 3       1 79.6 4.02 0.57  6.57
    ## 4       1 79.6 4.02 1.12 10.50
    ## 5       1 79.6 4.02 2.02  9.66
    ## 6       1 79.6 4.02 3.82  8.58

``` {.r}
tail(Theoph)
```

    ##     Subject   Wt Dose  Time conc
    ## 127      12 60.5  5.3  3.52 9.75
    ## 128      12 60.5  5.3  5.07 8.57
    ## 129      12 60.5  5.3  7.07 6.59
    ## 130      12 60.5  5.3  9.03 6.11
    ## 131      12 60.5  5.3 12.05 4.57
    ## 132      12 60.5  5.3 24.15 1.17

 {#look-at-just-the-first-patient .section .level2}

