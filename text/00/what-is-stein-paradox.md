---
title: "Stein's paradox"
source: http://www.pmean.com/00/stein.html
author: Steve Simon
date: 2000-01-27
categories:
- Blog post
tags:
- Being updated
- Statistical theory
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, What is "Stein's Paradox"?*

Stein's paradox is rather technical and I'm not sure I can do it justice in this web page. It is named for a statistician, Charles Stein, who discovered the paradox in the 1950's, although the importance of this finding was fully understood until several decades later.

We statisticians have known for a long time that the optimal estimate we could get from a set of data is the mean. The definition of "optimal" is rather technical and I'm not sure I could define it properly here. What Stein showed was that **in a multivariate setting, you can do better than the "optimal" mean if you were willing to live with some amount of bias**. This is the paradox: a procedure that is optimal in a univariate setting is sub-optimal in a multivariate setting. It's also paradoxical because deliberately introducing bias can sometimes improve your estimates.

Consider a multi-center trial where we want to estimate the effect of a treatment for each center. We could use the mean for all the patients at a given center to estimate that center's effectiveness. Some centers will have a higher effectiveness than the overall rate and some will have lower effectiveness.

This is clearly better than ignoring the center effect and claiming that the effectiveness of each center was exactly equal to the overall effectiveness rate. But it turns out that **a weighted average between the individual center's mean and the overall mean is a better estimate of that center's effectiveness, if you choose the weights carefully**.

In other words, the optimal estimate of an individual center's effectiveness is not the average of that center's data alone, and it is not the overall average, but somewhere between those two values.

**Selecting an intermediate value is sometimes called shrinkage**. Those centers with above average estimates of effectiveness will have those estimates lowered somewhat towards the overall mean and those centers with below average estimates will have those estimates raised toward the overall mean. We "shrink" the individual center's estimates partway towards the overall mean.

**Shrinkage introduces some bias, but (if you shrink properly) the gain in precision more than offsets the bias**. The overall mean is a more stable estimate than the individual means are, so incorporating the overall mean to some extent will provide greater stability to the individual center estimates.

A random effects model in meta-analysis uses shrinkage in a similar way. Each study provides its own individual estimate, and we combine those studies to get an overall estimate. **The random effects meta-analysis tempers (nudges downward) the results from the overly optimistic studies. It also nudges the overly pessimistic studies a bit higher**.

The amount of nudging depends on the size of each individual study (the smaller the study, the more it is nudged) and how close the individual estimates are to the overall estimate (the greater the homogeneity, the more each study is nudged).

My explanation here is simplistic, partly because I don't understand all the technical details myself. If you are really interested in more details, look for references that discuss techniques like "Empirical Bayes estimation" and "random effects models". You might also want to try to understand the concept of "regression toward the mean" as it relates closely to Stein's paradox.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/stein.html
[sim2]: http://www.pmean.com/original_site.html
