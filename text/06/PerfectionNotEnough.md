---
title: Perfect isn\'t quite good enough
author: Steve Simon
source: http://www.pmean.com/06/PerfectionNotEnough.html
date: 2006-12-12
categories:
- Blog post
tags:
- Small sample size issues
output: html_document
---
**[StATS]:** **Perfect isn\'t quite good enough
(December 12, 2006)**

Someone wanted me to double check their calculations for Fisher\'s Exact
test. If the control group, 3 out of 10 patients experienced an
unfortunate outcome. In the treatment group none did (out of 6). You
would think that a perfect result in the treatment group would be
compelling, but the one-sided p-value for Fisher\'s Exact test is 0.21.

That calculation is a bit disappointing, but perhaps not too surprising.
The rule of three states that when you observe zero events in a sample
of n patients, then 3/n is an approximate upper 95% confidence interval.
So with 0/6, that upper limit would be 3/6 or 50% which is well above
the control rate of 30%.<U+FFFD> So perfection just isn\'t good enough when you
have such small sample sizes.

**Related web pages**:

-   [Stats: Fisher\'s Exact Test](../ask/fishers.asp)
-   [Stats: Rule of three](../size/zeroevents.asp)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Small sample size
issues](../category/SmallSampleSizeIssues.html).
<!---More--->
issues](../category/SmallSampleSizeIssues.html).
for pages similar to this one at [Category: Small sample size
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Perfect isn\'t quite good enough
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Small sample size
issues](../category/SmallSampleSizeIssues.html).
--->

