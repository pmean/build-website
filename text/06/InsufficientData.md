---
title: Excluding zip codes with insufficient data
author: Steve Simon
source: http://www.pmean.com/06/InsufficientData.html
date: 2006-01-19
categories:
- Blog post
tags:
- Descriptive statistics
output: html_document
---
**[StATS]:** **Excluding zip codes with insufficient
data (January 19, 2006)**

> Someone asked about a study evaluating rates of children with tooth
> decay according to the zip code they live in. Some zip codes might
> have hundreds of children evaluated, and others may have only a
> handful. The question was how to determine when a zip code had so few
> evaluated children that it would make more sense not to report a rate
> at all, but instead label that zip code as having insufficient data.
>
> There's no right or wrong answer here, and it may be worthwhile to
> experiment a bit.
>
> You could use the width of the confidence interval as a guide and set
> a criteria like the following: we will not report data on any zip code
> where the width of the confidence interval was greater than plus/minus
> 20%. That will translate roughly into a sample size cutoff, though it
> may take a bit of work to figure out exactly what sample size will
> guarantee that all of your remaining confidence intervals will be
> narrower than plus/minus 20%. Since the rates also vary, you might
> find that for two zip codes with the same size, one would have a width
> slightly greater than plus/minus 20% and the other would be slightly
> narrower than plus/minus 20%. You should be able to use a bit of trial
> and error and find something that works reasonably well, or you can
> estimate the overall rate across all zip codes and find a sample size
> that would produce a width of plus/minus 20% when the rate was exactly
> equal to the overall rate.

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Descriptive
statistics](../category/DescriptiveStatistics.html).
<!---More--->
statistics](../category/DescriptiveStatistics.html).
for pages similar to this one at [Category: Descriptive
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]:** **Excluding zip codes with insufficient
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Descriptive
statistics](../category/DescriptiveStatistics.html).
--->

