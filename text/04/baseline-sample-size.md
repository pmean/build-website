---
title: Sample size calculations in studies with a baseline
author: Steve Simon
date: 2004-07-23
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: partial
---
Many research studies evaluate all patients at baseline and then
randomly assign the patients to groups, conduct the interventions, and
then re-evaluate them at the end of the study. The sample size
calculations for this type of study are a bit tricky.

One of the reasons that you measure the patients at baseline is that you
are interested in the change or improvement that a specific intervention
might produce. The change in a measure is almost always going to be less
variable than the measurement itself. This gives you more precision and
might allow you to use a smaller sample size.

You also might measure at baseline to use that value as a covariate. The
covariate will also improve precision and might allow you to use a
smaller sample size.

As a simple illustration of the increased precision, consider a study of
acupuncture that appeared in the March 27, 2004 issue of the British
Medical Journal.

-   **Acupuncture for chronic headache in primary care: large,
    pragmatic, randomised trial.** Vickers AJ, Rees RW, Zollman CE,
    McCarney R, Smith CM, Ellis N, Fisher P, Van Haselen R. Bmj 2004:
    328(7442); 744.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15023828&dopt=Abstract)
    [\[Abstract\]](http://bmj.bmjjournals.com/cgi/content/abstract/328/7442/744)
    [\[Full
    text\]](http://bmj.bmjjournals.com/cgi/content/full/328/7442/744)
    [\[PDF\]](http://bmj.bmjjournals.com/cgi/reprint/328/7442/744.pdf)

In this study patients were randomly assigned to either normal standard
of care or normal care plus additional visits to a accupuncturist. After
three months, the control group had an average headache score of 23.7
(SD 16.8) and the acupuncture group had a score of 18.0 (14.8). A simple
confidence interval for the difference in means is 2.0 to 9.4 which
establishes that the accupuncture group did significantly better.

The authors considered a more complex model where the three month
measurements were adjusted using the baseline measures as a covariate.
The resulting confidence interval, 1.6 to 6.3, is shifted a bit towards
zero because the control group had slightly higher headache scores at
baseline. But notice also that the interval is much narrower. Using the
baseline decreased the width of the confidence interval by about a
third.

If you are planning a study with baseline measures, you should try to
account for the greater precision you get by having a baseline.
Otherwise, you would end up with an unnecessarily large sample size.
This is not a trivial consideration. A reduction of one third in the
width of the confidence interval, such as the one seen above, would cut
your required sample by more than half.

To factor in the greater efficiency of a study with baseline measures,
you need to specify

-   the standard deviation of the change score,
-   the within subject variation, or
-   the intraclass correlation.

Typically, these numbers are hard to find. In a pinch, I have performed
these calculations using a range of intraclass correlations between 0.7
and 0.9. The problem with this is that the sample size is highly
sensitive to small changes in the intraclass correlation.

By the way, I like to use change scores in my analyses because they are
easy to explain and to interpret. Change scores, however, are generally
considered to be inferior to using the baseline as a covariate.

**Further reading**

-   [Stats: Selecting an appropriate sample size](../size.asp)
-   **Within-subject variability and per cent change for significance of
    spirometry in normal subjects and in patients with cystic
    fibrosis.** Nickerson BG, Lemen RJ, Gerdes CB, Wegmann MJ,
    Robertson G. Am Rev Respir Dis 1980: 122(6); 859-66.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7458059&dopt=Abstract)
-   **Change scores as dependent variables in regression analysis.**
    Allison P. Sociological methodology 1990: 20; 93-114.
-   **The use of percentage change from baseline as an outcome in a
    controlled trial is statistically inefficient: a simulation study.**
    Vickers AJ. BMC Med Res Methodol 2001: 1(1); 6.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11459516&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1471-2288/1/6/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1471-2288/1/6)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2288-1-6.pdf)

You can find an [earlier version](http://www.pmean.com/04/baseline.html) of this page on my [original website](http://www.pmean.com/original_site.html).
