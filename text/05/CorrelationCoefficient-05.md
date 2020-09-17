---
title: Confidence interval for a correlation coefficient
author: Steve Simon
source: http://www.pmean.com/05/CorrelationCoefficient-05.html
date: 2005-07-11
category: Blog post
tags: Confidence intervals, Sample size justification
output: html_document
---
**[StATS]: Confidence interval for a correlation
coefficient (created 2005-07-11)**.

In many exploratory research studies, the goal is to examine
associations among multiple demographic variables and some outcome
variables. How can you justify the sample size for such an exploratory
study? There are several approaches, but one simple way that I often use
is to show that any correlation coefficients estimated by this research
study will have reasonable precision. It may not be the most rigorous
way to select a sample size, but it is convenient and easy to
understand.

I wrote a [simple
spreadsheet](../00files/ConfidenceIntervalForCorrelation.xls) that will
use the Fisher\'s z transformation to estimate 95% confidence intervals
for a correlation.

Stan Brown has a nice description of the Fisher\'s z transformation at

-   [www.tc3.edu/instruct/sbrown/stat/correl.htm](http://www.tc3.edu/instruct/sbrown/stat/correl.htm)

Here\'s an example of how it might work. In a study of various
biomarkers for bone damage, several measures that are considered
preliminary or experimental are compared to other more established
measures. You might want to examine the correlations among the
preliminary and established measures. A sample size of 300 allows you to
estimate these correlations with a high level of precision. For example,
if the correlation were estimated to be 0.6, the 95% confidence interval
from a sample of 300 patients would range from 0.52 to 0.67, which is
very precise.

In contrast, a sample of size 30 would offer only a moderate level of
precision. If the correlation were estimated to be 0.6, the 95%
confidence interval from a sample of 30 patients would range from 0.31
to 0.79. That level of precision might be acceptable if you only wanted
to make broad and general statements about the associations among
variables and didn\'t need to narrow the correlation to a precise
interval.

A sample size of 10 is clearly inadequate for a study using
correlations. If the correlation were estimated to be 0.6, the 95%
confidence interval would range from -0.05 to 0.89, an interval that is
too wide to be useful. It could not distinguish between a strong
correlation (0.8), a weak correlation (0.4), or even a zero correlation.
If you only expected to see very strong correlations, it might be okay.
For example, if the correlation were 0.9, then the 95% confidence
interval from a sample of 10 patients would range from 0.62 to 0.98. In
some studies this might be an acceptable level of precision. But how
often would you expect to only see correlations of 0.9 and higher?

The nice thing about a spreadsheet is that you can play a lot of \"what
if\" games and explore how changes in the correlation and/or the sample
size influence the width of the confidence interval.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Confidence
intervals](../category/ConfidenceIntervals.html) or [Category: Sample
size justification](../category/SampleSizeJustification.html).
<!---More--->
size justification](../category/SampleSizeJustification.html).
intervals](../category/ConfidenceIntervals.html) or [Category: Sample
for pages similar to this one at [Category: Confidence
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Confidence interval for a correlation
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Confidence
intervals](../category/ConfidenceIntervals.html) or [Category: Sample
size justification](../category/SampleSizeJustification.html).
--->

