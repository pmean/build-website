---
title: "Some simple examples of single imputation"
author: "Steve Simon"
source: "http://blog.pmean.com/single-imputation/"
date: "2016-04-17"
categories: Blog post
tags:
- Missing data
output: html_document
page_update: complete
---

I wanted to use R to show some simple approaches to imputing missing values. These approaches are difficult to support because they require that you make some questionable and unverifiable assumptions about your data.? They still may prove useful as a sensitivity check or as a springboard into more complex approaches for imputing missing values. I have a link to the [code that generated most of these results][sim3].

<!---More--->

Note that you need to change the double backtick to a triple backtick throughout.

```
Impute.Rmd
==========

This program was written in R Markdown written by Steve Simon. It
requires

-   R (no particular version) and the mice package, and
-   an Internet connection (to access the Titanic data set).

It shows some simple examples of single imputation on an artificial data
set and on the Titanic data set.

``{r}
# start without any extraneous variables
save.image("backup.RData")
rm(list=ls())
``
First, you need to generate some simple binary data values.

`` {r}
set.seed(14814)
zeros_and_ones <- rbinom(100,1,0.5)
print(zeros_and_ones)
``

    ##   [1] 1 1 1 0 1 0 1 1 1 1 0 1 0 1 0 1 1 0 0 0 1 1 0 1 0 1 1 1 0 1 1 0 1 0 1
    ##  [36] 1 0 0 0 1 1 0 0 0 1 0 0 1 0 1 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 0 1 0
    ##  [71] 1 1 0 0 0 1 1 1 1 0 1 1 0 1 0 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1

Arrange the data in a matrix with 20 rows and then convert it to a data
frame. Give names to each column.

``{r}
da <- as.data.frame(matrix(zeros_and_ones, nrow=20))
names(da) <- paste("t", 1:5, sep="")
print(da)
``

    ##    t1 t2 t3 t4 t5
    ## 1   1  1  1  1  1
    ## 2   1  1  0  1  1
    ## 3   1  0  0  1  0
    ## 4   0  1  0  1  1
    ## 5   1  0  1  1  0
    ## 6   0  1  0  1  1
    ## 7   1  1  0  1  1
    ## 8   1  1  1  0  0
    ## 9   1  0  0  1  1
    ## 10  1  1  1  0  0
    ## 11  0  1  0  1  0
    ## 12  1  0  0  1  1
    ## 13  0  1  0  0  1
    ## 14  1  0  1  0  1
    ## 15  0  1  1  0  0
    ## 16  1  1  0  1  1
    ## 17  1  0  0  1  1
    ## 18  0  0  0  1  0
    ## 19  0  0  0  1  1
    ## 20  0  1  1  0  1

Find ten random rows and convert the fifth value to NA.

``{r}
delete_fifth_value <- sample(1:20,10)
print(sort(delete_fifth_value))
``

    ##  [1]  1  2  3  4  5  8  9 11 12 16

``{r}
da[delete_fifth_value,5] <- NA
``

Find five random rows among these rows and convert the fourth value to
NA.

``{r}
delete_fourth_value <- sample(delete_fifth_value,5)
print(sort(delete_fourth_value))
``

    ## [1]  2  3  9 12 16

``{r}
da[delete_fourth_value,4] <- NA
``

Find two random rows among these rows and convert the third value to NA.

`` {.r}
delete_third_value <- sample(delete_fourth_value,2)
print(sort(delete_third_value))
``

    ## [1] 2 3

``{r}
da[delete_third_value,3] <- NA
print(da)
``

    ##    t1 t2 t3 t4 t5
    ## 1   1  1  1  1 NA
    ## 2   1  1 NA NA NA
    ## 3   1  0 NA NA NA
    ## 4   0  1  0  1 NA
    ## 5   1  0  1  1 NA
    ## 6   0  1  0  1  1
    ## 7   1  1  0  1  1
    ## 8   1  1  1  0 NA
    ## 9   1  0  0 NA NA
    ## 10  1  1  1  0  0
    ## 11  0  1  0  1 NA
    ## 12  1  0  0 NA NA
    ## 13  0  1  0  0  1
    ## 14  1  0  1  0  1
    ## 15  0  1  1  0  0
    ## 16  1  1  0 NA NA
    ## 17  1  0  0  1  1
    ## 18  0  0  0  1  0
    ## 19  0  0  0  1  1
    ## 20  0  1  1  0  1

Now, we're ready to start.

For a data set this small, you can see the missing data pattern. This is
an example of monotone missing data. If data is missing for one column,
it is missing for any subsequent column.

``{r}
library("mice")
``

    ## Loading required package: Rcpp
    ## Loading required package: lattice
    ## mice 2.22 2014-06-10

``{r}
mp <- md.pattern(da)
print(mp)
``

    ##    t1 t2 t3 t4 t5   
    ## 10  1  1  1  1  1  0
    ##  5  1  1  1  1  0  1
    ##  3  1  1  1  0  0  2
    ##  2  1  1  0  0  0  3
    ##     0  0  2  5 10 17

What looks like the first and unlabelled column is actually the row
names for the matrix of missing value patterns. These row names
represent the number of times that a particular missing value pattern
occurs. The first, and most common missing value pattern appears at the
top. It occurs 10 times. The particular pattern is indicated by a
sequence of 0s and 1s indicating what is missing (0) and what is not.

The missing value pattern for the most common pattern is 1, 1, 1, 1, 1.
This sequence of all 1's means that for ten of the rows of the data
frame, the missing pattern is nothing missing.

The second most common missing value pattern is 1, 1, 1, 1, 0 which
occurs 5 times. This pattern with all 1's except for the last value
means that there are five rows where only t5 is missing.

The next missing value pattern, 1, 1, 1, 0, 0, represents rows where t4,
t5 are missing. This pattern occurs 3 times.

The final missing value pattern, 1, 1, 0, 0, 0, represents the 2 times
that a row has t3, t4, t5 missing.

The last row of the missing pattern matrix tells you how many missing
values total there are for each variable. There are 0 missing values for
t1, 0 for t2, 2 for t3, and so forth.

The final column tells you how many variables are missing for each
missing value pattern. The first missing value pattern, for example, has
0 variables with missing values, and the last missing value pattern has
3 variables with missing values. You could have looked at the sequence
of 0's and 1's to figure this out, but this solumn is a nice convenience
wheh you have lots of variables, because it is easy to miscount a long
string of 0s and 1s.

 {#simple-imputation .section .level2}
```

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/single-imputation/
[sim2]: http://blog.pmean.com

[sim3]: https://github.com/pmean/single-imputation
