---
title: Why the plus one in the percentile formula?
author: Steve Simon
source: http://www.pmean.com/07/PercentileFormula.html
date: 2007-06-22
categories:
- Blog post
tags:
- Descriptive statistics
output: html_document
page_update: complete
---

### Dear Professor Mean, 

I was reviewing your page on the interquartile range and was wondering why the formula for the quartiles in particular and percentiles in general asks you to select the p(n+1) observation. Why do you need to add one?*

### Dear Reader,

The glib answer is that we need to make up for the deficit that we created when we defined the degrees of freedom for the standard deviation to be n-1.

Actually, there is more than one formula that works and there is no perfect consensus, especially for the definition of quartiles.

One intuitive answer is that the average of the numbers 1 through n is not n/2 but rather (n+1)/2. So this gives you a hint that simply using p*n would produce values that are slightly too small.

Another intuitive answer is that p(n+1) enforces some symmetry to the problem, so that the percentiles from the upper end match the percentiles from the lower end. Suppose you wanted to compute the 25th and 75th percentiles of a set of six numbers. If you used the formula pn, this would produce values of 6*0.25=1.5 and 6*0.75=4.5. So you would choose halfway between the first and second value for the 25th percentile, and halfway between the 4th and 5th values for the 75th percentiles. So this definition would be lopsided in that the 25th percentile used the smallest value as part of the calculation, but the 75th percentile did not use the largest value as part of the calculation.

There are more technical justifications for adding one, but on a Friday afternoon, I prefer a less technical justification.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/PercentileFormula.html
[sim2]: http://www.pmean.com
