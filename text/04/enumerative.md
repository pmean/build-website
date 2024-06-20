---
title: Enumerative and Analytic Studies
author: Steve Simon
date: 2004-02-05
categories:
- Blog post
tags:
- Descriptive statistics
- Research design
output: html_document
page_update: partial
---
> I received a question today via email about what statistics you can
> use when your sample equals the entire population. This issue also
> comes up when people ask about the use of the finite population
> correction factor. Both topics are controversial, and there is no
> clear consensus on what to do. I touched on this issue briefly in my
> [discussion about population sizes](../size/population.asp) (why does
> sample of 100 people from a population of 10 thousand have roughly the
> same precision as a sample of the same size from a population of 10
> million people?).
>
> The issue boils down to the following question: are you interested in
> this population without any desire to extrapolate to different
> populations. In particular, are you uninterested in how your results
> might apply to people in a different location? Are you interested only
> in the current process being studied and uninterested in future output
> from this process?
>
> If there is no interest in different locations or in the future
> values, then you have an **enumerative study**. With an enumerative
> study, a sample that includes the entire population has no sampling
> error. Tests of hypothesis and confidence intervals are meaningless in
> this situation.
>
> If there is some effort to extrapolate, however, then you have an
> **analytic study**. With an analytic study, the sample could be
> considered to be a smaller part of conceptual population. This
> population might be all data at your particular location and at
> locations that are similar to yours. Or it might be all data past,
> present, and future from a process. Here you would want to use
> confidence intervals and hypothesis tests, but you have to provide
> some assurance that there is similarity to other locations or
> stability in the process across time.
>
> Think about what actions you will take on the basis of your study.
>
> -   If your actions will only be on the population of interest, then
>     you have an enumerative study.
> -   If your actions will extend beyond the population you are
>     studying, then you have an analytic study.
>
> Consider two conceptual samples taken of the entire populations at
> Children's Mercy Hospital. The first sample is all of the billing
> records for 2001 through 2003. We have some evidence of overbilling,
> and we want to estimate the overbilling in order to repay the
> insurance companies. We don't care about bills prior to 2001 (statute
> of limitations) or beyond 2003 (because we have corrected the billing
> process to prevent further overbilling). We are also not interested in
> overbilling at similar children's hospitals (let them pay their own
> bills). This is an enumerative study.
>
> The second sample is an observation of the hand washing practices of
> all physicians at the hospital during the month of December 2003. Here
> we do care about future handwashing of these physicians and our
> findings might apply to other children's hospitals as well. This is
> an analytic study.
>
> Walter Shewhart and W. Edwards Deming developed the concept of
> Enumerative and Analytic studies and they argue that statistical
> process control tools are the best way to handle analytic studies.
> Some resources are May 2001 presentation by Lloyd Provost, [Use of
> experimental Design in Analytic
> Studies](http://www.sematech.org/resources/stats/symposia/qp2001/invited/provost.pdf),
> and a September 1997 presentation by Anthony Cutler, [Deming's Vision
> Applied to Probabilistic Risk
> Analysis](http://www.sigma-engineering.co.uk/praqual.shtml) and a web
> page by Jonathan Siegel on the [Shewhart-Deming Critique of Classical
> Statistics](http://deming.eng.clemson.edu/pub/den/deming_siegel1.htm).

You can find an [earlier version](http://www.pmean.com/04/enumerative.html) of this page on my [original website](http://www.pmean.com/original_site.html).
