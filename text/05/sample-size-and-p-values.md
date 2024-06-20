---
title: Relationship between sample size and p-values
author: Steve Simon
source: http://www.pmean.com/05/SampleSize-05.html
date: 2005-02-14
categories:
- Blog post
tags:
- Being updated
- Pvalues
output: html_document
page_update: partial
---
**[StATS]:** **Relationship between sample size and
p-values (February 14, 2005)**

I got a rather basic inquiry about p-values, but it is worth mentioning.
Someone had a data set with 9,000 observations and was unhappy with the
p-value that he got in a logistic regression model. So just as an
experiment, he decided to replicate the data set (copy the entire matrix
and paste it immediately below). This gave him a sample size of 18,000
observations. He noted that the odds ratio stayed the same but the
p-value got smaller. Actually, in his example, it was cut exactly in
half, but that was just a fluke.

I told him about the time when I only had \$900 in charitable
contributions at tax time, so I decided to xerox all my checks and then
claim \$1800 on my tax return. But in all seriousness, I did this when I
first learned about Statistics, just to see what would happen. It turns
out that when you increase your sample size, the p-value always goes
down. There are a few exceptions for one-sided hypotheses, but this is a
general rule that almost always works.

There is an obvious lesson here, but it wasn't obvious to me the first
time I did it. If two data sets show the same estimated odds ratio (or
mean difference, or hazard ratio, or whatever) and are otherwise
identical except for the sample size, it will be the larger of the two
data sets that provides more precision, and therefore more evidence
against the null hypothesis.

You can also browse
for pages similar to this one at [Category:
Pvalues](../category/Pvalues.html).

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/SampleSize.html
[sim2]: http://www.pmean.com
