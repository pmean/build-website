---
title: Parametric versus nonparametric tests
author: Steve Simon
source: http://www.pmean.com/01/parametric-01.html
date: 2001-07-30
categories: Blog post
tags: Unusual data
output: html_document
---
****[StATS]:** Parametric versus nonparametric tests
(July 30, 2001)**

*Dear Professor Mean, When should I use a parametric test versus a
non-parametric test?*

A **parametric test**, of course, is a test that **requires a parametric
assumption**, such as normality. A **nonparametric test does not rely on
parametric assumptions** like normality.

Whether to choose a parametric versus nonparametric test is a matter of
judgement. But keep in mind several things.

First **a nonparametric test protects against some violations of
assumptions and not others**. The two sample t-test requires three
assumptions, normality, equal variances, and independence. The
non-parametric alternative, the Mann-Whitney-Wilcoxon test, does not
rely on the normality assumption, but you better make sure that you
still meet the equal variances and independence assumptions.

Second, you can often **use a transformation to better match some of the
assumptions** like normality and equal variances. The log transformation
can sometimes give you data that is much better behaved.

Third, you might select your statistic on the basis of **what others in
your field have used**. Is there a lot of precedent for the type of data
you are collecting to be non-normal?

Fourth, are you comfortable with the fact that the non-parametric test
may be evaluating a different measure than the parametric test? The
**Mann-Whitney-Wilcoxon test**, for example, provides you with an
**estimate of P[X>Y]**, probability that a randomly selected patient
from your first population has a larger value than a randomly selected
patient from the second population. This may be more interesting (or it
may be less interesting) than a **two-sample t-test** which provides you
with an estimate of the **difference in the average** between the first
and the second populations.

Fifth, do you have a very large sample size? **Large sample sizes are
more likely to show significant deviations from normality, but these are
the situations where non-normality is the least of your worries**
(thanks to the Central Limit Theorem). Some statisticians reserve
non-parametric tests for situations where the sample size is small.

**What would I recommend?**

I'm comfortable with a variety of statistical approaches. **If you have
already specified the statistical analysis in your protocol, then stick
with your protocol** unless your data suggests very strongly that a
different approach is called for. Don't deviate from your pre-specified
analysis without a good reason.

If you are in the protocol writing stage, I would suggest that you
propose **using a paired t-test, unless you have evidence (such as
through a normal probability plot) that the data are non-normal. In this
case, you will use a transformation of the data or a non-parametric test
instead.** Don't use a formal test of normality like the Shapiro-Wilk
test. A formal test of normality has the **very little power for small
sample sizes**, but this is **when non-normality is most troublesome**.
Even worse, a test has **lots of power for large sample sizes**, but
this is **when non-normality is least troublesome**.

**Finally, if you are in middle of the peer review process,** **listen
to your peer reviewers. They have a good feel for the standards and
practices in the area you are working in. Also,** **there's safety in
numbers. If you adopt an approach that the peer reviewers like, you are
probably using an approach that others in your discipline would like.**

****Further reading****

> **Parametric Tests**. Chong-Ho Yu (accessed 7/26/01)
> [seamonkey.ed.asu.edu/~alex/teaching/WBI/parametric_test.html](http://seamonkey.ed.asu.edu/~alex/teaching/WBI/parametric_test.html)
>
> **Measurement theory: Frequently asked questions**. Warren S. Sarle
> (accessed 7/26/01) <ftp://ftp.sas.com/pub/neural/measurement.html>

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Unusual
data](../category/UnusualData.html).
<!---More--->
data](../category/UnusualData.html).
for pages similar to this one at [Category: Unusual
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
****[StATS]:** Parametric versus nonparametric tests
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Unusual
data](../category/UnusualData.html).
--->

