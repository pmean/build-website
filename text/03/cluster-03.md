---
title: Cluster randomization
author: Steve Simon
date: 2003-05-09
categories:
- Blog post
tags:
- Sample size justification
output: html_document
---
> One of my favorite people to work with, Vidya Sharma, was asking me
> how to compute the sample size in a cluster randomized trial. I had
> started to write a web page about this, but never found the time to
> finish it.
>
> A cluster randomized trial selects several large groups of patients
> and then randomly assigns a treatment to all of the patients within a
> group. A cluster randomized trial requires a larger sample size than
> for a simple randomized trial. You always want as much homogeneity
> between the treatment and control group. Homogeneity insures an apples
> to apples comparison. Clusters also have homogeneity, and your
> inability to randomize within a cluster means a missed opportunity to
> improve the homogeneity of the treatment versus control
> comparison.![](../weblog/images/04_cluster1.gif){width="432"
> height="216"}
>
> This figure illustrates how between and within standard deviations
> contribute to the overall variation. The standard deviations combine
> in a Pythagorean way:

![](../weblog/images/cluster2.gif){width="278" height="29"}

> The intraclass correlation (ICC) is a measure of homogeneity within
> clusters. The formula is

![](../weblog/images/cluster3.gif){width="234" height="46"}

> If the ICC is large and/or if you have very large cluster sizes, then
> cluster sampling will be inefficient. The design effect (DEFF) which
> is also called the inflation factor is a measure of the inefficiency.
> The formula for DEFF is

![](../weblog/images/cluster4.gif){width="156" height="26"}

> To estimate the total sample size in a cluster sample, first estimate
> an unadjusted sample size using the traditional formula. For example,
> the sample size for comparing two binomial proportions is

![](../weblog/images/cluster7.gif){width="438" height="65"}

> <U+FFFD>Then multiply this sample size by the DEFF to get your adjusted
> sample size.

![](../weblog/images/cluster8.gif){width="293" height="26"}

> <U+FFFD>The number of clusters, c, is just

![](../weblog/images/cluster9.gif){width="128" height="51"}

> A publication in the International Journal of Epidemiology takes a
> different perspective. It computes a factor k, which represents the
> between cluster coefficient of variation. If you are comparing two
> means, the traditional sample size formula is

![](../weblog/images/cluster5.gif){width="233" height="61"}

> but under a cluster sample with clusters of size m, you would need to
> sample c clusters per group where

![](../weblog/images/cluster6.gif){width="408" height="70"}

> You can think of the k factor as a penalty for the cluster sample and
> if k=0, there is effectively no penalty. As k, the between cluster
> coefficient of variation, increases, you will need more and more data
> to compensate for the increasing amount of homogeneity within
> clusters.
>
> The formulas for sample sizes with proportions and with rates work
> similarly.

**Additional links:**

-   [www-users.york.ac.uk/\~mb55/clust/bupa.htm](http://www-users.york.ac.uk/~mb55/clust/bupa.htm)
-   [www.amia.org/pubs/symposia/D200657.PDF](http://www.amia.org/pubs/symposia/D200657.PDF)

**Further reading**

1.  **Statistical and design issues in studies of groups. Accounting for
    within-group correlation.** Cummings P, Koepsell TD. Inj Prev 2002:
    8(1); 6-7. [\[Full
    text\]](http://ip.bmjjournals.com/cgi/content/full/8/1/6)
    [\[PDF\]](http://ip.bmjjournals.com/cgi/reprint/8/1/6.pdf)
2.  **Simple sample size calculation for cluster-randomized trials.**
    Hayes RJ, Bennett S. Int J Epidemiol 1999: 28(2); 319-26.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10342698&dopt=Abstract)
    [\[Abstract\]](http://ije.oupjournals.org/cgi/content/abstract/28/2/319)
    [\[PDF\]](http://ije.oupjournals.org/cgi/reprint/28/2/319.pdf)
3.  **Sample size formulae for intervention studies with the cluster as
    unit of randomization.** Hsieh FY. Stat Med 1988: 7(11); 1195-201.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3201045&dopt=Abstract)
4.  **Building Bridges Between Populations and Samples in
    Epidemiological Studies.** Kalsbeek W, Heiss G. Annu Rev. Public
    Health 2000: 21; 147-169.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10884950&dopt=Abstract)
    [\[Abstract\]](http://arjournals.annualreviews.org/doi/abs/10.1146/annurev.publhealth.21.1.147)
5.  **Preventing injuries in children: cluster randomised controlled
    trials in primary care.** Kendrick D, Marsh P, Fielding K, Miller P.
    British Medical Journal 1999: 318(7189); 980-83.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10195971&dopt=Abstract)
    [\[Abstract\]](http://bmj.com/cgi/content/abstract/318/7189/980)
    [\[Full text\]](http://bmj.com/cgi/content/full/318/7189/980)
    [\[PDF\]](http://bmj.com/cgi/reprint/318/7189/980.pdf)
6.  **Cluster randomised trials in maternal and child health:
    implications for power and sample size.** Reading R, Harvey I,
    Mclean M. Arch Dis Child 2000: 82(1); 79-83.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10630921&dopt=Abstract)
    [\[Abstract\]](http://adc.bmjjournals.com/cgi/content/abstract/82/1/79)
    [\[Full text\]](http://adc.bmjjournals.com/cgi/content/full/82/1/79)
    [\[PDF\]](http://adc.bmjjournals.com/cgi/reprint/82/1/79.pdf)
7.  **[Sample Size and Design Effect: Introduction and Review
    \[pdf\]](http://http://www.amstat.org/sections/srms/January2003Newsletter.pdf)**.
    Shackman G, Newsletter of the Survey Research Methods Section,
    January 2003, page 8. Accessed on 2003-05-08.
    www.amstat.org/sections/srms/January2003Newsletter.pdf
8.  **[Sample size and design effect
    \[pdf\]](http://www.albany.edu/~areilly/albany_asa/confweb01/abstract/Download/shackman.pdf)**.
    Shackman G, Presented at the 2001 conference of the Albany Chapter
    of the American Statistical Association. Accessed on 2003-05-08.
    www.albany.edu/\~areilly/albany\_asa/confweb01/abstract/Download/shackman.pdf

You can find an [earlier version](http://www.pmean.com/03/cluster.html) of this page on my [original website](http://www.pmean.com/original_site.html).
