---
title: Group Sequential Monitoring of Clinical Trials in R
author: Steve Simon
date: 2005-12-13
categories:
- Blog post
tags:
- Being updated
- Early stopping
- R software
output: html_document
page_update: partial
---
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
Rowe. An example they cite shows boundaries using the O'Brien Fleming
approach.

I will try to document some of the details of these algorithms and test
them against some well known examples when I have time.

**Further reading:**

- [Stats: Controversy over stopping a study early (November
24, 2004)](http://www.pmean.com/weblog2004/EarlyStoppingControversy.html)
- [Stats: Early stopping in an animal experiment (July
1, 2004)](http://www.pmean.com/weblog2004/EarlyStoppingAnimal.html)
- [Stats: Early Stopping Bibliography (July
1, 2004)](../library/EarlyStopping1.asp)
- [Stats: Interim analysis](../plan/interim.asp)

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/GroupSequential.html
[sim2]: http://www.pmean.com/original_site.html
