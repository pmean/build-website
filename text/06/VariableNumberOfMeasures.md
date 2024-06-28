---
title: The complexities of having a variable number of measures per patient
author: Steve Simon
source: http://www.pmean.com/06/VariableNumberOfMeasures.html
date: 2006-11-16
categories:
- Blog post
tags:
- Multilevel models
output: html_document
page_update: partial
---

> A series of messages on the
> [MedStats](../category/InterestingWebsites.html#MeStXx) email
> discussion group emphasized the difficulty in analyzing data where
> subjects contribute a variable number of measurements to the data set.
> If there is a relationship between the prognosis and the frequency of
> measurement, then you might produce some serious biases. For example,
> sicker patients might visit their doctors more often than healthy
> patients and contribute a greater fraction of data to the overall
> estimate. You can adjust for this sort of thing, but it is tricky.
>
> In response to the discussion, I offered an example. A study of
> menstrual cycle length asked women to record information over a 60 day
> period. Some women recorded a single full menstrual cycle and some
> reported two full menstrual cycles. If you tried to compute average
> cycle length on the total data set, you would get a seriously biased
> result, because women with a long cycle would never be able to report
> more than a single cycle, while most women with normal and short
> cycles were able to report two values.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/VariableNumberOfMeasures.html
[sim2]: http://www.pmean.com
