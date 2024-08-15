---
title: "Why weighting for iid data is inefficient"
author: "Steve Simon"
source: new
date: "2022-09-26"
categories: 
- Blog post
tags:
- Statistical theory
output: html_document
page_update: complete
---

Usually, you use weighting to gain efficiency in a setting where different data points have different variances. But if the variances are equal, such as in an independent and identically distributed setting, weighting might be done for other reasons. It may be needed, but you do lose some efficiency when you do this.

<!--more-->

How would you show this? I'm borrowing some arguments from the [Wikipedia page on inverse-variance weighting][wik1]. I also got some help from the [Khan Academy page on Lagrangian multipliers][kha1].

[wik1]: https://en.wikipedia.org/wiki/Inverse-variance_weighting

[kha1]: https://www.khanacademy.org/math/multivariable-calculus/applications-of-multivariable-derivatives/constrained-optimization/a/lagrange-multipliers-examples

If you collect data,

$X_1, X_2, ...,X_n$

from a distribution with finite variances

$\sigma_1^2, \sigma_2^2, ..., \sigma_n^2$

and where the X's are independent. The weighted mean is defined as

$\bar{X}_w={\sum_i w_i X_i}$

Then, because of independence, 

$Var(\bar{X}_w) = \sum_i{Var(w_i X_i)}$

$\ \ = \sum_i{w_i^2 \sigma_i^2}$

Be careful here. If you want to find the values for w that minimize this equation, you need to be aware that moving all of the weights towards zero would produce an unfair minimum. So constrain the probles so that

where

$\sum_i w_i=1$

The minimum must occur at a spot where all the partial derivatives are equal to zero subject to the constraint shown above. This type of minimization problem is most easily solved using Lagrangian multipliers.

Minimize

$\sum_i{w_i^2 \sigma_i^2} - \lambda(\sum_i w_i-1)$

The partial derivatives for the $w_i$ and $\lambda$ are

$2w_i \sigma_i^2 - \lambda$

$\sum_i w_i-1$

Set these equations to zero and solve to get

$w_i = \frac{\lambda}{2 \sigma_i^2}$

or

$w_i = K \frac{1}{\sigma_i^2}$

where K is chosen so that the weights add up to 1. This shows a rather intuitive result. The optimal weighting scheme when you have unequal variances is to use weights that are inversely proportional to the individual variances.

If the variances are all equal, then the optimal weights must all be equal. And they also have to add up to 1. So the obvious solution when the variances are equal is to use weights 1/n.

Now my math is a bit rusty, so check my formulas carefully.
