---
title: Optimization using the MM algorithm
author: Steve Simon
source: http://www.pmean.com/05/MMalgorithm.html
date: 2005-02-14
category: Blog post
tags: Statistical computing
output: html_document
---
**[StATS]: Optimization using the MM algorithm
(February 14, 2005)**

A comment on EDSTAT-L reminded me about this important issue. Many
problems in Statistics involve finding an optimal point of a rather
complex and messy function. In some situations, the optimal point is the
largest value for this function and in other situation, the optimal
point is the smallest value. The simplest and best known example of this
is regression. This approach tries to estimate a line (or sometimes a
more complex curve) that is \"close\" to most of the data. The approach,
least squares, tries to minimize the sum of squared deviations between
the line and the data. Even simple problems such as estimating a median
can be recast in terms of minimizing distance.

Optimization using a computer is a rather difficult and complex process
because an approach that works well for one set of problems may perform
poorly for another set. A nice tutorial on the state of the art for
optimization is:

-   **A Tutorial on MM Algorithms.** Hunter DR, Lange K. The American
    Statistician 2004: 54(1); 30-37.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Statistical
computing](../category/StatisticalComputing.html).
<!---More--->
computing](../category/StatisticalComputing.html).
for pages similar to this one at [Category: Statistical
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Optimization using the MM algorithm
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Statistical
computing](../category/StatisticalComputing.html).
--->

