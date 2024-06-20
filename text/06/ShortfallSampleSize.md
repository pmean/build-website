---
title: Is a 10% shortfall in sample size critical?
author: Steve Simon
source: http://www.pmean.com/06/ShortfallSampleSize.html
date: 2006-10-23
categories:
- Blog post
tags:
- Confidence intervals
- Sample size justification
output: html_document
page_update: partial
---
*Dear Professor Mean, I'm reviewing a paper where they did a power
calculation based on 60 patients per group, but in the research study,
they ended up only getting 55/58 per group. Since their sample size was
much less than what they originally planned for, does this mean that the
study had inadequate power?*

The researchers came within 10% of their projected sample size, and
you're ready to condemn the study into oblivion? I'd hate to see your
reaction when something bad actually happens.

No research study is perfect, and falling below your projected sample
size is indeed a problem, but the shortfall here is so small that it is
hard to get too excited about it. You need to save your outrage for more
serious problems like a study where half of the patients dropped out
before the final evaluation, a study which used an unvalidated measure
of pain, or a study where the researchers failed to include the
consulting statistician as a co-author.

One way to look at it is that when the sample size is 10% smaller than
planned, you suffer through confidence intervals that are approximately
5% wider than you had originally planned for. Is that such a terrible
thing?

Another way to look at it is that a reduction of sample size by 10%
leads to a 3-5% drop in power. So a study that you thought had 90% power
actually has 86% power. A study that you thought had 80% power actually
has 76% power.

Now I would start to worry if the sample size is 30% smaller than
planned (getting 42 patients when the original goal was 60). Now your
confidence interval is 20% wider than you had hoped it would be and your
power is 13 to 15% lower. A sample size that is half the original plan
(getting 30 patients when the original goal was 60) is definitely a
problem because the confidence interval is 41% wider and the power drops
by 27 to 30%. So a study that you hoped would have 80% power actually
only has 50% power.

Sometimes you get lucky, and the actual standard deviation that you
observed in the study is much smaller than you originally thought at the
planning stage, and this cancels out the loss in precision and power.
But just as often, the study that has the shortfall in sample size also
has an overly optimistic initial estimate of sample size during the
planning phase, leading to a double whammy.

These calculations apply for a two sample t-test, but would probably
produce comparable results for other scenarios such as a paired t-test,
an ANOVA F-test, or a Chi-square test for testing independence in a two
by two table.
