---
title: When does heterogeneity become a concern?
author: Steve Simon
source: http://www.pmean.com/08/HeterogeneityInAnova-08.html
date: 2008-06-05
category: Blog post
tags: Analysis of variance
output: html_document
---
**[StATS]: When does heterogeneity become a concern?
(created 2008-06-05)**.

*Dear Professor Mean, I have an ANOVA model and I am worried about
heterogeneity\--unequal standard deviations in each group. How should I
check for this?*

There\'s no perfect answer to a question like this and certainly no
consensus in the research community on how to handle heterogeneity.
There is no magic formula and not very much empirical data on this
question. As a general rule a lack of research consensus is good news in
that it allows you more latitude to analyze the data you see best. Just
be ready to apply the opposite approach when a peer-reviewer insists
that his/her way is the only way to handle this problem.

Here are some general guideline that I use.

First, avoid formal significance tests like Levene\'s test. There are a
wide range of reasons why significance tests should be avoided for
checking some of the underlying assumptions in a model. They tend to
have too much power and detect trivial deviations from the assumptions
when the sample size is large and tend to have too little power and miss
critical deviations when the sample size is small. Also when you choose
between one test statistic and another on the basis of a statistical
test can sometimes destroy nice properties of you hypothesis testing
framework.

I prefer to use a criteria based on the magnitude of the degree of
heterogeneity, rather than the statistical significance for
heterogeneity. Look at the ratio of standard deviations in each group.
Do any differ by more than a factor of 2 or 3? Only then do I start to
worry about heterogeneity.

Is there a \"dose response\" pattern to the standard deviations? A
common one is that the larger standard deviations are associated with
the groups with the larger means and the smaller standard deviations are
associated with the groups with the smaller means. That makes me sit up
and take notice more than if the group with the largest standard
deviation is not one with an extremely large (or small) mean.

Is there a theoretical or empirical basis for heterogeneity? A theoretic
basis might occur, for example, if you are comparing two ethnic groups,
for example, and one is known to be tightly knit with highly similar
dietary and behavioral patterns. There may be an empirical basis for
heterogeneity because previous studies using your outcome measure showed
evidence of unequal variation across groups. With theoretical or
empirical support for heterogeneity, you should be more open to this
possibility with your data, possibly to the point of pre-specifying an
analysis model that incorporates unequal variation across groups.

Is there imbalanced data? Heterogeneity is more of a concern if the
sample sizes are not the same in each group. The combination of
imbalance and heterogeneity can distort the Type I error probability in
your model. With balanced data (same or nearly the same sample size in
each group), there is less need to worry about heterogeneity because it
is unlikely to have a major impact.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Analysis of
variance](../category/AnalysisOfVariance.html).
<!---More--->
variance](../category/AnalysisOfVariance.html).
for pages similar to this one at [Category: Analysis of
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: When does heterogeneity become a concern?
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Analysis of
variance](../category/AnalysisOfVariance.html).
--->

