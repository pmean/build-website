---
title: Bootstrap
source: http://www.pmean.com/00/bootstrap.html
=author: Steve Simon
date: 2000-01-27
categories:
- Ask Professor Mean
- Blog post
tags:
- Unusual data
output: html_document
page_update: partial
---
*Dear Professor Mean, I've heard a lot about how the bootstrap is going to revolutionize Statistics.*

<!---More--->

Sounds like a classic case of hype to me. These are the same people who told us that computerization would lead to the paperless office.

**Still, the bootstrap is useful for estimating bias and variation**. It can be applied to a surprisingly wide range of problems.

**Short explanation**

The bootstrap involves **repeated re-estimation of a parameter using random samples with replacement from the original data**. Because the sampling is with replacement, some items in the data set are selected two or more times and other are not selected at all. When this is repeated a hundred or a thousand times, we get pseudo-samples that behave similarly to the underlying distribution of the data.

You can use these pseudo-samples in several ways. First, you can estimate the mean of these pseudo-samples. They should be close to the estimate itself. If there is a discrepancy, you have a **quantitative estimate of bias**.

Second, you can look at the standard deviation of these pseudo-samples. This gives you a **bootstrap standard error** of your estimate. This standard error is not reliant on any distributional assumptions (like normality).

Third, you can compute the 2.5 percentile and the 97.5 percentile of these pseudo-samples. This gives you a **bootstrap confidence interval**. You could also use the classic formula for the confidence interval (plus or minus 1.96 standard errors).

This gives you a general idea of what the bootstrap can do, but you should consult with a professional statistician before trying to use a bootstrap yourself. There are a lot of subtle variations in how to perform the bootstrap and how to summarize results from your pseudo samples.

**Example**

The bootstrap would work like this. Suppose we had a sample of four data points: 1, 3, 5, 9 and we estimated the median from this sample as 4. Now we want to estimate how precise the median of four numbers would be. we repeatedly sample with replacement from the four data points to get the following results:

Median(3,5,1,1)=2\
Median(3,9,9,1)=6\
Median(5,9,9,9)=9\
Median(5,1,9,5)=5\
Median(3,9,9,5)=7\
Median(1,3,9,5)=4\
Median(3,3,9,3)=3\
Median(9,5,3,3)=4\
Median(1,5,3,1)=2\
Median(9,3,3,9)=6

We have a pseudo-sample of 10 re-estimated medians {2, 6, 9, 5, 7, 4, 3, 4, 2, 6}. The behavior of this pseudo-sample mimics the behavior of the median. For example, the standard deviation of these 10 values (2.3) is an estimate of the variability of the median.

This is only 10 bootstrap samples. Normally you would run at least 100, and if you wanted confidence intervals, at least 1000 bootstrap samples.

A quick warning: there are some limitations to the bootstrap when you are using a small sample (as we are here) and when you are estimating certain statistics like the median. I chose this example mostly because it was easy to calculate and show the results.

**Summary**

Inquisitive Ian has heard a lot about **how the bootstrap will revolutionize statistics**. Professor Mean explains that although there may be some hype in that statement, the bootstrap is a **flexible approach for estimating bias and variability** that works for a surprisingly wide range of problems. The bootstrap is a **simulation where your computer repeatedly samples with replacement from the data set itself**.

**How to program the bootstrap**

There is no easy way to run a bootstap in SPSS, though some of the procedures in SPSS have bootstrapping built in. S-plus has a bootstrap() function that makes it very easy to run a bootstrap. R has a function, sample() that you could use to program a bootstrap.

Here's how you would do this in S-plus

```
x <- c(1,3,5,9)
bootstrap.medians <- bootstrap(x,median)    hist(bootstrap.mediansreplicates,breaks=0.5:9.5)
```

![](http://www.pmean.com/images/03/bootstrap.gif){width="192" height="143"}

and here is how you would do it in R.

**Further reading**

The classic reference for the bootstrap is Bradley Efron's book. Pat Kelly has a paper on the web that discusses the bootstrap and other simulation methods.

Efron B. The Jackknife, the Bootstrap and Other Resampling Plans. (1982) Philadelphia: The Society for Industrial and Applied Mathematics. (ISBN: 0-89871-179-7).

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/bootstrap.html
[sim2]: http://www.pmean.com/original_site.html
