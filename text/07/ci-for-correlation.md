---
title: Tests of hypothesis and confidence intervals involving a correlation coefficient
author: Steve Simon
source: http://www.pmean.com/07/CorrelationCoefficient.html
date: 2007-01-18
categories:
- Blog post
tags:
- Linear regression
output: html_document
page_update: complete
---

Suppose you compute a correlation coefficient from a sample of patients. Can you test a hypothesis about this correlation? Can you place confidence limits around this correlation? Yes, you can, but there are a wide array of approaches that you could use.

<!---More--->

If you are testing the hypothesis that the correlation is equal to zero, you can compute a test statistic.

![](http://www.pmean.com/new-images/07/CorrelationCoefficient01.gif)

You would compare this test statistic with a t distribution with n-2 degrees of freedom. Someone asked me for a table of critical values for r. When the observed correlation is larger than the critical value, you would reject the null hypothesis. You can get the formula for the critical value:

![](http://www.pmean.com/new-images/07/CorrelationCoefficient02.gif)

through simple algebra. I programmed a [spreadsheet][sim3] to perform these calculations.

If you want to compute a confidence interval for the correlation coefficient, you can't necessarily assume that the population correlation is equal to zero. Instead, you use the Fisher's Z transformation. I'll write up some details about this transformation and work up some examples soon.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/CorrelationCoefficient.html
[sim2]: http://www.pmean.com

[sim3]: http://www.pmean.com/00files/CriticalValuesForCorrelationTest.xls
