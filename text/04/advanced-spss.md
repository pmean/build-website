---
title: Advanced SPSS methods
author: Steve Simon
date: 2004-05-12
categories:
- Blog post
tags:
- SPSS software
output: html_document
page_update: partial
---
SPSS had a nice web seminar on their Regression and Advanced Statistics
modules. Here are some notes that I took while sitting in.

The Regression module has several advanced regression methods:

-   Binary logistic regression, which is used when the outcome is a
    binary variable (two levels)
-   Multinomial logistic regression, which is used when the outcome is
    categorical, typically with more than two levels.

More basic regression models, such as linear regression, appear in the
base SPSS package.

I have a [training class on binary logistic
regression](../training/hand04.asp) on my web pages.

Advanced Models has several other methods:

-   Repeated measures, which is used when you have multiple measurements
    of the same outcome on each patient in your study,
-   Nested ANOVA, which is used when some factors in a study are
    contained within other factors. For example, many educational
    studies look at different schools as one factor and classrooms
    within each school as a nested factor.
-   Ordinal logistic regression, which is used when the outcome is
    categorical, typically with more than two levels, and where there is
    a logical ordering to the variables.
-   Survival data models, which I will discuss in detail below.

I have a [training class on survival data
models](../training/hand05.asp) on my web pages. The example given in
class is an interesting one, where people are promoted after a training
program. Some are promoted early, others are promoted late, and some
left for other jobs before they had a chance to be promoted. People who
left might have been promoted eventually. We don't know when. All that
we do know if that they did not get promoted during the time they were
here. A survival model will factor that person in to help estimate
promotion rates up to and including the day that they left. After they
leave, they no longer provide information on promotion rates.

These people who leave before they get a promotion are referred to as
censored observations. There may also be censored observations because
we have to stop a study before everyone gets promoted. An important
assumption for survival data is that censoring is independent of
outcome. In this case, it means that people left for reasons unrelated
to whether they might get a promotion sooner rather than later. This is
worth investigating; perhaps people left because they were frustrated
and didn't expect to get promoted anytime soon.

Survival models are used a lot in cancer studies and you should also
investigate whether censoring is independent of outcome. If, for
example, patients drop out of a study because they went to Mexico for
laetrile treatment, they would be considered a censored observation. But
more likely than not these patients dropped out because the treatment
they were receiving in the study was not going well.

You can find an [earlier version](http://www.pmean.com/04/spss.html) of this page on my [original website](http://www.pmean.com/original_site.html).

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/04/spss.html
[sim2]: http://www.pmean.com
