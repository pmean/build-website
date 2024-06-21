---
title: Parametric tests for a ratio
author: Steve Simon
source: http://www.pmean.com/06/ParametricTestForRatio.html
date: 2006-10-27
categories:
- Blog post
tags:
- Unusual data
output: html_document
page_update: partial
---

*Dear Professor Mean, I computed a variable, Y3, which is the ratio of
two other variables, Y1 and Y2. Can I use a parametric test on this
ratio?*

One of the amendments to the U.S. Bill of Rights talks about this. I
think it is the Seventh Amendment. It says, the government shall not
infringe on the right of its citizens to analyze their data anyway that
they darn well please.

Well, no the Seventh Amendment doesn't say that. But my point is that
there is no mandate written somewhere that dictates what types of
analyses are legitimate. So when you ask, "can I use a parametric
test?" what you really mean to ask is "can I use a parametric test and
still get my research published?"

If I am the one fortunate enough to be the referee on your paper, you
will get it published (or if it doesn't get published it will be for a
reason other than the fact that you used a parametric test on a ratio).

If someone else reviews your paper, I cannot say what will happen. Some
reviewers are very picky about this sort of thing and others are more
flexible.

The concern that a picky reviewer will raise is that a ratio of two
variables is not likely to be normally distributed, and will probably be
highly skewed. There's no empirical evidence that I know of that ratios
are likely to follow any distributional pattern.

What we do know is that if your numerator is normal and your denominator
is normal, it is impossible for the ratio to be normal. In many
situations it can be close to normal, but in other situations, it can be
disastrously non-normal.

One thing to look for is the behavior of the denominator. Exceedingly
small values in the denominator cause the ratio to explode, leading to
problems with outliers. If your denominator is bounded well away from
zero, this is not a problem. One thing to look for is if the coefficient
of variation (or relative standard deviation) is small (less than 0.3,
for example).

At the other extreme, if your denominator includes some negative values,
I would worry about what the ratio really means. And I presume that you
do not have any zero denominators, because if you try to divide by zero,
your computer usually complains.

But all of this discussion makes a very big assumption\--that your
numerator and denominator were normally distributed to begin with. Do
you know this for a fact? I guess you could check this by drawing a
normal probability plot, but why not bypass the middleman. You have all
the individual data values for the ratio, so why not draw a normal
probability plot for the ratio values.

This is what you do for any variable prior to running a parametric test,
right? So why should a ratio be any different?

Keep in mind that a parametric test is helped out by the central limit
theorem, so normality is increasingly irrelevant as your sample size
increases.

So if a referee tries to get picky, just show them the normal
probability plot and remind them of the value of the central limit
theorem.
