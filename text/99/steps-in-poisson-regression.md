---
title: Poisson regression model
source: http://www.pmean.com/99/poisson.html
author: Steve Simon
date: 1999-09-21
categories:
- Blog post
tags:
- Being updated
- Poisson regression
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean
- I have just received feedback on a manuscript
under review in which one reviewer recommended use of Poisson
regression. I am not familiar with this technique--when it is
appropriate and/or recommended
- what assumptions the data must meet,
whether the procedure in SAS? SPSS? I would appreciate a reference
and/or citation to article(s) in which it has been used. Thanks! --
Denied Denise*

Dear Denied,

I always distrust reviewers who insist on a specific statistical method.
It's probably that they used this technique for their dissertation and
they think that everyone else should follow their pioneering lead. This
is not unlike the saying that when your only tool is a hammer,
everything looks like a nail to you.

Is your data a nail or not? Well
- **Poisson regression assumes that your
data follows a Poisson distribution
- a distribution that we frequently
encounter when we are counting a number of events**. The distribution
was first used to characterize deaths by horse kicks in the Prussian
army. Let's hope that your application is not as unpleasant.

Poisson distributions have three special problems that make traditional
(i.e.
- least squares) regression problematic.

1.  The Poisson distribution is **skewed**; traditional regression
    assumes a symmetric distribution of errors.
2.  The Poisson distribution is **non-negative**; traditional regression
    might sometimes produce predicted values that are negative.
3.  For the Poisson distribution
- the **variance increases as the mean
    increases**; traditional regression assumes a constant variance.

In contrast
- the Poisson regression model is not troubled by any of the
above conditions. In particular
- Poisson regression implicitly uses a
log transformation which adjusts for the skewness and prevents the model
from producing negative predicted values. Poisson regression also models
the variance as a function of the mean.

**Alternatives to Poisson regression**

There are at least two good alternatives to the Poisson regression
model. The negative binomial distribution is also a good model for
counts and you can derive this distribution quite naturally as an
extension to the Poisson distribution. I think you can get this
distribution by placing a prior distribution on the mean parameter of
the Poisson. The negative binomial distribution has a variance which
is larger than the mean. In contrast
- the Poisson distribution has a
variance which is equal to the mean.

There are also models that incorporate Poisson probabilities but then
allow the probability of a zero to be a bit larger or a lot larger
than what Poisson might determine. These are sometimes called ZIP
(Zero Inflated Poisson) models. Think of this as a mixture
distribution where you choose zero with a certain probability and a
Poisson random variable otherwise. This is also a quite natural
extension of the Poisson distribution.

If you're just starting out
- try the Poisson model first
- as it is
much simpler than the others.

**Further reading**

Poisson regression is a special case of the Generalized Linear Model.
This model deserves the name "Generalized" because it also includes
traditional regression and logistic regression under its umbrella. If
you want to understand Poisson regression
- you need to understand the
Generalized Linear Model.

The classic reference book is McCullagh P. and Nelder
- J.A. (1983)
Generalized Linear Models. London England: Chapman and Hall. This is
still the best reference
- in my humble opinion
- in spite of its age.

**Can you use SAS or SPSS?**

SAS has a procedure GENMOD that will compute a generalized linear
model. SPSS does not yet have a module for generalized linear models,
but can fit a Poisson regression using the GENLOG procedure. There are
a few tricks that you need to worry about in SPSS if your independent
variable is continuous or if you have zero counts for some of your
data. Details can be found at the SPSS web site:

<http://www.spss.com/tech/answer/result.cfm?tech_tan_id=100006204>

**What if my data is a rate and not a count?**

Poisson regression can also be used to analyze rate data. Rates are
simply counts divided by a measure like area or time. For example,
infection rates are often measured as a number per patient day of
exposure. To fit a model using rates
- you need to have the original
counts (the numerator of the rate) and the measure of time/area (the
denominator of the rate). The Poisson model is fit to the counts and
uses the log of the denominator as an offset variable. The details are
a bit messy
- so refer to the appropriate software manual.

**Single group count**

Suppose we have a hospital floor and we count a total of 25 nosocomial
infections in a month. Our best estimate
- then
- of the infection rate
is 25 per month or 240 per year. We can place confidence limits around
this value two ways.

For the Poisson distribution
- the variance equals the mean. The
standard deviation would then be equal to the square root of the mean.
So you can compute an approximate 95% confidence interval by going up
and down by two standard deviations. The square root of 25
- of course,
is 5
- so an approximate 95% confidence interval would be 15 to 35.

Second
- you can compute an exact confidence interval using Poisson
probabilities. The details appear at two of the web sites listed
below. For 25 events
- the exact 95% confidence interval is 16.2 to
36.9.

The are at least two other approaches based on research by Daly
[PubMed
citation]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=1424580&dopt=Citation)
and Byar (I could not find a good citation).

**Single group rate**

  Let's make the example a bit more complicated. Suppose there were a
total of 500 patient days of exposure during that month. Then the rate
of nosocomial infections would be 0.05 per patient day or 50 per
thousand patient days. We can get confidence intervals for this rate
by simply adjusting the confidence intervals above in proportion. So
the exact confidence interval for the rate would be

  16.2 / 500 = 0.0324
- or 32 per thousand patient days

and

36.9 / 500 = 0.0738 or 74 per thousand patient days.

**Two group counts**

Suppose we have two groups and we measure a count on both groups. How
would you test whether these groups are similar? To make this question
more precise
- assume that

![](../../../web/images/99/poisson01.gif)

and that these two variables are independent. We want to test the
hypothesis

![](../../../web/images/99/poisson02.gif)

There are several approaches that work well. The normal approximation
statistic

![](../../../web/images/99/poisson03.gif)

tests the hypothesis that

![](../../../web/images/99/poisson04.gif)

You can also get a normal approximation for the term

![](../../../web/images/99/poisson05.gif)

which has an approximate standard deviation of

![](../../../web/images/99/poisson06.gif)

so the test statistic

![](../../../web/images/99/poisson07.gif)

tests the hypothesis that

![](../../../web/images/99/poisson08.gif)

You can also use a conditional argument to show that

![](../../../web/images/99/poisson09.gif)

is a binomial proportion and the hypothesis

![](../../../web/images/99/poisson10.gif)

is equivalent to the hypothesis that the two counts come from the same
Poisson distribution.

**Two group rates**

Suppose you have two counts
- but they have to be adjusted for
different amounts of time or different numbers of patients at risk.  
Let C~1~ and C~2~ are the counts for the two groups and T~1~ and T~2~
represent the amount of time at risk Then you would compute rates R~1~
and R~2~ as

![](../../../web/images/99/poisson11.gif)

![](../../../web/images/99/poisson12.gif)

You can rely on the normal approximation to the Poisson distribution
again.

![](../../../web/images/99/poisson13.gif)

or you can use a log transformation. Interestingly
- the denominator
for the log of the ratio of rates is identtical to the denominator for
the log of the ratio of counts because

![](../../../web/images/99/poisson14.gif)

The last term is a constant and does not affect measures of
variability. Thus
- the test statistic would be

![](../../../web/images/99/poisson15.gif)

Finally
- you can apply the same binomial argument to the rates
- but
there is a slight variation. It is easy to show that

![](../../../web/images/99/poisson16.gif)

implies that

![](../../../web/images/99/poisson17.gif)

Conditioning on the total
- the left hand side is a binomial random
variable. But rather than testing whether this binomial proportion is
equal to 0.5
- you would test for a value that would be larger than 0.5
if T~1~ > T~2~ and a value less than 0.5 if   T~1~ > T~2~. For
example if   T~1~ is twice as large as T~2~ then the two rates are
equal if   C~1~ accounts for 2/3 of the total counts and C~2~ .accounts
for 1/3 of the total counts.

Example: In a study of ankle sprains
- athletes wearing cushioned soles
sustained 41 sprains while athletes wearing uncushioned soles
sustained only 27 sprains. There were not an equal number of athletes
in each group and these athletes did not play in exactly the same
number of games. The researchers defined an exposure as a single
athlete wearing shoes of a particular type in a game or in a practice.
There were 30,724 exposures among athletes wearing cushioned soles and
13,767 exposures among athletes wearing uncushioned soles.

You can compute the rates per thousand exposures as

`41 / 30.724 = 1.33`   and

`27 / 13.767 = 1.96`.

The difference in rates is 0.63 and the standard error is 0.43.

http://www.pubmedcentral.nih.gov/articlerender.fcgi?tool=pubmed&pubmedid=18523571

**Determining sample sizes**

[To be added]

**Further reading**

**Exact confidence interval for Poisson count**. Tomas Aragon and Travis
Porco. Accessed on October 29
- 2002.
<http://www.medepi.org/epitools/rfunctions/cipois.html>

**Confidence Intervals for the Mean of a Poisson Distribution**. P.D. M.
Macdonald. Accessed on October 29
- 2002.
<http://www.math.mcmaster.ca/peter/s743/poissonalpha.html>

**Summary**

Denied Denise had a manuscript rejected. The reviewers suggested that
she use Poisson regression. Professor Mean explains that you should
consider using Poisson regression when you are trying to predict a
count or a rate.

**Resources**

**Determining the size of a total purchasing site to manage the
financial risks of rare costly referrals: computer simulation model.**
M. O. Bachmann
- G. Bevan. Bmj 1996: 313(7064); 1054-7.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8898599&dopt=Abstract)
[Abstract]](http://bmj.bmjjournals.com/cgi/content/abstract/313/7064/1054)
[Full
text]](http://bmj.bmjjournals.com/cgi/content/full/313/7064/1054)

**Influence of changing travel patterns on child death rates from
injury: trend analysis.** C. DiGuiseppi
- I. Roberts
- L. Li. Bmj 1997:
314(7082); 710-3.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9116546&dopt=Abstract)
[Abstract]](http://bmj.bmjjournals.com/cgi/content/abstract/314/7082/710)
[Full
text]](http://bmj.bmjjournals.com/cgi/content/full/314/7082/710)

**Generalized Linear Models**. McCullagh
- P. and Nelder
- J.A. (1983).
London
- England
- Chapman and Hall
- Inc. ISBN: 0-412-23850-0.

**Risk ratio and rate ratio estimation in case-cohort designs:
hypertension and cardiovascular mortality.** E. G. Schouten
- J. M.
Dekker
- F. J. Kok
- S. Le Cessie
- H. C. Van Houwelingen
- J. Pool
- J. P.
Vanderbroucke. Stat Med 1993: 12(18); 1733-45.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8248665&dopt=Abstract)

**Criticism of a hierarchical model using Bayes factors.** J. H. Albert.
Statistics in Medicine 1999: 18(3); 287-305.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10070675&dopt=Abstract)

**Permutation Tests for Joinpoint Regression with Applications to Cancer
Rates.** Hyune-Ju Kim
- Michael P. Fay
- Eric J. Feuer
- Douglas N.
Midthune. Statistics in Medicine 2000: 19(3); 335-351.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10649300&dopt=Abstract)

**[Exact confidence interval for Poisson
count](http://www.medepi.org/epitools/rfunctions/cipois.html)**. Tomas
Aragon
- Travis Porco. Accessed on 2002-11-27.
www.medepi.org/epitools/rfunctions/cipois.html

**Coping with extra poisson variability in the analysis of factors
influencing vaginal ring expulsions [letter; comment].** CG Demetrio,
MS Ridout. Statistics in Medicine 1994: 13(8); 873-76.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8047741&dopt=Abstract)

**The comparison of two poisson-distributed observations.** K Detre.
Biometrics 1970: ?(?); 851-54.

**Regression analyses of counts and rates: poisson
- overdispersed
poisson
- and negative binomial models.** William Gardner. Psychological
Bulletin 1995: 118(3); 392-404.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7501743&dopt=Abstract)

**Poisson regression analysis in clinical research.** F Kianifard
- P. P.
Gallo. Journal of Biopharmaceutical Statistics 1995: 5(1); 115-29.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7613557&dopt=Abstract)

**Maximum (Max) and Mid-P Confidence Intervals and p Values for the
Standardized Mortality and Incidence Ratios.** Pandurang M. Kulkarni,
Ram C. Tripathi
- Joel E. Michalek. American Journal of Epidemiology
1998: 147(1); 83-86.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9440403&dopt=Abstract)

**Estimating the ratio of two Poisson rates.** Robert Price.
Computational Statistics & Data Analysis 2000: 34345-56.

**The application of poisson random-effects regression models to the
analyses of adolescents; current level of smoking.** Ohidul Siddiqui.
Preventive Medicine 1999: 2992-101.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10446034&dopt=Abstract)

**Negative binomial and mixed Poisson regression.** JF Lawless. The
Canadian Journal of Statistics 1987: 15(3); 209-25.

**Linear and nonlinear techniques for the deconvolution of hormone
time-series.** G. De Nicolao
- D. Liberati. IEEE Trans Biomed Eng 1993:
40(5); 440-55.

**Additional power computations for designing comparative Poisson
trials.** C. C. Brown
- S. B. Green. American Journal of Epidemiology
1982: 115(5); 752-8.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7081205&dopt=Abstract)

**Power computations for designing comparative poisson trials.** M Gail.
Biometrics 1974: 30(?); 231-37.

**[A more powerful test for comparing two Poisson
means](http://www.mathpreprints.com/math/Preprint/krishna/20021020/1/?=&coll=Selection)**.
K. Krishnamoorthy
- Jessica Thomson
- University of Louisiana at
Lafayette. Accessed on 2003-02-10.
www.mathpreprints.com/math/Preprint/krishna/20021020/1/?=&coll=Selection

**Power in comparing Poisson means: I. One-sample test.** LS Nelson.
Journal of Quality Technology 1991: 23(1); 68-70.

**Power in comparing Poisson means: II. Two-sample test.** LS Nelson.
Journal of Quality Technology 1991: 23(2); 163-66.

**Sample size for Poisson regression.** DF Signorini. Biometrika 1991:
78(2); 446-50.

**Application of sample survey methods for modelling ratios to incidence
densities.** L. M. Lavange
- L. L. Keyes
- G. G. Koch
- P. A. Margolis.
Stat Med 1994: 13(4); 343-55.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/poisson.html
[sim2]: http://www.pmean.com/original_site.html
