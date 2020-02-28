---
title: Sigma in the control chart.
author: Steve Simon
source: http://www.pmean.com/00/sigma.html
date: 2000-01-27
category: Blog post
tags: Control charts
output: html_document
---
****[StATS]:** Sigma in the control chart. (January 27, 2000)**

*Dear Professor Mean, I ran a control chart in SPSS for individual
values, and the control limits don\'t correspond with what I would
expect from the descriptive procedure that I ran first. In particular,
the value of sigma in the control chart appears to be an approximation
of what I computed earlier. Why would SPSS use a different calculation
for sigma?*

The use of the word \"sigma\" in quality control circles is different
than how it is used in other circles. So the sigma limits that you get
in your control chart are different than what you would get in any other
descriptive statistics procedure. In particular, sigma represents
neither the sample standard deviation, nor the standard error of the
mean.

The reason the sigma in a control chart differs from any of the numbers
you might get in a descriptive summary is that:

1\. In a control chart, sigma represents short term variation only. If
sigma included long term variation, then it would be too big. It would
include things like a slow drift or trend that would inflate the limits
and make the control chart useless.

2\. In a control chart, sigma is corrected for bias. The correction
factor is more complicated than the \"n-1\" factor which makes the
variance (but not the standard deviation) unbiased.

3\. In this particular control chart, the moving range is used to
approximate sigma. The moving range is not used either directly or
indirectly in other descriptive summaries. Keep in mind also that a
moving range is only meaningful if there is a natural time sequence to
your data (as would have to be the case for a control chart). Many of
the data sets that might be summarized in a descriptive procedure would
not have a natural time sequence.

**Further reading**

Donald Wheeler has authored or co-authored three excellent books that
explain this material far better than I can.

1.  **Understanding Variation. The Key to Managing Chaos.\
    **Wheeler DJ.\
    Knoxvile TN: SPC Press, Inc (1993).\
    ISBN: 0-945320-35-3.
2.  **Understanding Statistical Process Control, Second Edition\
    **Wheeler DJ, Chambers DS.\
    Knoxville TN: SPC Press, Inc (1992).\
    ISBN: 0-945320-13-2.
3.  **Advanced Topics in Statistical Process Control. The Power of
    Shewhart\'s Charts\
    **Wheeler DJ.\
    Knoxville TN: SPC Press Inc (1995).\
    ISBN: 0-945320-45-0.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at [Category: Control charts](../category/ControlCharts.asp).
<!---More--->
this one at [Category: Control charts](../category/ControlCharts.asp).
with general help resources. You can also browse for pages similar to
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
****[StATS]:** Sigma in the control chart. (January 27, 2000)**
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at [Category: Control charts](../category/ControlCharts.asp).
--->

