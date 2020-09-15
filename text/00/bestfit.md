---
title: Best fitting curve
author: Steve Simon
date: 2000-01-26
categories:
- Blog post
tags:
- Modeling issues
output: html_document
---
*Dear Professor Mean, I have a graph of the trend for the mean frequency
of injuries among children from 1 to 11 years of age. The shape of the
curve suggests a nonlinear relationship between the age and the
frequency of injuries. Is there some software that would provide the
best fitting curve for this data from among a large family of nonlinear
curves?*

> You might want to think twice about this endeavor. **Finding the best
> fitting curve from among a large family of curves has some of the same
> pitfalls that stepwise regression has**. Both approaches will tend to
> overfit your data.
>
> In particular, **any statistical tests would be invalid** when you
> select the curve solely on the basis of your data. The curve you get
> **will not extrapolate well** beyond the range of your data, and it is
> likely to have **poor agreement with any future data** you collect.
>
> **If you don't have any a priori or theoretical basis from which to
> choose an equation, then a nonparametric approach like smoothing
> splines has a lot of appeal**. In particular, you might find a
> generalization of Poisson regression, the generalized additive model,
> to work very well here. Refer to Hastie and Tibshirani's book for
> more details.

**Further reading**

1.  **Generalized Additive Models** (1990) Trevor J. Hastie and Robert
    Tibshirani. London England: Chapman and Hall. ISBN: 0-412-34390-8.

You can find an [earlier version](http://www.pmean.com/00/bestfit.html) of this page on my [original website](http://www.pmean.com/original_site.html).
