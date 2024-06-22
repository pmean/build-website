---
title: Source for sample size formula
author: Steve Simon
date: 2008-08-20
categories:
- Blog post
tags:
- Being updated
- Sample size justification
output: html_document
page_update: no
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

<!---More--->

*Hello, I am looking at your [page on sample size
calculation](http://www.childrensmercy.org/stats/size/power.asp), and
I\'m curious as to where you got the equation shown there:*

![](../12/images/SampleSize01.gif){width="246" height="63"}

*I can\'t seem to find that exact form in Cohen\'s book, not does it
appear anywhere else that I\'ve looked. Would you happen to know its
original source?*

I\'m away from all my books for the time being, so I can only
speculate. If you let the two standard deviations be equal, then the
formula simplifies somewhat.

![](../12/images/SampleSize02.gif){width="201" height="63"}

I can\'t say for sure what Cohen\'s formula is, but I suspect that it
assumes both variances are equal.

Some formulas will place the common standard deviation in the
denominator of this equation, which yields

![](../12/images/SampleSize03.gif){width="165" height="73"}

The quantity

![](../12/images/SampleSize04.gif){width="43" height="28"}

is sometimes called the effect size, and is often called Cohen\'s d
(notice the change from upper case to lower case).

Some formulas will substitute a t distribution for the z distribution
although this requires iteration, as the degrees of freedom are
dependent on the sample size. This is a slightly better approximation,
but the best answer will come from the non-central t-distribution. You
would have to rely on tables or software for any power or sample size
calculation involving the non-central t-distribution..

As far as a source, I suspect you would find this formula in many
textbooks. Perhaps Rosner would be a good source.

-   Fundamentals of Biostatistics. Bernard Rosner (1990) Belmont,
    California: Duxbury Press. ISBN: 0-534-91973-1. Description:
    Bernard Rosner provides a good solid introduction to Statistics
    with nice examples of sample size calculations. This book is good
    for someone looking for an introduction to statistics.

If there\'s a different formula from a definitive source, I would not
be at all offended if you used it instead.




You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/SampleSize.html
[sim2]: http://www.pmean.com/original_site.html
