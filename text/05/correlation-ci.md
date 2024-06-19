---
title: Confidence interval for a correlation coefficient
author: Steve Simon
date: 2005-07-11
categories:
- Blog post
tags:
- Confidence intervals
- Sample size justification
output: html_document
page_update: partial
---

In many exploratory research studies, the goal is to examine associations among multiple demographic variables and some outcome variables. How can you justify the sample size for such an exploratory study? There are several approaches, but one simple way that I often use is to show that any correlation coefficients estimated by this research study will have reasonable precision. It may not be the most rigorous way to select a sample size, but it is convenient and easy to understand.

I wrote a [simple spreadsheet][sim3] that will use the Fisher's z transformation to estimate 95% confidence intervals for a correlation.

Stan Brown has a nice description of the Fisher's z transformation at [his website][bro1].

Here's an example of how it might work. In a study of various biomarkers for bone damage, several measures that are considered preliminary or experimental are compared to other more established measures. You might want to examine the correlations among the preliminary and established measures. A sample size of 300 allows you to estimate these correlations with a high level of precision. For example, if the correlation were estimated to be 0.6, the 95% confidence interval from a sample of 300 patients would range from 0.52 to 0.67, which is very precise.

In contrast, a sample of size 30 would offer only a moderate level of precision. If the correlation were estimated to be 0.6, the 95% confidence interval from a sample of 30 patients would range from 0.31 to 0.79. That level of precision might be acceptable if you only wanted to make broad and general statements about the associations among variables and didn't need to narrow the correlation to a precise interval.

A sample size of 10 is clearly inadequate for a study using correlations. If the correlation were estimated to be 0.6, the 95% confidence interval would range from -0.05 to 0.89, an interval that is too wide to be useful. It could not distinguish between a strong correlation (0.8), a weak correlation (0.4), or even a zero correlation. If you only expected to see very strong correlations, it might be okay. For example, if the correlation were 0.9, then the 95% confidence interval from a sample of 10 patients would range from 0.62 to 0.98. In some studies this might be an acceptable level of precision. But how often would you expect to only see correlations of 0.9 and higher?

The nice thing about a spreadsheet is that you can play a lot of "what if" games and explore how changes in the correlation and/or the sample size influence the width of the confidence interval.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/CorrelationCoefficient.html
[sim2]: http://www.pmean.com/original_site.html
[sim3]: http://www.pmean.com/00files/ConfidenceIntervalForCorrelation.xls
[bro1]: http://www.tc3.edu/instruct/sbrown/stat/correl.htm
