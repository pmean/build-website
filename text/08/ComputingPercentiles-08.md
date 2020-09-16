---
title: Multiple methods for computing percentiles
author: Steve Simon
source: http://www.pmean.com/08/ComputingPercentiles-08.html
date: 2008-02-13
category: Blog post
tags: Descriptive statistics
output: html_document
---
**[StATS]:** **Multiple methods for computing
percentiles (February 13, 2008)**.

> A recent discussion on the [Medstats
> group](../category/InterestingWebsites.html#MeStXx) highlighted some
> of the confusion about computing percentiles. I use a simple formula.
> If you want the pth percentile of a set of n observations, select the
> p(n+1) value from the data. If p(n+1) is not a whole number then
> choose a value halfway between the two adjacent values.
>
> Suppose for example, you have 8 observations and you want to compute
> the 25th percentile. The value of p(n+1) = 0.25(9) = 2.25. According
> to this method, you would select a value halfway between the second
> and third observation. If these values are 10 and 14, then percentile
> would be 12.
>
> But there are some who argue that you should interpolate. This means
> that you choose a value a quarter of the way between the second and
> third observations. This would make the percentile 11 rather than 12.
>
> When p(n+1) is not an integer, some suggest rounding the value down
> and choosing that value. In this particular case, the percentile would
> be the second observation (10).
>
> Some people don\'t add 1 before multiplying by p or add a smaller
> constant like 1/2 or 3/8. There are at least eight different methods
> that are commonly practiced.
>
> There is little practical difference between these methods, and no
> strong theoretical reason to prefer any particular formula. It only
> serves as a source of confusion when one statistical program chooses a
> slightly different percentile than another program.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Descriptive
statistics](../category/DescriptiveStatistics.html).
<!---More--->
statistics](../category/DescriptiveStatistics.html).
for pages similar to this one at [Category: Descriptive
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Multiple methods for computing
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Descriptive
statistics](../category/DescriptiveStatistics.html).
--->

