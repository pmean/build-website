---
title: "Two data sets illustrating the analysis of continuous variables"
author: "Steve Simon"
source: "http://blog.pmean.com/analysis-of-continuous-variables/"
date: "2014-04-15"
categories: Blog post
tags:
- Datasets
output: html_document
page_update: partial
---

### Note: check links!

I am looking for good teaching examples that will illustrate methods for
univariate and bivariate analysis of continuous variables. Here are two
publicly available data sets that I like.

<!---More--->

The first data set looks at sleeping time of mammals, from the African
elephant to the yelllow-bellied marmot. You can get a [brief description][sle1]) or you can
look at the [actual data][sle2]. There is
information on the body weight, brain weight, life span, gestation time,
and indices of predation, exposure, and danger. This data set has a few
missing values, designated by NA. There are 62 observations in this data
set.

The second data set looks percentage of body fat, calculated by an
underwater weighing method. It also has measurements that are easier to
collect: age, weight, height, body mass index, and various other size
measurements (neck circumference, chest circumference, etc.). You can
view a [brief description][fat1] or
look at the [raw data][fat2].
There is an [article about this data set][fat3]
published in the [Journal of Statistics Education][fat4]. This data set has
no missing values, but one extreme outlier (an individual who is 29.5
inches tall and 205 pounds). There are 252 observations in this data
set.

Both files can be read in as delimited files (with spaces and/or tabs as
delimiters). The latter data set could also be read in using a fixed
column format.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/analysis-of-continuous-variables/
[sim2]: http://blog.pmean.com

[fat1]: http://www.amstat.org/publications/jse/datasets/fat.txt
[fat2]: http://www.amstat.org/publications/jse/datasets/fat.dat.txt
[fat3]: http://www.amstat.org/publications/jse/v4n1/datasets.johnson.html
[fat4]: http://www.amstat.org/publications/jse/
[sle1]: http://www.statsci.org/data/general/sleep.html
[sle2]: http://www.statsci.org/data/general/sleep.txt
