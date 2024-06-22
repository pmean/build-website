---
title: What statistic should I use when?
author: Steve Simon
date: 2008-01-04
categories:
- Blog post
tags:
- Being updated
- Analysis of variance
- Linear regression
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

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

I don't like answering questions with as little context as this, but I
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

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/WhatStatistic.html
[sim2]: http://www.pmean.com/original_site.html
