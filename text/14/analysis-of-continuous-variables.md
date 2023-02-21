---
title: "Two data sets illustrating the analysis of continuous variables"
author: "Steve Simon"
source: "http://blog.pmean.com/analysis-of-continuous-variables/"
date: "2014-04-15"
category: Blog post
tags:
- Datasets
output: html_document
---

I am looking for good teaching examples that will illustrate methods for
univariate and bivariate analysis of continuous variables. Here are two
publicly available data sets that I like.

<!---More--->

The first data set looks at sleeping time of mammals, from the African
elephant to the yelllow-bellied marmot. You can get a [brief
description](http://www.statsci.org/data/general/sleep.html) or you can
look at the [actual
data](http://www.statsci.org/data/general/sleep.txt). There is
information on the body weight, brain weight, life span, gestation time,
and indices of predation, exposure, and danger. This data set has a few
missing values, designated by NA. There are 62 observations in this data
set.

The second data set looks percentage of body fat, calculated by an
underwater weighing method. It also has measurements that are easier to
collect: age, weight, height, body mass index, and various other size
measurements (neck circumference, chest circumference, etc.). You can
view a [brief
description](http://www.amstat.org/publications/jse/datasets/fat.txt) or
look at the [raw
data](http://www.amstat.org/publications/jse/datasets/fat.dat.txt).
There is an [article about this data
set](http://www.amstat.org/publications/jse/v4n1/datasets.johnson.html)
published in the [Journal of Statistics
Education](http://www.amstat.org/publications/jse/). This data set has
no missing values, but one extreme outlier (an individual who is 29.5
inches tall and 205 pounds). There are 252 observations in this data
set.

Both files can be read in as delimited files (with spaces and/or tabs as
delimiters). The latter data set could also be read in using a fixed
column format.


