---
title: Interpretation of an odds ratio
author: Steve Simon
source: http://www.pmean.com/07/InterpretationOddsRatio.html
date: 2007-03-21
categories:
- Blog post
tags:
- Logistic regression
output: html_document
page_update: complete
---

Someone sent me some data on crime. In a sample of 2,957,239 people, 961 were criminals. 41 of the criminals were in the first group (who numbered 20,109). The remaining 920 were in the larger group (2,937,130). This person computed an odds ratio of 6.5 and wondered what it meant. Does this mean that for every criminal in the larger group, there are 6.5 criminals in the smaller group?

I had to explain that that sort of ratio would only occur if the two groups each constituted exactly 50% of the total. What makes more sense here is to estimate the probability of being a criminal in each group. For the small group it is 0.2% (41/20,109) and for the larger group it is 0.03% (920/2,937,130). The ratio of these two probabilities is 6.7 telling you that the probability is almost seven times higher in the small group compared to the large group. Another way of looking at this is that the smaller group represents 0.7% (20,109/2,957,239) of the total, but are responsible for 4.5% (41/920) of the crimes. Their contribution is approximately 6.4 times larger than you would expect.

The math works out nicely in this example because crime is a rare event. If the proportion of crimes in either group was large (say 20% of more) then interpretation of the odds ratio and other related ratios becomes more difficult.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/InterpretationOddsRatio.html
[sim2]: http://www.pmean.com
