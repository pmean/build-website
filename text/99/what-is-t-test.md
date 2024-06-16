---
title: T-test
source: http://www.pmean.com/99/ttest.html
author: Steve Simon
date: 1999-04-18
categories:
- Blog post
tags:
- Hypothesis testing
output: html_document
page_update: partial
---

*Dear Professor Mean
- How do you analyze a t-test. I have a t-test
value
- and I know that I have to compare it to a t-distribution. I'm
not sure how to do that.*

<!---More--->

A t-test covers a wide range of tests. It appears when you are **testing whether the mean for a given group has exceeded a certain standard**. It appears when you **compare the means of two different groups**. It also appears in **linear regression models**.

When you **take a statistic and dividie by its estiamted variation,
which is often known as the standard error**
- the result is a t-test.
You would compare this t-test to percentiles from a t distribution.
Tables of these percentiles are found in the back of most statistical
text books.

Most computer software will provide a p-value to accompany the t-test.
**A p-value makes the use of t percentile tables unnecessary**.

**Short explanation**

A simple interpretation of the t-test is that it measures **how many
standard errors our statistical estimate is from a hypothesized value**.
A large positive t-test implies that our estimate is quite a bit larger
than the hypothesized value. A large negative t-test implies that our
estimate is quite a bit smaller than our hypothesized value.

**More details**

The behavior of the t-test depends greatly on how good our standard
error is. If we have a very precise estimate of the variation in our
statistic
- then the t-test has a distribution that is very close to a
standard normal distribution. If we have an imprecise estimate of the
variation in our statistic
- then the t-test will be more variable than a
standard normal distribution.

We can quantify how good our standard error is by the **degrees of
freedom**. The degrees of freedom is related to **how much data we
have** and **how many things we are trying to estimate** with that data.

Here's an example of how a t-test would behave if it had 25 degrees of
freedom. Notice that it looks quite a bit like a standard normal
distribution.

![](../../../web/images/99/ttest-9901.gif)
height="366"}

It looks and behaves quite a bit like a standard normal distibution.
Here's a t-distribution with 2 degrees of freedom.

![](../../../web/images/99/ttest-9902.gif)
height="366"}

It has the same bell-hspaed curve
- but notice that the tails of the
distribution don't touch the axis
- even at plus or minus 4. That means
that extreme values are more likely with this t-distribution than the
previous one.

Usually
- you **compare your t-test with a value from a t-percentile
table**. Extreme values of the t-test (for example
- a value larger than
the 95th percentile) indicate that your statistic is more extreme than
you would expect from sampling error. If you get a t-test from computer
software like SPSS
- then you will usually get a p-value with your
t-test. If your p-value is small
- that implies that your t-test is more
extreme than most percentiles from a t-distribution.

**Example**

We have a **sample of 30 informational pamphlets**. We record the
reading level of each pamphlet and notice that the **average level is
9.8**. We want an average reading level for all the pamphlets that we
produce to be at an 8th grade level. It looks like our sample of
pamphlets is **writen at a level 1.8 years higher than we want**. But
could a deviation of that size be due to sampling error?

We can use a one-sample t-test in SPSS to check. Select ANALYZE |
COMPARE MEANS | ONE-SAMPLE T TEST from the menu. The dialog box appears
in Figure 1. Select the variable that you want to test
- and insert 8
into the TEST VALUE field. Then click on the OK button. SPSS produces
two tables of statistics (see Figure 2).

SPSS reports **a mean difference of 1.8 and a standard error of 0.53**.
If you divide the mean difference by the standard error
- you get a
**t-test value of 3.380**
- which SPSS shows in table 2. SPSS also
informs us that the **degrees of freedom is 29** (which for the
one-sample t-test is always one less than the smaple size). Looking in
any standard textbook
- we would find that the **95th percentile of a
t-distribution with 29 degrees of freedom is 1.699**. Since our t-test
is much larger than 1.699
- we would conclude that a deviation as large
as 1.8 years is unlikely to arise just by sampling error.

We could also look at the p-value. Since the p-value is so small (.002),
the deviation that we see is unlikely to arise just by sampling error.

**Summary**

The t-test is a general test that involves dividing a test statistic by
its standard error. The value is then compared to the t-distribution.
The t-distribution looks a lot like a normal distribution
- but it tends
to be more spread out
- especially if the degrees of freedom are small.

**Further reading**

Just about any introductory Statistics book will talk about the
t-distribution. See
- for example
- chapter 7 of Rosner's book. There are
web pages that will calculate probabilities and percentiles of the t
distribution
- such as SurfSTAT (click on the TABLES button on the main
page).

**--> SurfSTAT Australia**. Annette Dobson
- Anne Young
- Bob Gibson,
and others. (Accessed May 15
- 2002).
[www.anu.edu.au/nceph/surfstat/surfstat-home/surfstat.html](http://www.anu.edu.au/nceph/surfstat/surfstat-home/surfstat.html)

**-->** **Fundamentals of Biostatistics
- Third Edition.** Rosner B.
Belmont CA: Duxbury Press (1990). ISBN: 0-534-91973-1.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/ttest.html
[sim2]: http://www.pmean.com/original_site.html
