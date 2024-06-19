---
title: Goodness of fit test
author: Steve Simon
date: 2004-05-18
categories:
- Blog post
tags:
- Measuring agreement
output: html_document
page_update: partial
---
The chi-square test appears in a lot of different places. Some recent
data on Astrology, published in the [May newsletter of the Skeptic
Society](http://www.skeptic.com/eskeptic05-17-04.html#dark), offers an
interesting opportunity to show one of these tests. In an article
offering dark matter as a possible explanation of the effects of
astrology, the London Times published a list of the 1,000 richest people
and their star signs. It noted a significant difference between the
number born under Gemini and the number born under Pisces. A careful
look at the full data set, though, shows that numbers observed could
easily be explained by sampling error.

![gof2.gif not found.](http://www.pmean.com/new-images/04/goodness01.png)

There are actually 1,067 people listed here, which suggests either a
typographical error or perhaps inflation has hit the top 1,000 list. The
question is whether the distribution of star signs is uniform or not. A
non-uniform distribution could be taken as evidence for Astrology, but
it would probably need replication to be taken seriously.

If the distribution is uniform, we would expect to see about 89 people
in each star sign. We compare the expected count to the observed count
using the Chi-square goodness of fit statistic, X^2^:

![gof1.gif not found.](http://www.pmean.com/new-images/04/goodness02.png)

where O~i~ are the observed counts (110, 104, 95, ..., 73) and E~i~ are
the expected counts (88.92 for each star sign).

The table below shows the calculation of

![gof3.gif not found.](http://www.pmean.com/new-images/04/goodness03.png)

You should compare this statistic to a Chi-squared distribution with 11
degrees of freedom. The 95th percentile of this distribution is 19.7.
Since your test statistic is smaller than 19.7, you would accept the
null hypothesis and conclude that the distribution is uniform. Actually,
you should   state the conclusion more cautiously: there is insufficient
evidence for a non-uniform distribution of star sign among the richest
1,000 people. You can also compute a p-value for this test statistic. In
Microsoft Excel, the function CHIDIST(13.57,11) produces a p-value of
0.258.

Now if you just took the largest group, Gemini, and compared it to the
smallest group, Pisces, you would indeed get a statistically significant
differrence:

![gof4.gif not found.](http://www.pmean.com/new-images/04/goodness04.png)

Compare this test statistic to a Chi-squared distribution with 1 degree
of freedom, where the 95th percentile is 3.84. The p-value
(CHIDIST(7.48,1)) is 0.0062.but there was no reason to believe a priori
that Gemini would have a surplus of rich people compared to Pisces.
Here's what the astrology.com web site says about Gemini:

*Gemini is the third Sign of the Zodiac, and those born under this
Sign will be quick to tell you all about it. That's because they love
to talk! It's not just idle chatter with these folks, either. The
driving force behind a Gemini's conversation is their mind. The
Gemini-born are intellectually inclined, forever probing people and
places in search of information. The more information a Gemini
collects, the better. Sharing that information later on with those
they love is also a lot of fun, for Geminis are supremely interested
in developing their relationships. Dalliances with these folks are
always enjoyable, since Geminis are bright, quick-witted and the
proverbial life of the party. Even though their intellectual minds can
rationalize forever and a day, Geminis also have a surplus of
imagination waiting to be tapped. Can a Gemini be boring? Never!*[
www.astrology.com/allaboutyou/sunsigns/gemini.html](http://www.astrology.com/allaboutyou/sunsigns/gemini.html)

and about Pisces

*Pisces is the twelfth Sign of the Zodiac, and it is also the final
Sign in the Zodiacal cycle. Hence, this Sign brings together many of
the characteristics of the eleven Signs that have come before it.
Pisceans, however, are happiest keeping many of these qualities under
wraps. These folks are selfless, spiritual and very focused on their
inner journey. They also place great weight on what they are feeling.
Yes, feelings define Pisceans, and it's not uncommon for them to feel
their own burdens (and joys) as well as those of others. The intuition
of the Pisces-born is highly-evolved. Many people associate Pisceans
with dreams and secrets, and it's a fair association, since those
born under this Sign feel comfortable in an illusory world.*[
www.astrology.com/allaboutyou/sunsigns/pisces.html](http://www.astrology.com/allaboutyou/sunsigns/pisces.html)

If you tried very hard, you could possibly infer some hints that Geminis
are richer because they are smarter, and Pisces are poorer because of
their selfless nature. I don't see anything in the description that
would make me think so, and it is easy to develop post hoc
rationalizations. Unless you had a hypothesis developed prior to data
collection, you need to make some sort of adjustment.

The simplest adjustment is a [Bonferroni
correction](../ask/bonferroni.asp). This adjusts the p-value by
multiplying it by the number of possible comparisons that could be made.
With 12 Astrology signs, there are 12*11/2=66 possible comparisons. The
adjusted p-value would be 0.41 which is not statistically significant.
Other adjustments are actually better than Bonferroni here, but they
would lead to the same conclusion.

This is hardly a definitive study, but it does tend to support most of
the other research on Astrology. The most prominent claim in support of
Astrology is the Mars Effect, which was a claim by Michel Gauquelin in
1955 that prominent sports figures were more likely to be born at times
when the planet Mars was in a certain position in the sky. A careful
study of this is actually quite difficult because birth dates and times
are not quite uniformly distributed and because it is hard to define
what a prominent sport figure is. Jan Willem Nienhuys published a  
[critical review of the Mars effect](http://www.skepsis.nl/mars.html)
that appeared in the November/December 1997 issue of [Skeptical
Inquirer](http://www.csicop.org/si/).

A good resource about Astrology is in the Skeptic's Dictionary website:
[www.skepdic.com/astrolgy.html](http://www.skepdic.com/astrolgy.html).

You can find an [earlier version](http://www.pmean.com/04/goodness.html) of this page on my [original website](http://www.pmean.com/original_site.html).
