---
title: Permutation tests for microarrays
author: Steve Simon
source: http://www.pmean.com/05/PermutationTests.html
date: 2005-07-27
category: Blog post
tags: Data mining
output: html_document
---
**[StATS]: Permutation tests for microarrays (July
27, 2005)**.

> A very simple approach to estimating the proportion of differentially
> expressed genes uses a permutation approach. The reference for this is
>
> -   **Empirical Bayes Analysis of a Microarray Experiment.** Efron B,
>     Tibshirani R, Storey JD, Tusher V. Journal of the American
>     Statistical Association 2001: 96(456); 1151-1160.
>     [\[PDF\]](http://faculty.washington.edu/~jstorey/papers/ETST_JASA_2001.pdf)
>
> Several related articles discuss how to use permutation tests to
> estimate the positive false discovery rate:
>
> -   **Statistical significance for genomewide studies.** Storey JD,
>     Tibshirani R. Proc Natl Acad Sci U S A 2003: 100(16); 9440-5.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12883005&dopt=Abstract)
>     [\[Abstract\]](http://www.pnas.org/cgi/content/abstract/100/16/9440)
>     [\[Full text\]](http://www.pnas.org/cgi/content/full/100/16/9440)
>     [\[PDF\]](http://www.pnas.org/cgi/reprint/100/16/9440.pdf)
> -   **A direct approach to false discovery rates.** Storey JD. J. R.
>     Statist. Soc. B 2002: 64(Part 3); 479-498.
>     [\[PDF\]](http://faculty.washington.edu/~jstorey/papers/directfdr.pdf)
> -   **The Positive False Discovery Rate: A Bayesian Interpretation and
>     the q-Value.** Storey JD. The Annals of Statistics 2003: 31(6);
>     2013-2035.
>     [\[PDF\]](http://faculty.washington.edu/~jstorey/papers/Storey_Annals_2003.pdf)
> -   **Identifying differentially expressed genes using false discovery
>     rate controlling procedures.** Reiner A, Yekutieli D, Benjamini Y.
>     Bioinformatics 2003: 19(3); 368-75.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12584122&dopt=Abstract)
>     [\[Abstract\]](http://bioinformatics.oxfordjournals.org/cgi/content/abstract/19/3/368)
>     [\[PDF\]](http://bioinformatics.oxfordjournals.org/cgi/reprint/19/3/368.pdf)
> -   **Strong control, conservative point estimation and simultaneous
>     conservative consistency of false discovery rates: a unified
>     approach.** Storey JD, Taylor JE, Siegmund D. J. R. Statist. Soc.
>     B 2004: 66(Part 1); 187-205.
>     [\[PDF\]](http://faculty.washington.edu/~jstorey/papers/623.pdf)
> -   **Empirical bayes methods and false discovery rates for
>     microarrays.** Efron B, Tibshirani R. Genet Epidemiol 2002: 23(1);
>     70-86.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12112249&dopt=Abstract)
>     [\[PDF\]](http://dcegod.nci.nih.gov/epi/EfronTibshirani%20FDR.pdf)
>
> When I have time, I\'ll show a simple example of this.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Data
mining](../category/DataMining.html).
<!---More--->
mining](../category/DataMining.html).
for pages similar to this one at [Category: Data
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Permutation tests for microarrays (July
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Data
mining](../category/DataMining.html).
--->

