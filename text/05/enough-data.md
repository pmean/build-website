---
title: Do I have enough data after 24 months of time?
author: Steve Simon
date: 2005-04-05
categories:
- Blog post
tags:
- Being updated
- Clinical importance
- Early stopping
output: html_document
page_update: partial
---
Someone asked me about a correlation coefficient that he computed on a
data set that represented 24 months of data collection. A particular
correlation of interest (a correlation between staff turnover and
resident falls) was not significantly different from zero, but this
person wanted to know how much more data to collect before safely
concluding that no relation has been or likely will be established.

First compute a confidence interval for the correlation coefficient. If
that interval is so narrow that you can rule out the possibility of a
clinically important shift, then your sample size is large enough. How
large a correlation is clinically significant? That's very hard to say.
The correlation is a unitless quantity, and usually you need some
measure in physical units (meters, kilograms, etc.) before you can talk
about clinical importance.

You might want to look instead at the regression coefficient which does
have units of measure in it. I assume that turnover is your independent
variable and falls is your dependent variable. Think, then, about how
much of an increase in falls per unit change in turnover is important
from a clinical perspective. If that value is (I'm just making up a
number) 0.5, then your sample size is adequate as long as the confidence
interval for the slope is entirely inside plus/minus 0.5.

Please realize that an outsider like me can't tell you what's
clinically important, because that requires clinical judgment, something
I lack. A good general overview about clinical importance is on my web
pages at

\--\> [Stats: Confidence intervals](../04/confidence.html)

If this is an ongoing project, perhaps you might also find some value to
using a control chart. A control chart allows for continuous monitoring
of important processes. Who knows, maybe something that is not apparent
now will become apparent because of some of the recent changes in health
care? I have a brief outline of control charts at

\--\> [Stats: Guidelines for quality control models](../99/quality.html)

Another issue is that it is dangerous to look at 12 months worth of
data, then 13, then 14, etc. because you are testing multiple times on a
single hypothesis. It's sort of like being dealt three poker hands and
choosing which one you like best. It would be better to select a sample
size (time interval) prior to data collection and then test only once.
If you do test multiple times, you need to adjust your alpha level. See

\--\> [Stats: Interim analysis](../99/interim.html) and

\--\> [Stats: Early stopping in an animal study (July 1,
2004)](../04/EarlyStoppingAnimal.asp)

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/EnoughData.html
[sim2]: http://www.pmean.com/original_site.html
