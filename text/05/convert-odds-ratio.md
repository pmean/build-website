---
title: Converting an odds ratio to a relative risk
author: Steve Simon
date: 2005-08-03
categories:
- Blog post
tags:
- Being updated
- Measuring benefit and risk
output: html_document
page_update: partial
---

The odds ratio and the relative risk do not always agree, especially when the baseline risk level in the control group is large. I have a simple Excel spreadsheet that will calculate the relative risk from the odds ratio and the control risk.

- [ConvertORtoRR.xls][sim3].

It is based on a simple formula in the publication

- Zhang J, Yu KF. What's the relative risk? A method of correcting the odds ratio in cohort studies of common outcomes. Jama 1998: 280(19); 1690-1. Available in [html format][zha1].

Someone asked me to derive a nomogram that does this conversion. I'm not sure if I can, but I will work on it.

I also have a spreadsheet that will compute the confidence interval for a rate ratio. If you let the Time at Risk be the number of patients at risk, then this becomes a confidence interval for the relative risk.

- [CIforRateRatio.xls][sim3].

Finally, I have a spreadsheet that will calculate the confidence interval for an odds ratio.

- [CIforOddsRatio.xls][sim5].

None of these formulas are all that fancy. They rely on large sample approximations, so be careful in using them with small sample sizes. Links to these and other spreadsheets are available on

- [Stats: Confidence intervals][sim6]

I also want to work on a few simple spreadsheets that will calculate confidence intervals for one and two group experiments where the outcome variable is a Poisson count. There are several very clever approaches that rely on the relationship between the Poisson and Binomial distributions and between the Poisson distribution and the F distribution.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/ConvertOddsRatio.html
[sim2]: http://www.pmean.com/original_site.html
[sim3]: http://www.pmean.com/weblog/images/ConvertORtoRR.xls
[sim4]: http://www.pmean.com/00files/ConfidenceIntervalForRateRatio.xls
[sim5]: http://www.pmean.com/00files/ConfidenceIntervalForOddsRatio.xls)
[sim6]: http://www.pmean.com/04/confidence.html)
[zha1]: https://jamanetwork.com/journals/jama/fullarticle/188182
