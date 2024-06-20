---
title: A totally negative microarray experiment
author: Steve Simon
source: http://www.pmean.com/05/NegativeMicroarray.html
date: 2005-10-14
categories:
- Blog post
tags:
- Genomics analysis
output: html_document
page_update: partial
---
**[StATS]:** **A totally negative microarray
experiment (October 14, 2005)**.

I've been cleaning out my old emails and am finding some real gems of
good advice. Someone wrote into the Bioconductor email list wondering
what to do when the lowest adjusted p-value in the entire experiment was
still very large (0.66). A nice response outlined three strategies:

1.  Filter the genes prior to statistical analysis. There are a variety
    of filters that people have used. With a smaller list of genes to
    start from, the adjustments to the p-values are less severe.
2.  Select a set of genes that you suspect a priori to be differentially
    expressed. You might select, for example, all genes that belong to a
    particular GO (Gene Ontology) category.
3.  Ignore the adjusted p-values and just select the 10, 25, or however
    many genes with the smallest unadjusted p-values. These may not be
    statistically significant, but they still may be worth following
    through with using quantitative PCR or another confirmatory
    approach. If the quantitative PCR is positive, you have validation
    outside the microarray experiment that these genes are indeed
    differentially expressed.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/NegativeMicroarray.html
[sim2]: http://www.pmean.com
