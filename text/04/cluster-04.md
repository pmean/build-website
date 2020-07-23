---
title: Sample size for cluster randomized trials
author: Steve Simon
source: http://www.pmean.com/04/cluster-04.html
date: 2004-11-30
categories:
- Blog post
tags:
- Sample size justification
output: html_document
---
**[StATS]: Sample size for cluster randomized trials
(November 30, 2004)**.

One of my favorite people to work with, Vidya Sharma, was asking me how
to compute the sample size in a cluster randomized trial. I had started
to write a web page about this, but never found the time to finish it.

A cluster randomized trial selects several large groups of patients and
then randomly assigns a treatment to all of the patients within a group.
A cluster randomized trial requires a larger sample size than for a
simple randomized trial. You always want as much homogeneity between the
treatment and control group. Homogeneity insures an apples to apples
comparison. Clusters also have homogeneity, and your inability to
randomize within a cluster means a missed opportunity to improve the
homogeneity of the treatment versus control comparison.

![04_cluster1.gif not found.](http://www.pmean.com/images/images/04/cluster-0401.png)

This figure illustrates how between and within standard deviations
contribute to the overall variation. The standard deviations combine in
a Pythagorean way:

![cluster2.gif not found.](http://www.pmean.com/images/images/04/cluster-0402.png)

The intraclass correlation (ICC) is a measure of homogeneity within
clusters. The formula is

![cluster3.gif not found.](http://www.pmean.com/images/images/04/cluster-0403.png)

If the ICC is large and/or if you have very large cluster sizes, then
cluster sampling will be inefficient. The design effect (DEFF) which is
also called the inflation factor is a measure of the inefficiency. The
formula for DEFF is

![cluster4.gif not found.](http://www.pmean.com/images/images/04/cluster-0404.png)

To estimate the total sample size in a cluster sample, first estimate an
unadjusted sample size using the traditional formula. For example, the
sample size for comparing two binomial proportions is

![cluster7.gif not found.](http://www.pmean.com/images/images/04/cluster-0405.png)

  Then multiply this sample size by the DEFF to get your adjusted sample
size.

![cluster8.gif not found.](http://www.pmean.com/images/images/04/cluster-0406.png)

  The number of clusters, c, is just

![cluster9.gif not found.](http://www.pmean.com/images/images/04/cluster-0407.png)

A publication in the International Journal of Epidemiology takes a
different perspective. It computes a factor k, which represents the
between cluster coefficient of variation. If you are comparing two
means, the traditional sample size formula is

![cluster5.gif not found.](http://www.pmean.com/images/images/04/cluster-0408.png)

but under a cluster sample with clusters of size m, you would need to
sample c clusters per group where

![cluster6.gif not found.](http://www.pmean.com/images/images/04/cluster-0409.png)

You can think of the k factor as a penalty for the cluster sample and if
k=0, there is effectively no penalty. As k, the between cluster
coefficient of variation, increases, you will need more and more data to
compensate for the increasing amount of homogeneity within clusters.

The formulas for sample sizes with proportions and with rates work
similarly.

**Cluster randomised trials in maternal and child health: implications
for power and sample size.** Reading R, Harvey I, Mclean M. Arch Dis
Child 2000: 82(1); 79-83.

**Statistical and design issues in studies of groups. Accounting for
within-group correlation.** Cummings P, Koepsell TD. Inj Prev 2002:
8(1); 6-7. [Full
text]](http://ip.bmjjournals.com/cgi/content/full/8/1/6)
[PDF]](http://ip.bmjjournals.com/cgi/reprint/8/1/6.pdf)

**Simple sample size calculation for cluster-randomized trials.** R. J.
Hayes, S. Bennett. Int J Epidemiol 1999: 28(2); 319-26.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10342698&dopt=Abstract)
[Abstract]](http://ije.oupjournals.org/cgi/content/abstract/28/2/319)
[PDF]](http://ije.oupjournals.org/cgi/reprint/28/2/319.pdf)

**Sample size formulae for intervention studies with the cluster as unit
of randomization.** Hsieh FY. Stat Med 1988: 7(11); 1195-201.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3201045&dopt=Abstract)

**[Sample Size and Design Effect: Introduction and Review
[PDF]](http://http://www.amstat.org/sections/srms/January2003Newsletter.pdf)**.
Shackman G, Newsletter of the Survey Research Methods Section, January
2003, page 8. Accessed on 2003-05-08.
www.amstat.org/sections/srms/January2003Newsletter.pdf

**[Sample size and design effect
[PDF]](http://www.albany.edu/~areilly/albany_asa/confweb01/abstract/Download/shackman.pdf)**.
Shackman G, Albany Chapter of the American Statistical Association 2001
conference. Accessed on 2003-05-08.
www.albany.edu/~areilly/albany_asa/confweb01/abstract/Download/shackman.pdf

**Additional links:**

-   [ije.oupjournals.org/cgi/reprint/28/2/319.pdf](http://ije.oupjournals.org/cgi/reprint/28/2/319.pdf)
-   [www-users.york.ac.uk/~mb55/clust/bupa.htm](http://www-users.york.ac.uk/~mb55/clust/bupa.htm)
-   [www.amia.org/pubs/symposia/D200657.PDF](http://www.amia.org/pubs/symposia/D200657.PDF)
-   [arjournals.annualreviews.org/doi/abs/10.1146/annurev.publhealth.21.1.147](http://arjournals.annualreviews.org/doi/abs/10.1146/annurev.publhealth.21.1.147)

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at [Category: Sample size
justification](../category/SampleSizeJustification.html).
<!---More--->
justification](../category/SampleSizeJustification.html).
this one at [Category: Sample size
with general help resources. You can also browse for pages similar to
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]: Sample size for cluster randomized trials
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at [Category: Sample size
justification](../category/SampleSizeJustification.html).
--->

