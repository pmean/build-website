---
title: Converting an odds ratio to a relative risk
author: Steve Simon
date: 2005-08-03
categories:
- Blog post
tags:
- Measuring benefit and risk
output: html_document
---
The odds ratio and the relative risk do not always agree, especially
when the baseline risk level in the control group is large. I have a
simple Excel spreadsheet that will calculate the relative risk from the
odds ratio and the control risk.

-   [ConvertORtoRR.xls](../weblog/images/ConvertORtoRR.xls)

It is based on a simple formula in the publication

-   **What's the relative risk? A method of correcting the odds ratio
    in cohort studies of common outcomes.** Zhang J, Yu KF. Jama 1998:
    280(19); 1690-1.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9832001&dopt=Abstract)

Someone asked me to derive a nomogram that does this conversion. I'm
not sure if I can, but I will work on it.

I also have a spreadsheet that will compute the confidence interval for
a rate ratio. If you let the Time at Risk be the number of patients at
risk, then this becomes a confidence interval for the relative risk.

-   [CIforRateRatio.xls](../00files/ConfidenceIntervalForRateRatio.xls)

Finally, I have a spreadsheet that will calculate the confidence
interval for an odds ratio.

-   [CIforOddsRatio.xls](../00files/ConfidenceIntervalForOddsRatio.xls)

None of these formulas are all that fancy. They rely on large sample
approximations, so be careful in using them with small sample sizes.
When I get a chance, I will integrate these last two spreadsheets with
my page

-   [Stats: Confidence intervals](../04/confidence.html)

I also want to work on a few simple spreadsheets that will calculate
confidence intervals for one and two group experiments where the outcome
variable is a Poisson count. There are several very clever approaches
that rely on the relationship between the Poisson and Binomial
distributions and between the Poisson distribution and the F
distribution.

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/ConvertOddsRatio.html
[sim2]: http://www.pmean.com/original_site.html
