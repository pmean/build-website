---
title: How do you analyze safety data
author: Steve Simon
date: 2008-01-22
categories:
- Blog post
tags:
- Adverse events
- Being updated
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

Someone on the [MedStats](../category/InterestingWebsites.html#MeStXx)
email discussion group asked about how to analyze adverse event data. He
noted that adverse event data is not one of the primary or secondary
outcome measures, and wondered if it would be appropriate to provide
statistical analysis of this data.

Adverse events (and safety data in general) represent a special type of
analysis that does not fit in well with the listing of primary/secondary
outcomes. The main reason for this is the number of possible adverse
event categories is very broad and it is not always possible to
anticipate in advance what type of adverse events are of greatest
interest.

You have to analyze adverse events, of course. To ignore them is just
bad research. But there is no clear consensus on how to analyze adverse
event reports or safety data in general. Here are some of my random
thoughts.

1.  Some safety issues can be anticipated in advance because of
    knowledge about other drugs in the same class, information gleaned
    from animal experiments and early phase clinical trials, and
    suspicions based on plausible biological mechanism. These should be
    specified in the protocol and should be considered primary outcomes
    alongside the efficacy outcomes.
2.  You should not use a Bonferroni adjustment even though the safety
    data will add multiple outcomes on top of the efficacy measure(s).
    In particular, a global null hypothesis that includes both efficacy
    and safety measures is nonsensical.
3.  Any adverse events which were not anticipated during protocol
    development but which occur at a greater than expected rate, either
    with respect to the control group or to a historical background
    rate, should be reported. An analysis of these events should be
    largely qualitative in nature.
4.  A differential drop out rate between treatment arms is suspicious
    and may indicate that a particular drug or treatment is more
    difficult to tolerate.
5.  How the adverse events color your overall recommendation is a
    complex process. The severity and frequency of the adverse events
    need to be balanced against the value of a cure and the improvement
    in the probability of observing a cure with the new treatment. You
    should discuss the plausibility of the adverse events in light of
    the size of the effect, previous research, biological mechanisms,
    etc.

All of the above are just my opinions, of course, and I don't want to
pretend that they are drawn from any consensus opinion among
researchers.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/AnalyzeSafety.html
[sim2]: http://www.pmean.com/original_site.html

Also see [this page][sim3].

[sim3]: http://www.pmean.com/08a/AnalyzeSafety.html
