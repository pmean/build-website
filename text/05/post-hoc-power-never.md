---
title: Post hoc power is never justified
author: Steve Simon
source: http://www.pmean.com/05/PostHocPower-05.html
date: 2005-05-13
categories:
- Blog post
tags:
- Being updated
- Post hoc power
output: html_document
page_update: partial
---
**[StATS]:** **Post hoc power is never justified
(May 13, 2005)**.

Someone wrote in and was upset that a referee was insisting on post hoc
power for all the outcome measures, and he only wanted to compute post
hoc power for the negative outcomes (the outcomes that did not achieve
statistical significance).

The references that I cite on my [web page about post hoc
power](../size/posthoc.asp) are very strongly against using post hoc
power for ANY outcome measure. Post hoc power is inversely related to
the p-value, so any large p-value is going to automatically have a small
post hoc power. For any comparison of two groups, if the p-value is
larger than 0.05, the post hoc power has to be smaller than 50%.

If you were silly enough to believe that post hoc power was measuring
something useful, you would then have to accept the absurd conclusion
that every single negative study that was ever published was
underpowered. Certainly, some negative findings occur because the sample
size is too small but sometimes they are negative because nothing is
going on. Not every treatment being studied is going to be effective,
and not every exposure being studied is going to be harmful.

If a referee asks you to include a post hoc power calculation, just say
no. Include a sentence in your paper along the lines of

- "We did not compute any post hoc power calculations because these
computations are irrelevant and misleading"

and then cite 2 or 3 of these references.

Apparently I wrote something about this on EDSTAT-L two years ago, and I
was quoted on the following web page:

- <http://core.ecu.edu/psyc/wuenschk/StatHelp/PowerAPosteriori.htm>

as saying "*The best thing to present in the paper is an a priori
sample size calculation. If this was not done, rely on the width of the
confidence intervals to demonstrate whether the sample size was
adequate. A post hoc power computed at a biologically relevant effect
size is a poor third choice, and a post hoc power at the observed effect
size is pathetic.*"

Someone interpreted this to mean that post hoc power at a biologically
relevant difference is still okay, because it is not pathetic. But it's
hardly a ringing endorsement to say that a paper used an approach which
could not be characterized as pathetic.

In fairness, most of the criticisms of post hoc power calculations focus
on the use of post hoc power at the observed effect size. But you should
take a very close look at

- **The Abuse of Power: The Pervasive Fallacy of Power Calculations
for Data Analysis.** John M. Hoenig, Dennis M. Heisey. The American
Statistician 2001: 55(1); 19-24.

because these researchers showed that even a post hoc power at a
biologically relevant difference leads to faulty conclusions. They
coined a cute acronym, PAP, to describe the faulty conclusions that post
hoc power can lead you to.

**Further reading:**

- [Stats: Negative results](../size/negative.asp)
- [Stats: Post hoc power](../size/posthoc.asp)

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/PostHocPower.html
[sim2]: http://www.pmean.com
