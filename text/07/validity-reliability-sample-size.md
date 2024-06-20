---
title: What is an adequate sample size for establishing validity and reliability?
author: Steve Simon
source: http://www.pmean.com/07/ValidityReliabilitySampleSize.html
date: 2007-04-09
categories:
- Blog post
tags:
- Measuring agreement
- Sample size justification
output: html_document
page_update: partial
---

Someone from Mumbai, India wrote in asking whether a sample of 163 was sufficiently large for a study of reliability and validity. This was for a project that was already done, and this person was worried that someone would complain that 163 is too small.

To demonstrate whether a sample size is adequate after the sample has already been collected, you need only to produce confidence intervals for your statistical estimates. There are a large number of reliability and validity analyses at your disposal, but many of these involve the computation of a correlation coefficient of one type or another. If your confidence interval for those correlation coefficients is reasonably narrow, then your sample size is adequate. If it is so wide that you cannot make any definitive conclusions, then your sample size is inadequate.

If, for example, you have a confidence interval for a correlation that ranges from 0.2 to 0.9, that interval is so wide as to be meaningless. You can eliminate the possibility of a zero correlation, of course, but the goal of most reliability and validity studies is to establish a strong correlation. Here you have so little data that you can not distinguish between a very weak correlation 0.2, a moderately strong correlation (0.5) or a very impressive correlation (0.9). Without the actual data, I cannot compute any confidence intervals, but with 163 patients, I suspect that they are more than narrow enough to establish an adequate sample size.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/ValidityReliabilitySampleSize.html
[sim2]: http://www.pmean.com
