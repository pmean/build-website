---
title: R-squared
source: http://www.pmean.com/99/rsquared.html
author: Steve Simon
date: 1999-08-18
categories:
- Blog post
tags:
- Being updated
- Linear regression
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, On my TI-83, when calculating quadratic regression, there is a number that is found called R-squared (R^2). I understand that this is the coefficient of determination. But....I thought that R^2 had to do with linear models. What is R^2 finding for this quadratic regression? what does this number mean? is there a way to find R^2 through a "pencil and paper" process?? I know the equation for R^2 for a linear regression. But its the quadratic I need to know
about. Please, anyone, help!!*

You're performing quadratic regressions on a calculator? I hope the poor thing doesn't overheat.

You know more than you think you do. R squared, sometimes referred to as the proportion of explained variation, is a useful summary for any linear model. It turns out that quadratic regression is an example of a linear model. That seems contradictory, but a quadratic regression is a
linear combination of an intercept, a linear term, and a quadratic term. Any linear combination of independent variables can be considered a
linear model.

**Short explanation**

In brief, **R squared is the relative predictive power of a model**. R squared is a descriptive measure between 0 and 1. **The closer it is to one, the better your model is**. By "better" we mean a greater ability to predict. A value of R squared equal to one (which only occurs in
fairy tales and textbook exercises), would imply that your quadratic regression provides perfect predictions.

**More details**

Consider a data set where we are trying to predict the Lymphocyte count (per cubic mm) as a quadratic function of reticulytes.

**R squared is computed by looking at two sources of variation,SStotal and SSerror**. SStotal is the variability of the lymphocyte count about its mean. SSerror is the variability of the lymphocyte count about the predicted values from the model. In this case, the predicted values would be a quadratic function of reticulytes.

Think of SStotal as the error in prediction if you did not use any information about reticulytes. In that case, our best prediction would just be the mean lymphocyte count. Then SSerror is the error in prediction if you use a quadratic function of reticulytes. **If SSerror is much smaller than SStotal, then we know that the quadratic model fits well**.

**Example**

Here is the SPSS output of a sample exercise from page 461 of Rosner (1992). We use a quadratic function of reticulytes to predict lymphocytes.

![](../../../web/images/99/rsquared01.gif)
height="248"}

Figure 3.1. [Image is already full size]

The output shows a value of **R squared of 0.39**. How is this number computed?

The formula for R squared is

![](../../../web/images/99/rsquared02.gif)
height="60"}

Another formula, which is mathematically equivalent is

![](../../../web/images/99/rsquared03.gif)
height="63"}

where SSregression is the difference between SStotal and SSerror.

We know that **SSerror is 2,207,364.8**. In SPSS, they provide you with total (actually an uncorrected total) and a corrected total. The corrected total is the variability of the lymphocyte count about the mean; the uncorrected total is the variaibility about zero. We usually select the corrected total for our R squared calculations. The only exception might be if we fit a model without an intercept. If you are considering such a model, have a heart to heart talk with your favorite
statistician. These models are trickier than they seem.

Anyway, in our model, **SStotal is 3,616,477.6**. So here is the computation for R squared.

![](../../../web/images/99/rsquared04.gif)
height="58"}

A value of 0.39 is a low, but not unexpected for something as complex as human blood.. This tells us that **39% of the variation in lymphocyte count can be predicted using a quadratic function of reticulytes**.

**What is adjusted R squared?**

Notice that SPSS also produces a statistic called **adjusted R squared**. This statistic **adjusts for the degrees of freedom in the model**, and penalizes an unnecessarily complex linear model. The
formula is

![](../../../web/images/99/rsquared05.gif)
height="60"}

and here is a double check of the results.

![](../../../web/images/99/rsquared06.gif)
height="58"}

We might prefer to use the adjusted R squared if we are comparing our quadratic model to other models of varying complexity, such as linear and cubic regressions. Also note that the SPSS output matches Professor Mean's computations in both cases. This is a testament to the quality of the SPSS program.

**More complicated models**

Some regression and ANOVA models incorporate a random factor. These models do not have an obvious way to compute R squared.

With a random factor, you have two sources of variation, within subjects and between subjects. You can adapt r squared to two sources of variation, but it is tricky. Fit a null model (one with no fixed factors, but it should still include random factors). Estimate between and within variation. Add the two together to get total variation. Then fit your full model. Re-estimate between and within variation and total variation. You can then extend the definition of R squared in an obvious way to estimate the proportion of total variation and within variation explained by your model.

The R squared for within variation is a measure of how much the model helps when trying to predict a new observation on one of the subjects already in your study. The R squared for total variation is a measure of how much the model helps when trying to predict a new observation on a new subject.

In theory, you could also do this for between variation, but the interpretation is tricky, and it is quite easy to get a negative R squared.

I have a paper somewhere in my bibliography that talks about this, but it would take me a while to track it down.

**Summary**

R squared measures the relative prediction power of your model. It compares the variability of the residuals in your model (SSerror) to the variability of the dependent measure (SStotal). If the variability of the residuals is small then your model has good predictive power.

**Further reading**

Any good textbook on regression should have lots of details on R squared. Draper and Smith (1998) discuss R squared in chapters 2 and 4. Most introductory level books will also discuss R squared. Rosner (1992) talks about R squared (though not in the context of quadratic
regression) in chapter 11.

1.  **Applied Regression Analysis, Third Edition.** Draper NR, Smith H. New York NY: John Wiley and Sons
- Inc.  (1998) ISBN: 0-471-17082-8.
2.  **Fundamentals of Biostatistics, Third Edition.** Rosner B. Belmont CA: Duxbury Press (1990) ISBN: 0-534-91973-1.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/rsquared.html
[sim2]: http://www.pmean.com/original_site.html
