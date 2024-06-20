---
title: Odds ratios less than one
author: Steve Simon
source: http://www.pmean.com/05/OddsRatios.html
date: 2005-01-06
categories:
- Blog post
tags:
- Being updated
- Measuring benefit and risk
output: html_document
page_update: partial
---
**[StATS]:** **Odds ratios less than one (January 6,
2005)**

Someone sent me an email asking how to interpret an odds ratio less than
1. An odds ratio of 1 means that the odds of an event is the same in
both the treatment and control group. An odds ratio of 2 means that the
odds is twice as high in one group versus the other. Is it twice as high
in the treatment group or twice as high in the control group? Well, it
depends on who is doing the reporting. The Cochrane Collaboration always
arranges its odds ratios so that a value greater than 1 favors the
control group. That always seemed backwards to me, but who am I to argue
with the Cochrane Collaboration.

You really don't know how to interpret an odds ratio of 2 (or any other
odds ratio) without some additional context. Is it the odds in favor of
a particular outcome or the odds against that outcome? Is the control
group in the numerator of the ratio or is it in the denominator?

Since I can't tell you what an odds ratio of 2 represents without more
context, I can't tell you what an odds ratio of 0.5 represents either.
But clearly it is saying that one group has half the odds of the other
group. In a Cochrane Review, you would know that an odds ratio of 0.5
(or any odds ratio less than 1) favors the treatment group.

When you are interpreting an odds ratio (or any ratio for that matter),
it is often helpful to look at how much it deviates from 1. So, for
example, an odds ratio of 0.75 means that in one group the outcome is
25% less likely. An odds ratio of 1.33 means that in one group the
outcome is 33% more likely.

That example illustrate one of the big problems with ratios. The ratios
0.75 and 1.33 are directly opposite from one another (3/4 and 4/3), yet
the latter seems like a larger change from the value of 1. It is like
the classic logic problem that says, suppose you own a stock and it goes
up by 25% on the first day and down by 25% on the second day. You would
think that you have broken even, but wait. If you invested two thousand
dollars, you would have \$2,500 (2,000\*1.25) on the first day, but it
would shrink to \$1,875 (2,500\*0.75) on the second day.

Statisticians will often graph odds ratios on a log scale to reflect the
fact that increases in a ratio are not directly comparable to decreases
of the same size for that ratio.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/OddsRatios.html
[sim2]: http://www.pmean.com
