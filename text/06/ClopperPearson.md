---
title: An exact confidence interval for a binomial proportion
author: Steve Simon
source: http://www.pmean.com/06/ClopperPearson.html
date: 2006-08-18
categories:
- Blog post
tags:
- Confidence intervals
output: html_document
page_update: partial
---

> A researcher came into my office this morning with some data that was
> strongly negative. Out of 15 patients, none showed a detectable
> improvement after the use of a controversial treatment. That sounds
> like a strong negative result to me, but a reviewer asked a legitimate
> question: How do you know that you are not having problems with a Type
> II error?
>
> I would not have worded it quite that way, but the point is still
> good. Recall that a Type II error is accepting the null hypothesis
> when the null hypothesis is true. A common reason why a Type II error
> occurs is that the sample size was so small that there was
> insufficient power to reject the null hypothesis.
>
> So how do we know that 15 patients is an adequate sample size? It gets
> a bit tricky in this particular problem because there was no control
> group and no formal research hypothesis. In some situations, you might
> want to make a hypothesis about a change score, but for this data set,
> the values both before and after were always below the limit of
> detection, so there is no formal way to quantify the amount of
> improvement or lack thereof.
>
> The way around this problem is to note that the estimated proportion
> of improvements is zero and to place 95% confidence limits around
> these values. A simple approach that works is the [rule of
> three](../size/zeroevents.asp), but a more precise answer is to use
> the Clopper-Pearson method.
>
> -   **The Use of Confidence or Fiducial Limits Illustrated in the Case
>     of the Binomial**. C. J. Clopper, E. S. Pearson. Biometrika, Vol.
>     26, No. 4 (Dec., 1934), pp. 404-413.
>
> As you can see, this approach has been around for quite some time. A
> review of Clopper Pearson approach and some competing formulas for
> confidence intervals appears in
>
> -   **Approximate Is Better than "Exact" for Interval Estimation of
>     Binomial Proportions**. Alan Agresti; Brent A. Coull. The American
>     Statistician, Vol. 52, No. 2. (May, 1998), pp. 119-126.
>
> Neither of these papers is readily available on the web for free.
> Sorry!
