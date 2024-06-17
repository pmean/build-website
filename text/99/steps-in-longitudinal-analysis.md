---
title: Longitudinal data analysis
source: http://www.pmean.com/99/longitudinal.html
author: Steve Simon
date: 1999-10-15
categories:
- Blog post
tags:
- Being updated
- Multilevel models
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

[This is a very early draft]

Longitudinal data are data where each patient is observed on multiple
occasions over time. Analysis of longitudinal data are challenging
because measurements on the same subject are correlated. Another way to
think about this is that two measurements on the same subject will have
less variation than two measurements on different subjects.

A closely related concept is the cluster design. A cluster design is one
where the researcher selects clusters of patients rather than selects
patients individually. For example, a researcher might randomly select
several families and evaluate all children in that family. As another
example, a researcher might randomly select several clinical practices
and then evaluate a random group of patients at each practice. In a
cluster design, two measurements on patients within the same cluster
will have less variations than measurements of two patients in differing
clusters. . In genetics, this correlation is of great interest, and can
help you understand concepts like heritability.

Many of the methods described below for longitudinal designs would also
be useful for cluster designs. For simplicity, I will discuss these
methods solely from the perspective of a longitudinal design.

If your data are continuous, then there are several "classical"
approaches such as multivariate analysis of variance and repeated
measures analysis of variance. These approaches work well for simple
well structured longitudinal data.

An alternative is to use mixed linear models. These models handle
missing data well and can handle situations where the times of
measurement vary from one patient to another.

In a mixed linear model, you specify a particular structure for the
correlations. For example, an autoregressive structure is commonly used
to represent structure where correlations are strongest for measurements
close in time and which become weaker for measurements that are further
separated in time.

In many situations, the correlations are not of direct interest, but we
only account for them because failure to do so will lead to incorrect
inferences.

When you are examining the correlation structure, a statistic called the
Akaike Information Criteria (AIC). This statistic measures how closely
the model fits the data, but it includes a penalty for overly complex
models.

Unfortunately, there are two different formulas for AIC. For one
formula, a large value of AIC is good, and for the other formula, a
small value is good.

AIC values should only be compared for models where the only change is
in the correlation structure. It would not make sense to compare an AIC
from a model with linear relationships to a model with quadratic
relationships.

What if your data is not continuous? L. Fang discussed some of the
approaches commonly used when the data represents binomial counts.

-   Mixed models
-   Mixed model after arcsin transformation
-   GEE
-   GLIMM

**Further reading**

-   **A comparison of different approaches for fitting centile curves to
    birthweight data.** Bonellie SR, Raab GM. Statistics in Medicine
    1996: 15(24); 2657-67.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8981678&dopt=Abstract)
-   **Longitudinal methods for evaluating therapy.** Clemens JD, Horwitz
    RI. Biomed Pharmacother 1984: 38(9-10); 440-3.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=6529601&dopt=Abstract)
-   **[Exact Tests for Correlated Data
    \[pdf\]](http://www.cytel.com/papers/cytel_newsletter_chris_new.pdf)**.
    Corcoran C, Senchaudhuri P, Cytel Software. Accessed on 2003-12-26.
    www.cytel.com/papers/cytel\_newsletter\_chris\_new.pdf
-   **[Power for Simple Mixed
    Models](http://www.nur.utexas.edu/Dickson/stats/mxpower.html)**.
    Dickson P, School of Nursing, The University of Texas at Austin.
    Accessed on 2003-08-28.
    www.nur.utexas.edu/Dickson/stats/mxpower.html
-   **Analysis of Longitudinal Data.** Diggle PJ (1994) Oxford:
    Clarendon Press.
-   **Lecture Notes in Statistics: Probabilistic Causality in
    Longitudinal Studies.** Eerola M (1994) New York: Springer-Verlag.
-   **Extension of the gauss-markov theorem to include the estimation of
    random effects.** Harville D. The Annals of Statistics 1976: 4(2);
    384-95.
-   **Random-effects regression models for clustered data with an
    example from smoking prevention research.** Hedeker D, Gibbons RD,
    Flay BR. J Consult Clin Psychol 1994: 62(4); 757-65.
-   **A discussion of the two-way mixed model.** Hocking R. The American
    Statistician 1973: 27(4); 148-52.
-   **Approximations for standard errors of estimators of fixed and
    random effects in mixed linear models.** Kackar R. Journal of the
    American Statistical Association 1984: 79(388); 853-62.
-   **Statistical Tests for Mixed Linear Models.** Khuri A, Mathew T,
    Sinha B (1998) New York: John Wiley & Sons, Inc.
-   **Does practice really make perfect?** Laine C, Sox HC. Ann Intern
    Med 2003: 139(8); 696-8.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=14568859&dopt=Abstract)
    [\[Full text\]](http://www.annals.org/cgi/content/full/139/8/696)
    [\[PDF\]](http://www.annals.org/cgi/reprint/139/8/696.pdf)
-   **Models for Repeated Measurements.** Lindsey JK (1993) Oxford:
    Clarendon Press.
-   **SAS System for Mixed Models.** Littell RC, Ph.D., Milliken GA,
    Ph.D., Stroup WW, Ph.D., Wolfinger RD, Ph.D. (1996) Cary, North
    Carolina: SAS Institute Inc.
-   **Random Coefficient Models.** Longford NT (1993) Oxford: Claredon
    Press.
-   **Assessing change with longitudinal and clustered binary data.**
    Neuhaus JM. Annu Rev Public Health 2001: 22; 115-28.
-   **The effect of clustering of outcomes on the association of
    procedure volume and surgical outcomes.** Panageas KS, Schrag D,
    Riedel E, Bach PB, Begg CB. Ann Intern Med 2003: 139(8); 658-65.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=14568854&dopt=Abstract)
    [\[Abstract\]](http://www.annals.org/cgi/content/abstract/139/8/658)
    [\[Full text\]](http://www.annals.org/cgi/content/full/139/8/658)
    [\[PDF\]](http://www.annals.org/cgi/reprint/139/8/658.pdf)
-   **Further statistics in dentistry. Part 7: repeated measures.**
    Petrie A, Bulman JS, Osborn JF. Br Dent J 2003: 194(1); 17-21.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12540932&dopt=Abstract)
    [\[Abstract\]](http://www.nature.com/cgi-taf/dynapage.taf?file=/bdj/journal/v194/n1/abs/4802405a.html&filetype=&)
-   **Mixed-Effects Models in S and S-PLUS.** Pinheiro JC, Bates DM
    (2000) New York: Springer-Verlag.
-   **Comparing personal trajectories and drawing causal inferences from
    longitudinal data.** Raudenbush SW. Annu Rev Psychol 2001: 52;
    501-25.
-   Linear mixed-effects modeling in SPSS: An introduction to the MIXED
    procedure. \[\[Link temporarily misplace.\]\]
-   **Using SAS PROC MIXED to Fit Multi-Level Models, Hierarchical
    Models, and Individual Growth Models.** Singer JD. Journal of
    Educational and Behavioral Statistics 1998: 24(4); 323-355.
-   **Statistics notes: Analysing controlled trials with baseline and
    follow up measurements.** Vickers AJ, Altman DG. Bmj 2001:
    323(7321); 1123-4.
-   **Longitudinal Data Analysis for Discrete and Continuous Outcomes.**
    Zeger SL, Liang K-L. Biometrics 1986: 42(1); 121-130.
-   **An overview of methods for the analysis of longitudinal data.**
    Zeger SL, Liang KY. Stat Med 1992: 11(14-15); 1825-39.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/longitudinal.html
[sim2]: http://www.pmean.com/original_site.html
