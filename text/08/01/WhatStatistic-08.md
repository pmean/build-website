---
title: What statistic should I use when?
author: Steve Simon
source: http://www.pmean.com/08/WhatStatistic-08.html
date: 2008-01-04
category: Blog post
tags: Analysis of variance, Linear regression
output: html_document
---
**[StATS]: What statistic should I use when?
(created 2008-01-04)**.

Someone was asking about a multiple choice question on a test that reads
something like this: A group of researchers investigating in patients
with diabetes on the basis of demographic characteristics and the level
of diabetic control. Select the most appropriate statistical method to
use in analyzing the data:

1.  a t-test,
2.  ANOVA,
3.  multiple linear regression, or
4.  a chi-square test.

This is one of the more vexing things that people face\--what statistic
should I use when.

I don\'t like answering questions with as little context as this, but I
made the assumption that level of diabetic control is a continuous
variable (HbA1c levels would be an example of a continuous variable).
When you are trying to predict a continuous outcome on the basis of one
or more continuous predictor variables, the approach that is most
commonly used is multiple linear regression. If some of your predictor
variables are categorical, you will find that some people continue to
describe this as a multiple linear regression model, but some will use
different terms like ANCOVA. It turns out that ANCOVA is just special
cases of multiple linear regression. If all of your predictor variables
are categorical, then most people will describe the method as ANOVA,
even though any ANOVA model can be considered as a multiple regression
model.

If I get a chance, I will try to delineate further what statistic should
be used in what situation.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Analysis of
variance](../category/AnalysisOfVariance.html) or [Category: Linear
regression](../category/LinearRegression.html).
<!---More--->
regression](../category/LinearRegression.html).
variance](../category/AnalysisOfVariance.html) or [Category: Linear
for pages similar to this one at [Category: Analysis of
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: What statistic should I use when?
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Analysis of
variance](../category/AnalysisOfVariance.html) or [Category: Linear
regression](../category/LinearRegression.html).
--->

