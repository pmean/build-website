---
title: Can you use the coefficient of determination for categorical variables?
author: Steve Simon
source: http://www.pmean.com/06/CoefficientDetermination.html
date: 2006-04-04
categories:
- Blog post
tags:
- Linear regression
output: html_document
page_update: partial
---

*Dear Professor Mean, How can you compute a coefficient of determination
(R squared) for a model that has a dichotomous variable? I thought that
you could only compute this in a linear regression model?*

That's an interesting question, because it helps to illustrate the
consistency of linear regression and ANOVA models. Your concern, no
doubt, is spurred by the classic definition of the coefficient of
determination in that it is almost always defined as the square of the
correlation coefficient (hence the alternate name, R squared). How can
you define a correlation coefficient when your independent variable is
categorical?

Well, it turns out that you can come up with something called the point
biserial correlation coefficient, but (a) it is a rather obscure
quantity, and (b) it doesn't help you when you have an independent
variable with three or more levels.

What you need to do is to use an alternative formula for the coefficient
of determination. If you define it as the ratio of SSR/SST (Sum of
Squares Due to Regression divided by Sum of Squares Total), then this
quantity is well defined for both a linear regression model and for an
ANOVA model, since both models allow for calculation of sums of squares.

Surprisingly, I could not find a good example of this explanation on the
web, other than my own web page (see below). That may just be a
reflection on my lack of good searching skills (or perhaps a measure of
my arrogance)!

Most textbooks, however, offer a good explanation of this. For example,
in Woolson's book, the section on ANOVA models has the following quote.

> *The coefficient of multiple determination, denoted by R^2^, is
> defined by R^2^ = SSR/SST, analogous to the simple linear regression
> situation, and again is the proportion of the Y variability accounted
> for by the fitted model.*<U+FFFD> **Statistical Methods for the Analysis of
> Biomedical Data.** Robert F. Woolson (1987) New York: John Wiley &
> Sons. page 299. [\[BookFinder4U
> link\]](http://www.bookfinder4u.com/detail/0471806153.html)

One way to think about this is that the coefficient of determination
represents a correlation of the predicted values and the actual values.
This correlation always has to be non-negative, of course, and the
closer this is to 1.0, the better the model. You can compute predicted
values for both a regression model and an ANOVA model.

Most statisticians do not make a distinction between a regression model
and an ANOVA model, since they both use the same summary tables and can
be fit using the same algorithms. So it is not too surprising that the
coefficient of determination is used for both models.

**Further reading:**

-   [Stats: R-squared](../ask/rsquared.asp)
