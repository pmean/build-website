---
title: Cluster randomization
author: Steve Simon
source: http://www.pmean.com/03/cluster.html
date: 2003-05-09
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: complete
---

One of my favorite people to work with, Vidya Sharma, was asking me how to compute the sample size in a cluster randomized trial. I had started to write a web page about this, but never found the time to finish it.

A cluster randomized trial selects several large groups of patients and then randomly assigns a treatment to all of the patients within a group. A cluster randomized trial requires a larger sample size than for a simple randomized trial. You always want as much homogeneity between the treatment and control group. Homogeneity insures an apples to apples comparison. Clusters also have homogeneity, and your inability to randomize within a cluster means a missed opportunity to improve the homogeneity of the treatment versus control comparison.

![](http://www.pmean.com/new-images/03/cluster1.gif){width="432" height="216"}

This figure illustrates how between and within standard deviations contribute to the overall variation. The standard deviations combine in a Pythagorean way:

![](http://www.pmean.com/new-images/03/cluster2.gif){width="278" height="29"}

The intraclass correlation (ICC) is a measure of homogeneity within clusters. The formula is

![](http://www.pmean.com/new-images/03/cluster3.gif){width="234" height="46"}

If the ICC is large and/or if you have very large cluster sizes, then cluster sampling will be inefficient. The design effect (DEFF) which is also called the inflation factor is a measure of the inefficiency. The formula for DEFF is

![](http://www.pmean.com/new-images/03/cluster4.gif){width="156" height="26"}

To estimate the total sample size in a cluster sample, first estimate an unadjusted sample size using the traditional formula. For example, the sample size for comparing two binomial proportions is

![](http://www.pmean.com/new-images/03/cluster7.gif){width="438" height="65"}

Then multiply this sample size by the DEFF to get your adjusted sample size.

![](http://www.pmean.com/new-images/03/cluster8.gif){width="293" height="26"}

The number of clusters, c, is just

![](http://www.pmean.com/new-images/03/cluster9.gif){width="128" height="51"}

A publication in the International Journal of Epidemiology takes a different perspective. It computes a factor k, which represents the between cluster coefficient of variation. If you are comparing two means, the traditional sample size formula is

![](http://www.pmean.com/new-images/03/cluster5.gif){width="233" height="61"}

but under a cluster sample with clusters of size m, you would need to sample c clusters per group where

![](http://www.pmean.com/new-images/03/cluster6.gif){width="408" height="70"}

You can think of the k factor as a penalty for the cluster sample and if k=0, there is effectively no penalty. As k, the between cluster coefficient of variation, increases, you will need more and more data to compensate for the increasing amount of homogeneity within clusters.

The formulas for sample sizes with proportions and with rates work similarly.

#### Further reading

Martin Bland. Sample size in guideline trials. Available in [html format][bla1].

Jen-Hsiang Chuang, George Hripcsak, Daniel F. Heitjan. Design and Analysis of Controlled Trials in Naturally Clustered Environments: Implications for Medical Informatics. Journal of the American Medical Informatics Association, Volume 9, Issue 3, May 2002, Pages 230–238. Availabe in [html format][chu1].

Peter Cummings, Thomas D Koepsell. Statistical and design issues in studies of groups. Accounting for within-group correlation. Injury Prevention 2002: 8(1); 6-7. Avialable in [html format][cum1] or [pdf format][cum2].

R J Hayes, S Bennett. Simple sample size calculation for cluster-randomized trials. International Journal of Epidemiology 1999: 28(2); 319-26. Available in [pdf format][hay1].

FY HSieh. Sample size formulae for intervention studies with the cluster as unit of randomization. Statistics in Medicine 1988: 7(11); 1195-201. Not freely available, here is the [Pubmed entry][hsi1]

William Kalsbeek and Geraldo Heiss. Building Bridges Between Populations and Samples in Epidemiological Studies. Annual Review of Public Health 2000: 21; 147-169. Available in [html format][kal1] or [pdf format][kal2]

Denise Kendrick, Patricia Marsh, Katherine Fielding, Paul Miller. Preventing injuries in children: cluster randomised controlled trials in primary care. British Medical Journal 1999: 318(7189); 980-83. Available in [html format][ken1] or [pdf format][ken2].

Richard Reading, Ian Harvey, Mary Mclean on behalf of the CAB and Family Health Study Team. Cluster randomised trials in maternal and child health: implications for power and sample size. Archives of Disease in Childhood 2000: 82(1); 79-83. Available in [html format][rea1] or [pdf format][rea2]

Gene Shackman. Sample Size and Design Effect: Introduction and Review. Newsletter of the Survey Research Methods Section, January 2003, page 8. This is no longer available on the web.

Gene Shackman. Sample size and design effect. Presented at the 2001 conference of the Albany Chapter of the American Statistical Association. Avaliable in [pdf format][sha1].

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[bla1]: https://www-users.york.ac.uk/~mb55/clust/bupa.htm
[chu1]: https://academic.oup.com/jamia/article/9/3/230/748135
[cum1]: https://injuryprevention.bmj.com/content/8/1/6.full
[cum2]: https://injuryprevention.bmj.com/content/injuryprev/8/1/6.full.pdf
[hay1]: https://academic.oup.com/ije/article-pdf/28/2/319/18477691/280319.pdf
[hsi1]: https://pubmed.ncbi.nlm.nih.gov/3201045/
[kal1]: https://www.annualreviews.org/doi/full/10.1146/annurev.publhealth.21.1.147
[kal2]: https://www.annualreviews.org/doi/pdf/10.1146/annurev.publhealth.21.1.147
[ken1]: http://bmj.com/cgi/content/full/318/7189/980
[ken2]: http://bmj.com/cgi/reprint/318/7189/980.pdf
[rea1]: http://adc.bmjjournals.com/cgi/content/full/82/1/79
[rea2]: http://adc.bmjjournals.com/cgi/reprint/82/1/79.pdf
[sha1]: https://moam.info/sample-size-and-design-effect-oit-web-services_59b10d0c1723ddd8c6ad2b95.html
[sim1]: http://www.pmean.com/03/cluster.html
[sim2]: http://www.pmean.com/original_site.html
