---
title: Why does a Bayesian approach make sense for monitoring accrual?
author: Steve Simon
date: 2008-05-08
categories:
- Blog post
tags:
- Being updated
- Bayesian statistics
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

I'm working with Byron Gajewski to develop some models for monitoring the progress of clinical trials. Too many researchers overpromise and underdeliver on the planned sample size and the planned completion date of their research. This leads to serious delays in the research and inadequate precision and power when the research is completed. We want to develop some tools that will let researchers plan the pattern of patient accrual in their studies. These tools will also let the researchers carefully monitor the progress of their studies and let them take action quickly if accrual rates are suffering.

<!---More--->

We've adopted a Bayesian approach for these tools. While a Bayesian approach to Statistics is controversial, we feel that there should be no controversy with regard to using a Bayesian approach to model accrual.

There are lots of humorous quips about Bayesian statistics. One of my favorites is from Stephen Senn.

+ "*Bayesian: One who, vaguely expecting a horse and catching a glimpse of a donkey, strongly concludes that he has seen a mule.*" **Statistical Issues in Drug Development, 2nd edition**, Senn SJ (2007) page 46.

This quip alludes to the classic lay description of Bayesian Statistics. The Bayesian asks a researcher to summarize their state of belief about a statistical model prior to the collection of data. This produces probability distributions (prior distributions) for various parameters in the statistical model. After the data is collected, the Bayesian statistician will combine that data with the prior distribution to produce a posterior distribution and calculate expected values of the posterior distribution (along with other quantities from the posterior distribution) to draw conclusions from the data. Frequently, the expected values from the posterior distribution represent a weighted average of the data and of the prior beliefs. If the prior beliefs are strong relative to the data, more weight is placed on the prior distribution. If the sample size of the data is large relative to the degree of certainty provided by the prior distribution, then more weight is placed on the data.

There is a belief among some critics of Bayesian Statistics that the prior distribution allows subjective beliefs to be incorporated into an otherwise objective analysis. A true scientist should be disinterested in the results of the research so as to maintain the credibility of the research findings. There are several counterarguments to this criticism, of course, and others can make these counter-arguments better than I can.

From the perspective of accrual, however, there should be no debate. A researcher would never undertake a clinical trial unless he/she had a least an inkling of how quickly patients would volunteer for the trial. Soliciting such beliefs does no harm to the supposed objectivity of the final data analysis. In fact, you can use a Bayesian model for accrual for a clinical trial where all of the proposed data summaries are classical non-Bayesian.

The big advantage to specifying a prior distribution is that when a researcher has extensive experience in given research arena and provides appropriately precise prior distributions, that will prevent the researcher from overreacting to a bit of early bad news about accrual. In contrast when a researcher provides only a vague prior distribution about accrual patterns, early evidence of problems is given greater weight, allowing for rapid interventions to correct the slow accrual.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/WhyBayesian.html
[sim2]: http://www.pmean.com/original_site.html

Also see [this page][sim3].

[sim3]: http://www.pmean.com/08a/WhyBayesian.html