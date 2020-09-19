---
title: Information theory and microarrays
author: Steve Simon
date: 2005-06-01
category:
- Blog post
tags:
- Information theory
output: html_document
---
I have been toying with the idea of using information theory in a
microarray experiment to allow incorporation of the proportion of
\"absent: genes in the calculation of variance reduction. An \"absent\"
gene in an Affymetrix array is a gene where the mismatch probes light up
as brightly or more brightly as the perfect match probes. As I
understand it, the signal associated with these genes is probably noted
related to that gene itself but to some cross hybridizing genes.

The basic concept would be that the reduction of uncertainty associated
with a phenotypic variable would be the log of the ratio of standard
deviations for the signal among those arrays where a signal was present
plus the change in entropy in the probability of a gene being absent. So
for example, if a gene is absent in 6 out of 12 arrays, that represents
a high entropy. If the 6 absent genes all happen to be in the control
group, that represents an enormous change in entropy. Similarly, if
there is a large standard deviation in the signals of the 12 arrays, but
the standard deviations in the control group and treatment group are
much smaller, then there is a similar large change in entropy. Somehow,
there ought to be a simple way to combine the two concepts together.

Right now, most statistical models for microarrays (at least the ones I
am familiar with) do not incorporate the present or absent information
in the analysis.

It\'s not quite the same thing, but an article in BMC Bioinformatics
talks about using B-spline functions for estimating mutual information.
This approach adjusts for the errors associated with binning by allowing
a signal to be split into several adjacent bins.

-   **Estimating mutual information using B-spline functions\--an
    improved similarity measure for analysing gene expression data.**
    Daub CO, Steuer R, Selbig J, Kloska S. BMC Bioinformatics 2004:
    5(1); 118.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15339346&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1471-2105/5/118/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1471-2105/5/118)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2105-5-118.pdf)

When I have time, I\'ll see if there are any similar references out
there.

Another interesting microarray article I ran across is

-   **Improving the statistical detection of regulated genes from
    microarray data using intensity-based variance estimation.**
    Comander J, Natarajan S, Gimbrone MA, Jr., Garcia-Cardena G. BMC
    Genomics 2004: 5(1); 17.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15113402&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1471-2164/5/17/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1471-2164/5/17)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2164-5-17.pdf)

You can find an [earlier version](http://www.pmean.com/05/InformationTheoryA.html) of this page on my [original website](http://www.pmean.com/original_site.html).
