---
title: Sample size for a binary endpoint
author: Steve Simon
source: http://www.pmean.com/05/SampleSizeBinary.html
date: 2005-08-12
categories:
- Blog post
tags:
- Being updated
- Sample size justification
output: html_document
page_update: partial
---
**[StATS]: Sample size for a binary endpoint (August
12, 2005)**

Someone sent me an email asking for the sample size needed to detect a
10% shift in the probability of recurrence of an event after one of two
different surgical procedures is done.

There were several things that I had to get clarification on.

The first thing, though I already suspected the answer, is whether the
10% is a [relative change or an absolute change](AbsoluteRisk.html). If
the control group has a recurrence rate of 30%, then a 10% increase
could mean a relative change (up to 33%) or an absolute change (up to
40%).

I had already guessed that this was an absolute change, because very few
people are interested in detecting a 10% relative change. It's just too
small to be of clinical interest most of the time. But it is a point
that is always worth clarifying. A 25% increase, for example, is far
more ambiguous, because a relative increase (to 37.5%) is plausible,
though a bit on the low end, and an absolute increase (to 55%) is also
plausible, though a bit on the high end.

But also of equal importance is is that actual rate of recurrence in the
control group. A 10% shift could mean that A has a 20% recurrence rate
and B has 30%. Or it could mean that A has an 45% rate and B has a 55%
rate. Or it could mean quite a few other things. It makes a huge
difference in the sample size calculation.

In general, an absolute change of a given size requires a larger sample
size when the rates are close to 50% compared to when the probabilities
are small. In contrast, though, a relative change is easier to detect
when the rates are close to 50% than when the rates are small. you
normally don't talk about relative changes for large probabilities,
because doubling a probability like 80% leads to a nonsensical result.

In response, he told me that the rate in the control group was likely to
be less than 40%, maybe as low as 20%.

I also had to ask whether to use a [one sided test or a two sided
test](../plan/hypo.asp#OneSided). He told me he wanted a two sided test.

I should have asked what [alpha
level](www.childrensmercy.org/definitions/alpha.htm) he wanted to use,
but everyone always says 0.05, so I didn't bother asking.

Finally, I have always gotten in the habit of asking how many patients
the researcher expects to accrue per year. I'm glad I asked, because in
this case, the researcher only sees 6-12 patients per year who would be
candidates for one of these two procedures.

This told me that the researcher. a serious problem. As a general rule
of thumb, you need to [accumulate at least 25 to 50
events](../size/quick.asp) (recurrence) in order to have enough power to
detect a large difference. With rates around 20 to 30%, that means that
you need several hundred patients. And in this situation, it is even
worse, because a change from 20% to 30% is not a large change in a
statistical sense. It is less than a doubling of the rate, for example.
So unless you rethink how you want to do the experiment, you are looking
at a couple of decades to finish the research.

The problem is that events like recurrence either happen or they don't.
There's no gray area. You've probably notices that studies of
mortality (another event where there is no gray area) usually require
hundreds or even thousands of patients.

Often if you can use a continuous outcome variable, one that allows for
gradual rather than abrupt changes, you can get by with a smaller sample
size. So that's why most studies of prevention of heart attacks focus
on a surrogate outcome like blood cholesterol levels instead of a more
direct and relevant measure like number of hospitalizations due to a
heart attack.

You can also browse
for pages similar to this one at [Category: Sample size
justification](../category/SampleSizeJustification.html).

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/SampleSizeBinary.html
[sim2]: http://www.pmean.com
