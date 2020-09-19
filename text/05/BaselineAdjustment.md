---
title: Adjusting for a baseline measurement
author: Steve Simon
date: 2005-02-28
category:
- Blog post
tags:
- Covariate adjustment
output: html_document
---
> Someone asked me today about how to analyze a two group experiment
> with a baseline value. This is common research design. Researchers
> will assess all patients at the beginning of the study. They then
> randomly assign half of these patients to receive an intervention and
> half to be in a control group. Then they take a second measurement of
> the same outcome. The measurement at the beginning of the study, the
> baseline value, helps improve the research design by removing some of
> the variation in the data.
>
> There are four common approaches for analyzing this data, two good and
> two bad. The first approach, and the one I like best, is to compute a
> change score and use that change score as the unit of analysis. The
> change score is simply the difference between the second measurement
> and the first. Change scores are very easy to interpret, because they
> represent how much someone changed or improved over time.
>
> A second approach and one that I dislike is to ignore the baseline
> value. This throws away precision and should only be used if you can
> show that there is little or no correlation between baseline
> measurement and the subsequent measurement. If you collected the
> baseline data, it almost seems almost criminal to ignore it.
>
> A third approach that I like well is to use the baseline value as a
> covariate in an analysis of covariance (ANCOVA) model. The ANCOVA
> model has greater flexibility than the change score approach, because
> it incorporates the change score as a special case. You can show
> without too much difficulty that if the slope for the baseline
> covariate is exactly equal to one, then the ANCOVA model is identical
> to the change score. You can also show that if the slope for the
> covariate is exactly equal to zero, that this is identical to ignoring
> the baseline value. Advocate for the ANCOVA model point out that this
> model makes the optimal adjustment unlike the change score model. I
> find the ANCOVA model a bit more difficult to interpret, but I still
> think it is a very good choice.
>
> A fourth approach, and probably the worst approach, is to treat the
> baseline and subsequent measurements as repeated measures in a
> repeated measures analysis of variance ANOVA). This repeated measures
> ANOVA would show evidence of a intervention effect only if the
> treatment by time interaction is statistically significant. The model
> for the repeated measures ANOVA is difficult to set up and tricky to
> interpret.

**Further reading**

1.  **Change scores as dependent variables in regression analysis.**
    Allison P. Sociological methodology 1990: 20; 93-114.
2.  **Case studies, single-subject research, and N of 1 randomized
    trials: comparisons and contrasts.** Backman CL, Harris SR. Am J
    Phys Med Rehabil 1999: 78(2); 170-6.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10088595&dopt=Abstract)
3.  **Contrasting Split Plot and Repeated Measures Experiments and
    Analyses.** Monlezun C, Blouin D, Malone L. The American
    Statistician 1984: 38(1); 21-27.
4.  **Assessing change with longitudinal and clustered binary data.**
    Neuhaus JM. Annu Rev Public Health 2001: 22; 115-28.
5.  **Planning gorup sizes in clinical trials with a continuous outcome
    and repeated measures.** Schouten H. Stats in Medicine 1999: 18(3);
    255-64.
6.  **Repeated measures in clinical trials: simple strategies for
    analysis using summary measures.** Senn S. Statistics in Medicine
    2000: 19; 861-877.
7.  **The use of percentage change from baseline as an outcome in a
    controlled trial is statistically inefficient: a simulation study.**
    Vickers AJ. BMC Med Res Methodol 2001: 1(1); 6.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11459516&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1471-2288/1/6/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1471-2288/1/6)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2288-1-6.pdf)
8.  **Statistics notes: Analysing controlled trials with baseline and
    follow up measurements.** Vickers AJ, Altman DG. Bmj 2001:
    323(7321); 1123-4.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11701584&dopt=Abstract)
    [\[Full
    text\]](http://bmj.bmjjournals.com/cgi/content/full/323/7321/1123)
    [\[PDF\]](http://bmj.bmjjournals.com/cgi/reprint/323/7321/1123.pdf)

**Broken link** (Reported August 30, 2007. I will try to fix this when I
have time)

-   **Problems with the Repeated Measures Analysis of Pre-Post Data**.
    Dickson P, School of Nursing, The University of Texas at Austin.
    Accessed on 2003-08-28. www.nur.

You can find an [earlier version](http://www.pmean.com/05/BaselineAdjustment.html) of this page on my [original website](http://www.pmean.com/original_site.html).
