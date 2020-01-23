---
title: Tests of hypothesis and confidence intervals involving a correlation coefficient
author: Steve Simon
source: http://www.pmean.com/07/CorrelationCoefficient-07.html
date: 2007-01-18
category: Blog post
tags: Linear regression
output: html_document
---
**[StATS]:** **Tests of hypothesis and confidence
intervals involving a correlation coefficient (January 18, 2007)**

> Suppose you compute a correlation coefficient from a sample of
> patients. Can you test a hypothesis about this correlation? Can you
> place confidence limits around this correlation? Yes, you can, but
> there are a wide array of approaches that you could use.
>
> If you are testing the hypothesis that the correlation is equal to
> zero, you can compute a test statistic.
>
> ![](../weblog/images/corr01.gif){width="108" height="58"}
>
> You would compare this test statistic with a t distribution with n-2
> degrees of freedom. Someone asked me for a table of critical values
> for r. When the observed correlation is larger than the critical
> value, you would reject the null hypothesis. You can get the formula
> for the critical value:
>
> ![](../weblog/images/corr02.gif){width="256" height="65"}
>
> through simple algebra. I programmed a spreadsheet
>
> -   [CriticalValuesForCorrelationTest.xls](../00files/CriticalValuesForCorrelationTest.xls)
>
> to perform these calculations.
>
> If you want to compute a confidence interval for the correlation
> coefficient, you can\'t necessarily assume that the population
> correlation is equal to zero. Instead, you use the Fisher\'s Z
> transformation. I\'ll write up some details about this transformation
> and work up some examples soon.

[![Creative Commons
License](http://i.creativecommons.org/l/by/3.0/us/80x15.png)](http://creativecommons.org/licenses/by/3.0/us/)
This work is licensed under a [Creative Commons Attribution 3.0 United
States License](http://creativecommons.org/licenses/by/3.0/us/). It was
written by Steve Simon.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Linear
regression](../category/LinearRegression.html).
<!---More--->
regression](../category/LinearRegression.html).
for pages similar to this one at [Category: Linear
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Tests of hypothesis and confidence
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Linear
regression](../category/LinearRegression.html).
--->

