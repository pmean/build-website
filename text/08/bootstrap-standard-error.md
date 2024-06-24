---
title: Bootstrap estimates of the standard error
author: Steve Simon
date: 2008-06-20
categories:
- Blog post
tags:
- Unusual data
output: html_document
page_update: complete
---

A regular correspondent (JU) on the MEDSTATS email discussion group asked about using the bootstrap to estimate the standard error of the mean in a simple case with 9 data values. He wanted to know why the commonly used approach in the bootstrap community was to use n instead of n-1 in the variance denominator. It seemed to him that n-1 would produce an unbiased estimate of the standard error and wanted to know if that was true just in this special case or true in general. He quoted from the book by Efron and Tibshirani that they felt that for most purposes either method would work well.

I responded with a bit of trepidation, because I do not understand the bootstrap as well as Efron or Tibshirani. The bootstrap is intended to compute standard errors in situations where there is no possible analytic formula for the standard error. If there is no analytic formula, then clearly there is no way that you could tell analytically whether multiplying by sqrt\[n/(n-1)\] would make things better or make things worse. So including that factor to make the bootstrap perform better only in a situation where it would never be used is not a good idea.

There are several adjustments to the bootstrap confidence interval that have been shown to have good properties under simulation models, so I suspect that if you wanted to promote your adjusted bootstrap standard error, you could simulate its performance under a variety of circumstances.

As a minor nitpick, I should note that sometimes we get obsessed with unbiasedness without thinking things through. When you use n-1 in the denominator, it makes the estimate of the variance unbiased. But when you take the square root of this estimate, the standard deviation is a biased estimate of the population standard deviation (the expected value of a square root of a statistic is almost never equal to the square root of the expected value of that statistic). Thus the standard error is biased also. Not badly biased, but it is indeed biased. Now I suspect that using n-1 allows the standard error to behave reasonably, in that you can use known distributions like the t-distribution for the resulting test statistic. But for the record, we don't divide by n-1 to make the standard error unbiased.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/BootstrapStandardError.html
[sim2]: http://www.pmean.com/original_site.html

