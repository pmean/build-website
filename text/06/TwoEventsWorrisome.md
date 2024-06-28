---
title: When are two events worrisome?
author: Steve Simon
source: http://www.pmean.com/06/TwoEventsWorrisome.html
date: 2006-12-04
categories:
- Blog post
tags:
- Early stopping
output: html_document
page_update: partial
---

I was attending a workshop on developing a risk management plan for a
new drug. The presenter, Nawab Qizilbash from Oxon Clinical
Epidemiology, gave an interesting example. Suppose you are running a
clinical trial with 50 total patients. In the treatment group, you
notice two adverse events and in the placebo group you notice zero
adverse events. Should you stop the trial?

The group discussion started with questions about statistical
significance. *What is the confidence interval?* one participant asked.
The speaker showed some statistics. With two events versus zero in a
sample of 25 in each group, Fisher's Exact Test is not statistically
significant. The Chi-square test is not statistically significant.

Discussion then moved to the type of disease being treated and the
severity of the side effect. If the effect was very severe, such as
death, then you might want to stop the trial. Dr. Qizilbash then raised
some specific scenarios.

Would you stop the trial if the adverse event was a rash? Would you stop
the trial if the event was neutropenia? Would you stop the trial if the
event was aplastic anemia? Again the discussion focused on the severity
of the events.

Dr. Qizilbash then pointed out some background data for the last event.
Data shows that the rate of aplastic anemia is approximately 1 in 1,000
in the general population. The relative risk of the treatment group to
the background rate is .04 / .001 = 40, which is indeed statistically
significant.

When you are assessing safety events, especially safety events that
occur rarely, you need to compare not just with the concurrent control
group, but with a historical control background rate. There are indeed
problems with a comparison to a historical control group, but you do
have the advantage that the historical control group is large enough
that you can define precise estimates even for very rare events. The
historical comparison should not replace the comparison to the
concurrent control group, but should supplement it.

This is a very important message. The audience (including me, I'm
afraid to admit) was focusing on the severity of the event. That is
indeed important, but of greater importance is that certain severe
events are also (thankfully) rare events. If an event is rare enough in
the background population, then that rarity may make two events by
themselves to be a very worrisome problem.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/TwoEventsWorrisome.html
[sim2]: http://www.pmean.com
