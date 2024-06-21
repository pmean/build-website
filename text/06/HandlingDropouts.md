---
title: Handling dropouts in NNT/NNH calculations
author: Steve Simon
source: http://www.pmean.com/06/HandlingDropouts.html
date: 2006-01-16
categories:
- Blog post
tags:
- Measuring benefit and risk
output: html_document
page_update: partial
---

Someone asked a question on the [Evidence-Based Health email discussion
group](http://www.jiscmail.ac.uk/lists/EVIDENCE-BASED-HEALTH.html) about
how to handle dropouts in an NNT/NNH calculation. There is no standard
way of handling this, but a little bit of common sense goes a long way.
Here are some examples. In each example, assume that there are 100
patients in each group, and 80 in each group who complete the study.<U+FFFD> In
the treatment group 70 patients experience the event (either a cure or a
side effect), 10 do not, and the results are unknown in 20. In the
control group, 50 patients experience the event of interest, 30 do not,
and the results are unknown in 20.

1\. Treat the dropouts as if they never existed. You have an event rate
of 70/80=87% in the treated group and 50/80=62% in the control group.
The NNT/NNH is 4. This analysis makes sense if you are looking at a
cure, and you expect that the probability of a cure is independent of
whether someone dropped out of the study. This is a questionable
assumption in most studies, because people who are doing poorly in a
research study might be reasonably expected to drop out at a higher rate
than people who do well.

2\. Treat the dropouts as if they all experienced the event of interest.
You have an event rate of 90/100=90% in the treatment group and
70/100=70% in the control group. The NNT/NNH is 5. This analysis makes
sense if you are looking at a side effect, and the reason people dropped
out is because they experienced a worse side effect. For example, if the
event is re-hospitalization and patients drop out because they die
instead, just redefine your event as re-hospitalization or death.

3\. Treat the dropouts as if they all failed to experience the event of
interest. You have an event rate of 50/100=50% in the control group and
70/100=70% in the treatment group. The NNT/NNH is 5. This analysis makes
sense if you are looking at a preventive study like smoking cessation,
and you suspect that anyone who quits early is probably smoking again.

4\. Perform a sensitivity analysis by assigning the dropouts in the most
favorable and least favorable assumptions. The most favorable assumption
(assuming that an event is a good thing) treats the dropouts in the
treatment group as experiencing the event and the dropouts in the
control group as not experiencing the event. In the above example, that
would make the event rates 90/100=90% in the treatment group and
50/100=50% in the control group. The best case scenario NNT is 2.5. Now
revise these assumptions. The event rates are 70/100=70% in the
treatment group and 70/100=70% in the control group. The worst case
scenario NNT is +infinity. The best/worst case scenarios only make sense
when you have a trivial number of dropouts and you want to establish
that they do not seriously influence the outcomes.

5\. In many research studies none of the above calculations is
reasonable. If this is the case, just refuse to calculate the NNT/NNH
rather than report a number that you know is misleading.
