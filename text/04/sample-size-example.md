---
title: Sample size calculation example
author: Steve Simon
date: 2004-05-20
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: complete
---
I received a question in Hong Kong about how to double check a power
calculation in a paper by [Tugwell et al][tug1] in the 1995 NEJM.

[tug1]: https://dx.doi.org/10.1056/NEJM199507203330301

In the paper, they state that

*With the tender-joint count used as the primary outcome, a sample of 75 patients per group was needed in order to have a 5 percent probability of a Type I error and a power of 80 percent to detect a difference of 5 tender joints between groups, with a standard deviation of 9.5, and to allow for a 25 percent dropout rate.*

and the formula for estimating the sample size would be

![](http://www.pmean.com/new-images/04/samplesize-0401.gif)

where D represents the minimum clinically relevant difference. This formula assumes that you have two parallel groups and you are comparing them with a continuous outcome variable using a two-sided t-test. There are several variations on this formula, but they all give the same answer. Extracting the information from the text shown above, you would get

![](http://www.pmean.com/new-images/04/samplesize-0402.gif)

Using these numbers, I get an estimated sample size of 56.60. In order to allow for dropouts, divide this number by 0.75 to get 75.47. I would round this number up, but could not criticize someone who rounded it downward.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/04/samplesize.html
[sim2]: http://www.pmean.com
