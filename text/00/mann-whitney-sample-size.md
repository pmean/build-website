---
title: Sample size for the Mann-Whitney U test
source: http://www.pmean.com/00/mann.html
author: Steve Simon
date: 2000-09-28
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: partial
---
*Dear Professor Mean, I need to calculate the sample size for the
Mann-Whitney U test. How do I do this? -- Bewildered Bob*

Dear Bewildered,

Just to clarify things, Professor Mean should note that t**he
Mann-Whitney U test is sometimes called the Wilcoxon rank sum test**.
There are independent publications in the mid 1940's from Mann and
Whitney and from Wilcoxon that outline a nonparametric approach to
comparing two independent groups. The two tests have different forms but
you can show that the two forms are equivalent. Some statisticians in
the art of compromise have named the test after all three people, but
there is still a dispute about whether it should be called the
Wilcoxon-Mann-Whitney test or the Mann-Whitney-Wilcoxon test. After that
explanation, you are probably more bewildered than ever.

There are several approaches you can take for computing sample size. **A
simple approximate approach uses information about the Pitman Asymptotic
Relative Efficiency** (ARE) to estimate sample size. The ARE compares
the efficiency of two competing test statistics. It represents the an
asymptotic limit of the ratio of sample sizes needed to achieve equal
power. The limit is evaluated as the sample size increases without bound
and the alternative being considered shrinks towards the null value. To
calculate an ARE requires some heavy duty mathematics, but someone else
has already done that work for you.

So to estimate sample size, you **compute the sample size needed for a
two-sample t-test, and then adjust the sample size based on the ARE of
the Mann-Whitney U relative to the t-test**. The trick, though, is that
the ARE depends on the underlying distribution. That is a bit
surprising, but the Mann-Whitney U test statistic is distribution free
only under the null hypothesis. When the alternative hypothesis is true,
the distribution of the Mann-Whitney U depends quite a bit on the
underlying distribution.

This leads you to a dilemma. You probably want to use the Mann-Whitney U
test because you can't assume with any confidence what the underlying
distribution is. There are several approaches you can take.

First, you can **select a distibution that you believe is reasonable**,
and estimate sample size using that distribution.

For example, you might assume a **normal distribution**. Under the
normal distribution the ARE of the Mann-Whitney U relative to the t-test
is 0.955. Estimate the sample size for a t-test and then divide that
sample size by 0.955. You will get a slightly larger sample size, but
consider the extra data points as insurance against a possible violation
of the underlying assumptions.

If you assume a **logistic distribution**, the ARE is 1.097. The
logistic distribution has a symmetric bell shaped curve like the normal
distribution but it has a slightly greater weight in the tails of the
curve. This means that the logistic distribution is slighlty more likely
to produce outliers than the normal distribution. If you believe that
the logistic distribution is a reasonable distribution for your data,
then you could compute the sample size for a t-test and divide it by
1.097. Interestingly, this tells you that the Mann-Whitney U is slightly
more efficient when your data has a slightly greater tendency to produce
outliers. One intuitive explanation is that the use of ranking in the
Mann-Whitney U test reduces the influence of outliers.

You could **examine a worst case scenario**, since the A.R.E. for the
Mann-Whitney U is never less than 0.864. So estimate the sample size for
a t-test and divide by 0.864. This is a sample size that is big enough
no matter what the underlying distribution.

**All of the calculations described above are approximate**, since they
rely on asymptotic results (remmeber what the A in ARE stands for!). You
can also use this ARE approach to estimating sample size for other
nonparametric procedures, such as the sign test, the Wilcoxon signed
rank test (not be be confused with the Wilcoxon rank sum test), and the
Spearman correlation test.

**Update from my weblog (March 8, 2005)**

I received by email a link to

-   **[Computing sample size for data to be analyzed with nonparametric
    tests.](http://www.graphpad.com/library/BiostatsSpecial/article_154.htm%20)**.
    GraphPad Software. Accessed on 2005-03-08.
    www.graphpad.com/library/BiostatsSpecial/article_154.htm

which offers the following advice:

*If you plan to use a nonparametric test, compute the sample size
required for a t test and add 15%.*

This assumes a reasonably high number of subjects (at least a few dozen)
and a distribution which is not really unusual. I had not heard this
rule; the author cites pages 76-81 of Lehmann, Nonparametrics:
Statistical Methods Based on Ranks [[BookFinder4U
link]](http://www.bookfinder4u.com/detail/013997735X.html). I don't
have this book, so I can only guess as to the basis for this formula.

This rule could be based, I suppose, on the lower bound for the
Asymptotic Relative Efficiency (ARE) of the Mann Whitney U test versus
the t-test, which is 0.864. This says that no matter what the
distribution, the ARE of the Mann Whitney U test can never be worse than
0.864 for a reasonably broad class of probability distributions.
Inverting that gives you an increase in the sample size by a factor of
1.157. The same statement would also apply for the Wilcoxon Signed Ranks
test, which can never have an ARE less than 0.864 compared to the paired
t-test.

**Summary**

Bewildered Bob does not know **how to estimate an appropriate sample
size for the Mann-Whitney U test**, a nonparametric test for the
comparison of two independent groups. Professor Mean explains that **you
can find an approximate size by estimating the sample size for a t-test
and then adjusting this size size based on the Asymptotic Relative
Efficiency** of the Mann-Whitney U test.

**Further reading**

A technical description of ARE appears in chapter 5 of Randles and
Wolfe. An alternate formula for sample size for the Mann-Whitney U test
appears on page 120 of Hollander and Wolfe. There are other published
approaches to sample size, which Professor Mean will add to these pages
when time permits.

1.  **Nonparametric Statistical Methods, Second Edition.\
    **Hollander M, Wolfe D.\
    New York NY: John Wiley and Sons, Inc (1999).\
    ISBN: 0-471-19045-4.
2.  **Introduction to the Theory of Nonparametric Statistics**.\
    Randles RH, Wolfe DA.**\
    **New York, John Wiley & Sons (1979).\
    ISBN: 0-471-04245-5.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/mann.html
[sim2]: http://www.pmean.com/original_site.html
