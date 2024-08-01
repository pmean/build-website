---
title: Case study of accrual in a clinical trial
author: Steve Simon
source: http://www.pmean.com/07/CaseStudyOfAccrual.html
date: 2007-09-11
categories:
- Blog post
tags:
- Accrual problems
output: html_document
page_update: complete
---

Someone came by today with a project where he wants to monitor the accrual in a clinical trial. The trial started on August 28, 2007 and will continue until January 31, 2008, for a total of 22 weeks. He thinks that he might be able to get 3 patients per week over a 22 week trial (66 total), but he is very confident that he would get at least 2 patients per week (44 total). After three weeks, he has only a single patient, but September is a slow month. I asked him how confident he was on a scale of 1-10 in the possibility of getting 3 patients per week. He told me "5" without much hesitation.

<!---More--->

What does a "5" really mean? Here's a graph that shows the prior distribution of sample sizes, assuming that the study has to end after 22 weeks.

![](http://www.pmean.com/new-images/07/CaseStudyOfAccrual01.gif)

The white line represents the median accrual pattern (65 patients at the end of the study) and the gray region extends up and down to the 2.5 and 97.5 percentiles (41 and 96 patients, respectively). The red line represents a simple linear projection of 3 subjects per week and the blue line represents a more conservative linear projection of 2 subjects per week. According to this simulation, there is a 48% probability that the study will recruit 66 or more patients and a 96% probability that it will recruit at least 44 patients.

Another way of looking at this is that the coefficient of variation of the projected sample sizes is 21%. This means that a 21% or greater shortfall in sample size would occur with 16% probability and a 38% shortfall (1-0.79^2) would occur with only 2.5% probability.

The researcher was fairly happy with these estimates and felt they were consistent with his expectations. If these numbers were unrealistically overprecise or underprecise, we could have adjusted the "5" to a smaller or larger value.

The trial started on August 28 with one patient recruited on the very first day. No patients, however, have been recruited since then. September is a slow month, according to the researcher. Although we could modify the accrual model to allow for slow periods, I wanted to simply project the results without such adjustments. If there is a catch-up in accrual in late September and early October, the model should fit just fine.

![](http://www.pmean.com/new-images/07/CaseStudyOfAccrual02.gif)

With three weeks pretty much lost from the study, our median estimate of sample size for the full study is now only 46 patients. This reflects both the shortfall of getting 1 patient rather than 9 during the first three weeks, plus a modification in our estimate of how quickly we will accrue future patients. The model now estimates accrual at 2.4 patients per week on average rather than 3 patients per week. It would be a mistake to use the actual data (0.33 patients per week) because it is just based on a single value, but it would also be a mistake to pretend that the initial rate of 3 per week is still the correct value. The Bayesian model produces a nice compromise between these two extremes.

The 19 patient shortfall (65-46) is a combination therefore of the existing 8 patient shortfall and the estimate that we will experience a shortfall of 11 patients for the remainder of the study (0.6 shortfall per week times 19 remaining weeks).

We are still not too far off from our conservative estimate of 2 patients per week, but the goal of 3 patients per week seems a bit overly optimistic.

I will try to update this model as the trial progresses.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/CaseStudyOfAccrual.html
[sim2]: http://www.pmean.com
