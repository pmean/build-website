---
title: Auditing for data entry errors
author: Steve Simon
source: http://www.pmean.com/06/DataEntryErrors.html
date: 2006-06-20
categories:
- Blog post
tags:
- Data management
output: html_document
page_update: partial
---

> There was an interesting query on the
> [MedStats](../category/InterestingWebsites.html#MeStXx) list about the
> appropriate sample size for an audit. This person had entered 1,500
> records and wanted to check a sample of those records for data entry
> errors. There was not enough time to perform double entry or to check
> 100% of the records. So how many records should be checked?
>
> There are some rough rules of thumb that say that you should spend
> about 5% to 10% of your research budget on quality control efforts, so
> that might justify taking 75-150 records and searching for errors.
>
> A more formal approach would be to specify the maximum error rate (P)
> that you are willing to tolerate. Then sample 3/P records. If you find
> any errors, check all of your data. If you find no errors then you are
> 95% confident that the error rate is less than P.<U+FFFD>
>
> So for example, if you are willing to tolerate up to a 2% error rate,
> then sample 3/0.02=150 records. If you notice one or more errors, then
> you may have an unacceptably high error rate and you need to check the
> entire data set.<U+FFFD>
>
> This method is based on the famous "rule of three".
>
> -   [Stats: Rule of three](../size/zeroevents.asp)
>
> The person who posted the original query pointed out that sometimes
> the formulas I describe will lead to a sample size larger than the
> population size. That is indeed true. If the sample size computed by
> this simple formula is more than 10% of the total sample size, you
> should apply the finite population correction factor.
>
> -   [Stats: Population size](../size/population.asp)
>
> It has to applied iteratively. With a sample of 150 patients, you are
> right on the borderline, so applying the fpc will reduce the number of
> files that you have to audit from 150 to 143. If the original sample
> size was 600, then the fpc reduces the audit size to 492.
>
> If the estimated sample size becomes about as large or larger than the
> population size, you might consider a 100% audit. The fpc might reduce
> you to 90% or even 80% of the total sample size, but when the audit
> size becomes this large you might a well audit everybody.
