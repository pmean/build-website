---
title: Group Sequential Monitoring of Clinical Trials in R
author: Steve Simon
source: http://www.pmean.com/05/GroupSequential-05.html
date: 2005-12-13
category: Blog post
tags: Early stopping, R software
output: html_document
---
**[StATS]: Group Sequential Monitoring of Clinical
Trials in R (December 13, 2005)**.

It is very expensive to purchase software that performs group sequential
monitoring of clinical trials (sometimes called interim analysis). Group
sequential monitoring is looking at a trial at selected time points
during the study to see if you should stop the study early. There are a
couple of functions in R that will do simple calculations, and the
price, of course, is free.

The [HMisc library created by Frank
Harrell](http://cran.r-project.org/src/contrib/Descriptions/Hmisc.html)
has a function ldBands that uses the Lan-DeMets method with flexible
alpha spending functions.

The [seqmon library created by David A.
Schoenfeld](http://cran.r-project.org/src/contrib/Descriptions/seqmon.html)
has a seqmon function that uses the algorithm by Amitage, McPherson and
Rowe. An example they cite shows boundaries using the O\'Brien Fleming
approach.

I will try to document some of the details of these algorithms and test
them against some well known examples when I have time.

**Further reading:**

-   [Stats: Controversy over stopping a study early (November
    24, 2004)](http://www.childrensmercy.org/stats/weblog2004/EarlyStoppingControversy.html)
-   [Stats: Early stopping in an animal experiment (July
    1, 2004)](http://www.childrensmercy.org/stats/weblog2004/EarlyStoppingAnimal.html)
-   [Stats: Early Stopping Bibliography (July
    1, 2004)](../library/EarlyStopping1.asp)
-   [Stats: Interim analysis](../plan/interim.asp)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Early
stopping](../category/EarlyStopping.html) or [Category: R
software](../category/RSoftware.html).
<!---More--->
software](../category/RSoftware.html).
stopping](../category/EarlyStopping.html) or [Category: R
for pages similar to this one at [Category: Early
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Group Sequential Monitoring of Clinical
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Early
stopping](../category/EarlyStopping.html) or [Category: R
software](../category/RSoftware.html).
--->

