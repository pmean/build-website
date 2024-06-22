---
title: Lost page
author: Steve Simon
date: 2010-10-16
categories:
- Blog post
tags:
- Being updated
- Sample size justification
output: html_document
page_update: partial
---
P.Mean: Reconciling the various ways to calculate power for an ANOVA model (created 2010-10-16).

I am trying to reconcile all the different ways that power can be calculated for an ANOVA model. The various formulas are confusing.

Note the description of various software programs for power:

Several programs and web sites perform sample size and power calculations for 1-way and factorial ANOVAs. They differ with respect to how "effect size" is specified - with some it can be generated for you from treatment means that you specify, with others it is calculated as the ratio of between group to within group MSE, and others it is specified via the non-centrality parameter of the F distribution. Usually the null hypothesis is that the treatment means are all equal, but this isn't always the case. Usually treatment effects are assumed to be fixed, but a couple of programs have a "random" choice. http://www.epibiostat.ucsf.edu/biostat/sampsize.html#anova

You can derive power using basic mathematics. In an ANOVA model, the data values are represented by two subscripts. The first subscript, i, tells you which group the observation belongs to. The second subscript, j, tells you which subject in that group the observation belongs to. So Y32 represents an observation on the second patient of the third group. Let k be the number of groups and n the number of observations within each group. Also let N (= n*k) represent the total number of subjects across all groups.

Assume, for simplicity's sake that there are the same number of subjects in each group. In there is not the same number, then the formulas become a bit more tedious, but there are no serious problems or special exceptions to note.

The traditional ANOVA model assumes that Yij is normally distributed with mean ï¿½i and standard deviation σ. The parameter ï¿½ represents the overall population mean across all subjects. The symbols



represent the sample means for the ith group and the overall sample mean, respectively.

The test statistic statistic



has a central F distribution under the null hypothesis, and a noncentral F distribution under the alternative hypothesis. The noncentrality parameter (ncp) is



Notice that the numerator in the ncp is simply SSBetween with population parameters replacing the corresponding sample means. There is some inconsistency in notation, and for some sources, the noncentrality parameter would be the square root of the above formula.

Power is simply the probability that the noncentral F distributed variables exceeds the appropriate percentile of the central F distribution. Here's an example. Assume that there are k=3 groups and n=6 subjects within each group, for a total of N=18 observations. Also assume that



Then the ncp is



So power is simply the probability that a noncentral F with noncentrality parameter 3 exceeds the 95th percentile of a central F. Here's the R code to do this calculation.

f.crit <- qf(p=0.95,df1=2,df2=15,ncp=0)
powerf <- pf(f.crit,df1=2,df2=15,ncp=3,lower.tail=FALSE)

It produces a value of 0.2696.

Most power calculating software programs will not ask you for a noncentrality parameter. Some of them ask you to specify between and within standard deviations. The between standard deviation is the standard deviation of the k population means.



Note the use of (k-1) rather than k in the denominator. The easiest way to remember this is that (k-1) is the degrees of freedom for SSBetween.

Here is how PiFace does the power calculation for the problem described above.



Some software uses an effect size to calculate power. The effect size can be defined in terms of the sample statistics,



or in terms of the corresponding population values



Note the constants move around a bit between the sample and population versions of the effect size: n is in the numerator of the sample effect size and k is in the denominator of the population effect size. The mathematics work out if you assume that



which is not too outrageous an assumption.

Here's how G*Power uses the effect size to calculate power. You can compute the effect size as



except that G*Power expects to see the square root of this quantity



Plug that value in, to get the following result:



This all may seem a bit intimidating, but most power calculation software will help you. In G*Power, you can click on the DETERMINE button to get the following dialog box



that allows you to calculate the effect size if you know the means in each group.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/10/AnovaPower.html
[sim2]: http://www.pmean.com
