---
title: Cohen\'s Kappa with small cell sizes
author: Steve Simon
source: http://www.pmean.com/07/SmallCellSizes.html
date: 2007-04-26
category: Blog post
tags: Measuring agreement, Small sample size issues
output: html_document
---
**[StATS]:** **Cohen\'s Kappa with small cell sizes
(April 26, 2007)**

Someone on Edstat-L wrote in asking about using Cohen\' Kappa with a
small sample size in some of the cells. Here\'s an example:

`        N    Y        Total     N    890   1      891     Y      2   2        4      Total  892   3      894`

As a general rule, kappa should not be computed when the distribution is
skewed so heavily towards one category. But another valuable thing to
remember is that a confidence interval is always a good indication about
whether the sample size was adequate. The actual estimate of Kappa is
0.57, but the 95% confidence interval ranges from 0.13 to 1. So this
reminds you that you don\'t have enough data to say whether the
agreement is poor, moderate, excellent, or perfect.

Now 894 is a large sample size, but the failure to get sufficient
numbers of Y responses from either rater is what causes this great level
of uncertainty.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Measuring
agreement](../category/MeasuringAgreement.html) or [Category: Small
sample size issues](../category/SmallSampleSizeIssues.html).
<!---More--->
sample size issues](../category/SmallSampleSizeIssues.html).
agreement](../category/MeasuringAgreement.html) or [Category: Small
for pages similar to this one at [Category: Measuring
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Cohen\'s Kappa with small cell sizes
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Measuring
agreement](../category/MeasuringAgreement.html) or [Category: Small
sample size issues](../category/SmallSampleSizeIssues.html).
--->

