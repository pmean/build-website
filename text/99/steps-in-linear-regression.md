---
title: Steps in a typical linear regression analysis
source: http://www.pmean.com/99/linear.html
author: Steve Simon
date: 1999-09-21
categories:
- Blog post
tags:
- Being updated
- Linear regression
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Let no man ignorant of geometry enter* - Sign over Plato's Academy in
Athens

**Linear regression models** provide a good way to **examine how various
factors influence a continuous outcome measure**. There are three steps
in a typical linear regression analysis.

1.  **Fit a crude model**
2.  **Fit an adjusted model**
3.  **Analyze predicted values and residuals**

These steps may not be appropriate for every linear regression analysis,
but they do serve as a general guideline. In this presentation
- you will
see these steps applied to data from a breast feeding study
- using SPSS
software.

This presentation can only give the briefest introduction to this area.
When I have time
- I hope to add additional web pages to provide a more
thorough approach to this topic.

**Step 1
- Fit a crude model**

There are two types of models
- crude models and adjusted models. A
**crude model looks at how a single factor affects your outcome
measure** and ignores potential covariates. An **adjusted model
incorporates these potential covariaties**. Start with a crude model.
It's simpler and it helps you to get a quick overview of how things are
panning out. Then continue by making adjustments for important
confounders.

A crude model for comparing duration of breast feeding to feeding group
would be a t-test. I prefer
- however
- to present **a general linear
model** because it provides a **unifying framework for diverse
statistical methods** like analysis of variance
- analysis of covariance,
multiple linear regression
- repeated measures designs
- and t-tests.

Shown below is the table of tests from the general linear model
procedure.

![](../../../web/images/99/linear01.gif)

The general linear model uses an F test instead of the t test
- but in
this context
- these two tests are mathematically equivalent. The p-value
for comparing feeding groups is .001
- which indicates a significant
difference between the two groups.

The general linear model also has a table of estimates
- which is
presented below.

![](../../../web/images/99/linear02.gif)

The intercept represents the average duration of breast feeding for the
NG tube group. We see that the average duration is 20 weeks for the NG
tube group. The (FEED_TYP=1) term is an estimate of how much the
average duration changes when we move from the NG tube group to the
bottle group. We see that the bottle group has an average duration that
is 7 weeks shorter.

Shown below is a table of means from the general linear model.

![](../../../web/images/99/linear03.gif)

We see that the difference between the two means is roughly 7 weeks,
which confirms the results shown previously.

**Step 2
- Fit an adjusted model**

The previous model was a crude model. We see a seven week difference
between the two groups
- but could some of all of this difference be due
to the fact that the NG tube group had older mothers? To answer this
- we
need to fit an adjusted model.

Shown below is the table of tests for a general linear model that
includes mother's age in the model.

![](../../../web/images/99/linear04.gif)

The p-value for feeding group is .009
- which is still significant
- even
after adjusting for the effect of mother's age.

Shown below is the table of estimates from the same general linear
model.

![](../../../web/images/99/linear05.gif)

This table shows that the effect of bottle feeding is to decrease
duration of breast feeding by about six weeks
- after adjusting for
mother's age. Each year that a mother is older increase the duration of
breast feeding by a quarter of a week.

A previous descriptive analysis of this data revealed that the average
age for mothers in the treatment group is 29 years and the average age
for mothers in the control group is 25 years. When you see a discrepancy
like this in an important covariate
- you need to assess whether the four
year gap in average ages could account for part or all of the effect of
the treatment group.

This analysis shows that the four year gap only accounts for a small
portion of the difference. Since each year of age changes the duration
by a quarter week
- this means that the difference between mother's ages
acounts for just one week in the 7 week difference we saw in the crude
model.

Shown below is the table of means.

![](../../../web/images/99/linear06.gif)

This table now adjusts for mother's age. The mean for the bottle fed
group is adjusted upward to what it would be if the average age of the
mothers in this group were 27 rather than 25. The mean for the NG tube
group is adjusted downward to what it would be if the average age were
27 instead of 29. Note that the adjusted mean duration is half a week
higher than the crude mean duration in the bottle group and that the
adjusted mean duration is half a week lower than the crude mean duration
for the NG tube group. This confirms that the difference between the two
feeding groups is roughly 6 weeks
- after adjusting for mother's age.
This is one week less than the crude model.

This is not the final model. We should examine the effect of delivery
type and account for the fact that we have some data on twins. I hope,
though
- that this presentation gives you a general idea of what crude
and adjusted models are.

**Step 3
- Analyze predicted values and residuals**.

A regression model gives you an equation that you can use to compute
predicted values and residuals. In the regression model with mother's
age and feeding type
- the equation (with a bit of rounding) is

**age_stop = 13 + 0.25 * age - 6 * feed_typ**,

where feed_typ=1 if control
- 0 if treatment.

So
- for example
- if you recruited a mother into the treatment group and
she was 30 years old
- you would predict the duration of breast feeding
to be

**predicted age_stop = 13 + 0.25 * 30 - 6 * 0 = 20.5 weeks.**

If you recruited a mother into the treatment group and she was 19 years
old
- you would predict the duration of breast feeding to be

**predicted age_stop = 13 + 0.25 * 19 - 6 * 0 = 17.75 weeks.**

If you recruited a mother into the control group and she was 37 years
old
- you would predict the duration of breast feeding to be

**predicted age_stop = 13 + 0.25 * 37 - 6 * 1 = 16.25 weeks.**

Now it turns out that the first three rows of your data set correspond
to the three scenarios described above. The actual values we observed
were 30 weeks
- 4 weeks
- and 12 weeks.

The residual is the difference between what we observed in the data and
what the regression model would have predicted. For the first mother in
the sample
- you can observe that there are 30 weeks of breast feeding,
but the model predicted much less
- 20.5 weeks. You can compute

**residual = 30 - 22.5 = 7.5.**

When the residual is positive
- your regression model has under-predicted
the outcome. With the second mother
- your regression model has
over-predicted the outcome. The observed value is 4 and the predicted
value is 17.75. So you can compute

**residual = 4 - 17.75 = -13.75.**

This residual is negative. For the third mother
- the residual is also
negative.

**residual = 12 - 16.25 = -4.25.**

Most statistical models require certain assumptions to be made about
your data. These assumptions can be examined using residuals. If your
model is good
- the residuals show a random featureless scatter. If
instead
- they show a systematic trend or pattern
- then you can improve
by incorporating that trend or pattern into your model.

The simplest plot is a plot of predicted values versus residuals (shown
below).

![](../../../web/images/99/linear07.gif)

The relatively random scatter of data values provides us with confidence
in the assumptions of the linear model. There is no obvious trend or
pattern in this plot.

I also looked at the residuals versus the feeding groups and versus
mother's age. Both showed no systematic trend or pattern (graphs not
shown).

The following plot examines normality of the residuals.

![](../../../web/images/99/linear08.gif)

The curved line indicates a non-normal distribution. Further
investigation would identify that this distribution is rectangular: it
has a sharp lower and upper bound that differs from a bell shaped curve.
The design of this study produces these limits because the age at which
the mother stops breast feeding can't be shorter than 0 weeks and it
can't be longer than the duration of the study (roughly 6 months). In
practice
- this type of non-normality is not a serious problem.

**Summary**

There are three steps in a typical linear regression model analysis.

1.  Fit a crude model.
2.  Fit an adjusted model.
3.  Examine predicted values and residuals.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/linear.html
[sim2]: http://www.pmean.com/original_site.html
