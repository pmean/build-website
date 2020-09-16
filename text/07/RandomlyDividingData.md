---
title: Randomly dividing a dataset in R
author: Steve Simon
source: http://www.pmean.com/07/RandomlyDividingData.html
date: 2007-03-16
category: Blog post
tags: R software
output: html_document
---
**[StATS]:** **Randomly dividing a dataset in R
(March 16, 2007)**

I\'m working with someone who wants to do a simple cross-validation of a
statistcal procedure. One simple way to do this is to randomly divide a
data set into two piece. Assume that you have a matrix or data frame (x)
that has n rows and you want to split the data set into a group that has
proportion p of the rows and a group that has the remaining proportion
(1-p). You want to do this randomly. Here is the code in R to do this.

`m <- trunc(n*p)   a <- sample(1:n,m)   b <- x[a,]   c <- x[-a,]`

The sample function randomly selects m values from the vector 1:n. The
use of the negative sign in the last line tells R that you wish to
select all the rows EXCEPT the rows listed in a. The matrices (or data
frames) b and c represent a random split of the data in x.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: R
software](../category/RSoftware.html).
<!---More--->
software](../category/RSoftware.html).
for pages similar to this one at [Category: R
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Randomly dividing a dataset in R
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: R
software](../category/RSoftware.html).
--->

