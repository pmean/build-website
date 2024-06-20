---
title: Adjusting for covariate imbalance
author: Steve Simon
date: 2005-05-20
categories:
- Blog post
tags:
- Being updated
- Covariate adjustment
output: html_document
page_update: partial
---
Here's a graph I want to insert in my book. It illustrates how to
adjust for covariate imbalance. The data comes from the Data and Story
Library

- [lib.stat.cmu.edu/DASL/DataArchive.html](http://lib.stat.cmu.edu/DASL/DataArchive.html)

and shows the housing prices of 117 homes in Albuquerque, New Mexico in
1993. The data set also includes variables that might influence the
sales price of the home such as the size in square feet, the age in
years, and whether the house was custom built.

When you look at the average sales price for regular homes and custom
built homes, you see a large discrepancy. Regular homes sell, on average
for 95 thousand dollars, but custom built homes sell for 145 thousand
dollars on average, a 50 thousand dollar discrepancy.

The trend line, though, show what happens when you adjust for size. The
large gap shrinks by a considerable amount. There is still a significant
difference in the prices, but not as extreme as the unadjusted values
might lead you to believe.

![CovariateAdjustment.gif not found.](http://www.pmean.com/new-images/05/CovariateImbalance01.png)

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/CovariateImbalance.html
[sim2]: http://www.pmean.com/original_site.html
