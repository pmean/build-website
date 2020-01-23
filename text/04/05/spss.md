---
title: Advanced SPSS methods
author: Steve Simon
source: http://www.pmean.com/04/spss.html
date: 2004-05-12
category: Blog post
tags: SPSS software
output: html_document
---
**[StATS]: Advanced SPSS methods (May 12, 2004)**.

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
left might have been promoted eventually. We don\'t know when. All that
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
and didn\'t expect to get promoted anytime soon.

Survival models are used a lot in cancer studies and you should also
investigate whether censoring is independent of outcome. If, for
example, patients drop out of a study because they went to Mexico for
laetrile treatment, they would be considered a censored observation. But
more likely than not these patients dropped out because the treatment
they were receiving in the study was not going well.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [](../category/DiagnosticTesting.html)
[Category: SPSS software](../category/SpssSoftware.html).
<!---More--->
[Category: SPSS software](../category/SpssSoftware.html).
for pages similar to this one at [](../category/DiagnosticTesting.html)
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Advanced SPSS methods (May 12, 2004)**.
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [](../category/DiagnosticTesting.html)
[Category: SPSS software](../category/SpssSoftware.html).
--->

