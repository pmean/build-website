---
title: Guidelines for logistic regression models
source: http://www.pmean.com/99/logistic.html
author: Steve Simon
date: 1999-09-27
categories:
- Blog post
tags:
- Being updated
- Logistic regression
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

There are three steps in a typical logistic regression model.

Fit a crude model

Fit an adjusted model

Examine the predicted probabilities.

**Step 1. Fit a crude model.**

There are two types of models
- crude models and adjusted models. **A
crude model looks at how a single factor affects your outcome measure
and ignores potential covariates**. An adjusted model incorporates these
potential covariates. Start with a crude model. It's simpler and it
helps you to get a quick overview of how things are panning out. Then
continue by making adjustments for important confounders.

**If the factor that you use to predict your binary outcome is itself
binary
- you can visualize how the logistic regression model works by
arranging your data in a two by two table**.

![](../../../web/images/99/logistic01.gif)

In this example
- the treatment group (also labeled "ng tube" in other
parts of this website) represents a group of children who received
feeding by ng tube when the mother was not in the hospital while the
control group (also labeled "bottle" in other parts of this website)
received bottles when the mother was not in the hospital.

The **Feeding type * Exclusive bf at discharge Crosstabulation** shows
us the frequency for the four possible combinations of feeding type and
breast feeding status at discharge. It helps to also look at the row
percentages and the risk option.

![](../../../web/images/99/logistic02.gif)

The table above shows row percentages for the exclusive breast feeding
status at discharge. Notice that a much greater fraction of the
Treatment group were exclusive breast feeding at discharge (86.8% versus
41.3% for the control group).

![](../../../web/images/99/logistic03.gif)

The **Risk Estimate table** appears when we select the RISK option. This
table provides information about the odds ratio and two different risk
ratios. **The odds ratio is** **9.379**. You should always be careful
about this estimate
- because it is dependent on how we arrange the
table. If we reversed the rows
- for example
- and placed the NG Tube
group on top
- the odds ratio would be inverted. We would have an odds
ratio of of 0.107 (=1/**9.379**). If an odds ratio seems inconsistent
with your previous results
- be sure to compute the inverse and see if
that is consistent.

Notice that SPSS provides two additional estimates. **These two
additional estimates are risk ratios and are computed by dividing one
row percentage by the other**. The value of **4.461** is the ratio of
**58.7%** divided by **13.2%**. This is the increase in the probability
of not exclusively breast feeding at discharge when we compare the NG
Tube group to the Bottle Fed group.

The other estimate
- **0.476** (= **41.3**/**86.8**)
- represents the
change in the probability of exclusive breast feeding when we compare
the NG Tube group to the Bottle Fed group.

The logistic regression output from SPSS is quite extensive. We will
break it apart into pieces and discuss each piece individually.

![](../../../web/images/99/logistic04.gif)

The **Case Processing Summary table** shows you information on missing
cases and unselected cases. Make sure that you are not losing data
unexpectedly.

![](../../../web/images/99/logistic05.gif)

The **Dependent Variable Encoding table** shows you which of the
categories is labeled as 0 and which is labeled as 1. If the estimates
that you get later in the output go in the opposite direction from what
you would expect
- check here to see if the encoding is reversed from
what you expected.

We will skip any discussion of all of the tables in Step 0. These
represent the status of a null model with no independent variables other
than an intercept. These values are more likely to be interesting if you
are fitting a sequential series of logistic regression models.

![](../../../web/images/99/logistic06.gif)

The **Omnibus Tests of Model Coefficients table** is mostly of interest
for more complex logistic regression models. It provides a test of the
joint predictive ability of all the covariates in the model.

![](../../../web/images/99/logistic07.gif)

The **Model Summary table** in Step 1 shows three measures of how well
the logistic regression model fits the data. These measures are useful
when you are comparing several different logistic regression models.

![](../../../web/images/99/logistic08.gif)

The **Classification Table** in Step1 is often useful for logistic
regression models which involve diagnostic testing
- but you usually have
to set the **Classification Cut-off field** to a value other than the
default of 0.5. You might want to try instead to use the prevalence of
disease in your sample as your cut-off. Under certain circumstances
- the
percentage correct could relate to sensitivity and specificity (or the
reverse)
- though the use of these terms is a bit unusual for a breast
feeding study since this represents a condition not related to disease.

![](../../../web/images/99/logistic09.gif)

In the **Variables in the Equation table** for Step 1
- the **B column**
represents the estimated log odds ratio. The **Sig. column** represents
the p-value for testing whether feeding type is significantly associated
with exclusive breast feeding at discharge. The **Exp(B) column**
represents the odds ratio. Notice that this odds ratio (**0.107**) is
quite a bit different than the one computed using the crosstabulation
(**9.379**). But it is just the inverse; check it out on your own
calculator.

We can also get a confidence interval for the odds ratio by clicking on
the **Options button** and selecting the the **CI for exp(B) option
box**.

![](../../../web/images/99/logistic10.gif)

If we were interested in the earlier odds ratio of 9.379 instead of
0.107
- then we would compute the reciprocal of the confidence limits.
Thus 3.1 (=1/**0.323**) and 28.6 (=1/**0.035**) represent 95% confidence
limits.

Let's look at another logistic regression model
- where we try to
predict exclusive breast feeding at discharge using the mother's age as
a continuous covariate.

![](../../../web/images/99/logistic11.gif)

The log odds ratio is **0.157** and the p-value is **0.001**. The odds
ratio is **1.170**. This implies that the estimated odds of successful
breast feeding at discharge improve by about 17% for each additional
year of the mother's age.

![](../../../web/images/99/logistic12.gif)

The confidence limit is **1.071 to 1.278**
- which tells you that even
after allowing for sampling error
- the estimated odds will increase by
at least 7% for each additional year of age.

If you wanted to see how much the odds would change for each additional
five years of age
- take the odds ratio and raise it to the fifth power.
This gets you a value of 2.19
- which implies that a change of five years
in age will more than double the odds of exclusive breast feeding.

**Step 2. Fit an adjusted model**

The crude model shown in step 1
- tells you that the odds of breast
feeding is nine times higher in the ng tube group than in the bottle
group. A previous descriptive analysis
- however
- told you that older
mothers were more likely to be in the ng tube group and younger mothers
were more likely to be in the bottle fed group. This was in spite of
randomization. So you may wish to see how much of the impact of feeding
type on breast feeding can be accounted for by the discrepancy in
mothers' ages. This is an adjusted logistic model.

When you run this model
- put **FEED_TYP** as a covariate in the first
block and put **MOM_AGE** as a covariate in the second block. The full
output has much in common with the output for the crude model. Important
excerpts appear below.

![](../../../web/images/99/logistic13.gif)

The **Omnibus Tests of Model Coefficients table** and the **Model
Summary table** for Block 1 are identical to those in the crude model
with **MOM_AGE** as the covariate. We wish to contrast these with the
same tables for Block 2.

![](../../../web/images/99/logistic14.gif)

The Chi-square values in the **Omnibus Tests of Model Coefficients
table** in Block 2 show some changes.

The test in the **Model row** shows the predictive power of all of the
variables in Block 1 and Block 2. The large Chi-square value
(**28.242**) and the small p-value (**0.000**) show you that either
feeding type or mother's age or both are significantly associated with
exclusive breast feeding at discharge.

The test in the **Block row** represents a test of the predictive power
of all the variables in Block 2
- after adjusting for all the variables
in Block 1. The large Chi-square value (**12.398**) and the small
p-value (**0.000**) indicates that feeding type is significantly
associated with exclusive breast feeding at discharge
- even after
adjusting for mother's age. The Chi-square value is computed as the
difference between the -2 Log likelihood at Block 1 (**95.797**) and
Block 2 (**83.399**).

Notice that the two R-squared measures are larger. This also tells you
that feeding type helps in predicting breastfeeding outcome
- above and
beyond mother's age.

![](../../../web/images/99/logistic15.gif)

![](../../../web/images/99/logistic16.gif)

The odds ratio for mother's age is **1.1367**. That tells you that each
for additional year of the mother's age
- the odds of breast feeding
increase by 1.14 (or 14%)
- assuming that the feeding type is held
constant.

The odds ratio for feeding type is **0.1443** or
- if we invert it
- 6.9.
This tells us that the odds for breast feeding are about 7 times great
in the ng tube group than in the bottle fed group
- assuming that
mother's age is held constant. Notice that the effect of feeding type
adjusting for mother's age is not quite as large as the crude odds
ratio
- but it is still large and it still is statistically significant
(the p-value is **.001** and the confidence interval excludes the value
of 1.0).

**Step 3. Examine the predicted probabilities.**

The logistic regression model produces estimated or predicted
probabilities and we should compare these to probabilities observed in
the data. A large discrepancy indicates that you should look more
closely at your data and possibly consider some alternative models.

If you coded your outcome variable as 0 and 1
- then you can compute the
average to get probabilities observed in the data. But if you have a lot
of values for your covariate
- you have to group it first.

![](../../../web/images/99/logistic17.gif)

The **Report table** shows average predicted probabilities (**Predicted
probability column**) and observed probabilities (**Exclusive bf at
discharge column**) for mother's age. We had to create a new variable
where we created five groups of roughly equal size. The first group
represented the 15 mothers with the youngest ages and the fifth group
represented the 17 mothers with the oldest ages. The last column
(**Mother's age column**) shows the average age in each of the five
groups.

![](../../../web/images/99/logistic18.gif)

The **Hosmer and Lemeshow Test table** provides a formal test for
whether the predicted probabilities for a covariate match the observed
probabilities. A large p-value indicates a good match. A small p-value
indicates a poor match
- which tells you that you should look for some
alternative ways to describe the relationship between this covariate and
the outcome variable. In our example
- the p-value is large (**0.545**),
indicating a good match.

![](../../../web/images/99/logistic19.gif)

The **Contingency Table for Hosmer and Lemeshow Test table** shows more
details. This test divides your data up into approximately ten groups.
These groups are defined by increasing order of estimated risk. The
first group corresponds to those subjects who have the lowest predicted
risk. In this model it represents the seven subjects where the mother's
age is 16
- 17
- or 18 years. Notice that in this group of 16-18 year old
mothers
- six were not successful BF and one was. This corresponds to the
observed counts in the first three rows of the Mother's age *
Exclusive bf at discharge Crosstabulation table (shown below
- with the
bottom half editted out). The second group of eight mothers represents
19 and 20 year olds
- where 4 were exclusive breast feeding at discharge.
The third group represents nine mothers aged 21 and 22 years old
- and so
forth.

![](../../../web/images/99/logistic20.gif)

The next group corresponds to those with the next lowest risk
- those
mothers who were 19 and 20 years old.

**Summary**

There are three steps in a typical logistic regression model.

First
- fit a crude model that looks at how a single covariate influences
your outcome.

Second
- fit an adjusted model that looks at how two or more covariates
influence your outcome.

Third
- examine the predicted probabilities. If they do not match up well
with the observed probabilities
- consider modifying the relationship of
this covariate.

**Further reading**

**Logistic Regression**. David Garson. (Accessed on November 19
- 2002)
Excerpt: *"Binomial (or binary) logistic regression is a form of
regression which is used when the dependent is a dichotomy and the
independents are continuous variables
- categorical variables
- or both.
Multinomial logistic regression exists to handle the case of dependents
with more classes. Logistic regression applies maximum likelihood
estimation after transforming the dependent into a logit variable (the
natural log of the odds of the dependent occurring or not). In this way,
logistic regression estimates the probability of a certain event
occurring. Note that logistic regression calculates changes in the log
odds of the dependent
- not changes in the dependent itself as OLS
regression does."*
[www2.chass.ncsu.edu/garson/pa765/logistic.htm](http://www2.chass.ncsu.edu/garson/pa765/logistic.htm)

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/logistic.html
[sim2]: http://www.pmean.com/original_site.html
