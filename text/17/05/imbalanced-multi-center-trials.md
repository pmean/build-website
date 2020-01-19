---
title: "PMean: Extremely imbalanced multi-center trials"
author: "Steve Simon"
source: "http://blog.pmean.com/imbalanced-multi-center-trials/"
date: "2017-05-05"
category: Blog post
tags: Accrual
output: html_document
---

There was some recent discussion of issues with multi-center trials
where one center dominates, contributing as much as 94% of all the
patients. What does this do to the generalizability of the study. I
wanted to summarize these comments here, because it relates to some of
the issues I'm looking at right now in accrual models for multi-center
trials.

<!---More--->

One person shared the
[transcript](https://www.fda.gov/ohrms/dockets/ac/03/transcripts/3966T1.htm)
of an FDA review of a drug that was tested in 41 patients, 38 of who
came from Brigham & Women's Hospital with the remaining 3 coming from a
hospital associated with the University of Nebraska. As you might
expect, the FDA panel was not thrilled with the ability to generalize
from this study to the overall population, but they did acknowledge that
the patients themselves were geographically dispersed and came to
Brigham & Women's Hospital because this was a rare condition that few
places were qualified to offer treatment.

Another person suggested a 2.5 to 1 ratio maximum, meaning that if you
had K centers, no more than 2.5 / K of them could come from a single
center. For example, with 10 centers, no more that 2.5/10 = 25% should
come from any one center. For pivotal studies you might want to consider
a stricter limit like 2 / K. This is a very ad hoc approach of course,
but you could run some simulations using an influence function and a
score function to see how much the imbalance hurts. I can't say that I
completely follow this last comment.

Another person shared a guidance document
[CMPP/EWP/2330/99](http://www.ema.europa.eu/ema/index.jsp?curl=pages/regulation/general/general_content_001227.jsp)
which discusses meta-analyses and relying on a single pivotal trial.
This guidance offer the general admonition that none of the centers in a
multi-center trial should dominate the study either in the number of
subjects or in the magnitude of the effect. The latter means, I presume
that if the efficacy is a result of positive results mostly from just
one of the centers, that is a serious concern.

Addendum: I did a quick google search and found a [discussion on
enrollment
caps](https://groups.google.com/forum/#!topic/medstats/m3aHUKKDNeQ) in a
multicenter trial on the MEDSTATS forum on January 28, 2015. One reply
had a [link to an article](http://www.onlinejacc.org/content/61/5/571)
in the Journal of the American College of Cardiology that argued that,
at least in one clinical trial, high enrolling sites differed in
important ways from low enrolling sites. This article has an
[accompanying editorial](http://www.onlinejacc.org/content/61/5/580).

Another search found a [Johns Hopkins
report](https://jhuccs1.us/clm/quotafication.pdf) that discussed (among
other things) the impact of enrollment caps on individual sites. And a
[2007 blog
entry](http://onbiostatistics.blogspot.com/2007/11/measure-enrollment-imbalance.html)
suggests a cap of 3/K to 5/K.


