---
title: Incidence density ratio
author: Steve Simon
date: 2005-04-19
categories:
- Blog post
tags:
- Being updated
- Measuring benefit and risk
output: html_document
page_update: partial
---
Someone asked me about a technical term, incidence density ratio, that
was used in an article:

- **Comprehensive discharge planning and home follow-up of
hospitalized elders: a randomized clinical trial.** Naylor MD,
Brooten D, Campbell R, Jacobsen BS, Mezey MD, Pauly MV, Schwartz JS.
Jama 1999: 281(7); 613-20.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10029122&dopt=Abstract)

Looking at the article, they only mention the term once and in context
with another term, rate ratio, that you are probably familiar with. A
rate represents a number of events over time (or sometimes over area),
and that makes sense here. You have a number of readmissions per
week/month, or whatever. A rate ratio compares the rates of two
different groups. Again that makes sense.

There's something a bit tricky about this data in that they used a
proportional hazards regression, and the output is actually a hazard
ratio. That is actually just a technical distinction, though, because a
hazard ratio can again be thought of as a rate ratio. I need to write a
web page about this, because it is not immediately obvious. The term
incidence is often contrasted with prevalence, and you can find a
discussion of this distinction in most Epidemiology text books.

All of this, quite honestly, is a distinction without a difference. The
actual statistics they cite in the results section are:

*Control group patients were more likely than intervention group
patients to be readmitted at least once ((Table 2); 37.1% vs 20.3%;
P\<.001; relative risk, 1.8; 95% CI, 1.3-2.6).*

That seems pretty easy to interpret to me, and knowing whether the
numbers represent rate ratios, incidence ratios, or hazard ratios is
only of academic importance.

I have a few web pages that discuss some of the technical issues if you
are curious. The [December 15, 2004 weblog entry on Neyman
bias](http://www.pmean.com/weblog2004/NeymanBias.asp)
draws a careful distinction between incidence and prevalence. I also
have [September 15, 2004 weblog entry on rates versus
proportions](http://www.pmean.com/weblog2004/Rates.html).
Certain statistical models, such as a Poisson regression model will also
produce incidence density ratios. I have to write up a web page about
this model when I have time. It is on my list of unfinished business
([Coming Soon! March 22, 2005 weblog entry](ComingSoon.html)).

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/IncidenceDensity.html
[sim2]: http://www.pmean.com/original_site.html
