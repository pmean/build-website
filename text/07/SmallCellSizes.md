---
title: Cohen's Kappa with small cell sizes
author: Steve Simon
source: http://www.pmean.com/07/SmallCellSizes.html
date: 2007-04-26
categories:
- Blog post
tags:
- Measuring agreement
- Small sample size issues
output: html_document
page_update: complete
---

Someone on Edstat-L wrote in asking about using Cohen' Kappa with a small sample size in some of the cells. Here's an example:

```
       N    Y Total
N     890   1  891
Y       2   2    4
Total 892   3  894
```

As a general rule, kappa should not be computed when the distribution is skewed so heavily towards one category. But another valuable thing to remember is that a confidence interval is always a good indication about whether the sample size was adequate. The actual estimate of Kappa is 0.57, but the 95% confidence interval ranges from 0.13 to 1. So this reminds you that you don't have enough data to say whether the agreement is poor, moderate, excellent, or perfect.

Now 894 is a large sample size, but the failure to get sufficient numbers of Y responses from either rater is what causes this great level of uncertainty.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/SmallCellSizes.html
[sim2]: http://www.pmean.com
