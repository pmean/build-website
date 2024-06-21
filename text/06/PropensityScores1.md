---
title: A simple application of propensity scores
author: Steve Simon
source: http://www.pmean.com/06/PropensityScores1.html
date: 2006-04-26
categories:
- Blog post
tags:
- Covariate adjustment
output: html_document
page_update: partial
---

In many research studies, you do not have the opportunity to randomly
assign an exposure variable. The influence of the exposure variable on
the outcome variable can sometimes produce misleading results because
there may be other covariates which are important predictors of the
outcome which are also imbalanced across the levels of exposure. A
propensity score model creates a new composite variable, the propensity
score, which helps you identify pairs or groups of variables with
similar covariate patterns. The use of stratification or matching on the
propensity score removes the effect of covariate imbalance and allows
for a fair and unbiased comparison of the exposure group with the
control group.

A propensity score model assumes that you have a binary exposure
variable and one or more covariates that are potentially imbalanced
across the levels of the exposure variable. The outcome variable can
take on many forms. It can be a continuous outcome, a categorical
outcome, or a survival time. The propensity score is estimated by
fitting a logistic regression model to the exposure variable as the
dependent variable and all the important covariates as independent
variables. The outcome variable is ignored during this stage of the
analysis. For each observation in the data set, compute a predicted
probability for being in the exposed group. A large value for the
propensity score represents a covariate pattern that is more likely to
appear in the exposed category. A small value represents a covariate
pattern that is more likely to appear in the control category. By
matching or stratifying on the propensity score, you make implicit
comparisons only among observations that have similar covariate
patterns.

Here are two interesting published examples of propensity score
analysis.

-   **Does prophylactic sotalol and magnesium decrease the incidence of
    atrial fibrillation following coronary artery bypass surgery: a
    propensity-matched analysis.** Aerra V, Kuduvalli M, Moloto A,
    Srinivasan A, Grayson A, Fabri B, Oo A. Journal of Cardiothoracic
    Surgery 2006: 1(6)
    [\[Abstract\]](http://www.cardiothoracicsurgery.org/content/1/1/6/abstract)
    [\[Full text\]](http://www.cardiothoracicsurgery.org/content/1/1/6)
    [\[PDF\]](http://www.cardiothoracicsurgery.org/content/pdf/1749-8090-1-6.pdf)
-   **Is albumin administration in the acutely ill associated with
    increased mortality? Results of the SOAP study.** Vincent JL, Sakr
    Y, Reinhart K, Sprung CL, Gerlach H, Ranieri VM. Crit Care 2005:
    9(6); R745-54.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=16356223&dopt=Abstract)
    [\[Abstract\]](http://ccforum.com/content/9/6/r745/abstract) [\[Full
    text\]](http://ccforum.com/content/9/6/R745)
    [\[PDF\]](http://ccforum.com/content/pdf/cc3895.pdf)

I have used a simple data set in some of my classes that is interesting
and fun. It comes from the Data and Story Library (DASL) website. This
data set contains the resale values for a random sample of 117 homes in
Albuquerque, NM in 1993. The variables in the data set are

-   PRICE = Selling price (in dollars)
-   SQFT = Square feet of living space
-   AGE = Age of home (years)
-   FEATS = Number out of 11 features
-   NE = Located in northeast sector of city (1) or not (0)
-   CUST = Custom built (1) or not (0)
-   COR = Corner location (1) or not (0)

The eleven features included dishwasher, refrigerator, microwave,
disposer, washer, intercom, skylight(s), compactor, dryer, handicap fit,
and cable TV access. The original data set had selling price in hundreds
of dollars, but I found it useful to convert this to dollars. This data
set also had a column for annual taxes, which I did not include in this
data set.

An interesting question is whether custom built houses sell for more
than regular homes. A direct comparison of these two groups is unfair
though, because custom built houses tend to be bigger and they tend to
have more features than regular houses on average. There are also small
differences in location with custom built houses being located slightly
more often in the northeast sector of the city. There is almost no
difference in the proportion of houses found on corner lots however.

You can correct for these disparities using an analysis of covariance
model, and that works reasonably well for this data set. In many
research settings, though, the number of covariates becomes so large
that adjustment for all of the variables simultaneously will not work.
In these cases, a propensity score model is very useful.
