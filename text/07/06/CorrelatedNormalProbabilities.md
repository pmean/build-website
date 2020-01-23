---
title: Calculating probabilities involving correlated normal variables
author: Steve Simon
source: http://www.pmean.com/07/CorrelatedNormalProbabilities.html
date: 2007-06-04
category: Blog post
tags: Probability concepts
output: html_document
---
**[StATS]:** **Calculating probabilities involving
correlated normal variables (June 4, 2007)**

Someone on EDSTAT-L asked about a problem involving differences of
independent normal random variables. I am simplifying the problem a bit,
but it essentially asked a question that was comparable to the
following:

> *Suppose you have three independent standard normal random variables:
> A, B, and C. What is the probability that A is smaller than B by one
> or more units and A is also smaller than B by one or more units.*

This is equivalent to calculating the following probability.

![](images/CorrelatedNormalProbabilities01.gif){width="223" height="33"}

If you redefine X=A-B and Y=A-C, then this probability changes to

![](images/CorrelatedNormalProbabilities02.gif){width="163" height="33"}

where X and Y are correlated normal random variables with covariance
matrix

![](images/CorrelatedNormalProbabilities03.gif){width="95" height="60"}

The density function represented by this pair of correlated normal
random variables looks like the following:

![](images/CorrelatedNormalProbabilities04.gif){width="401"
height="397"}

Notice the classic image of a bell shaped curve, but now it is in three
dimensions rather than two. Note also that the width of the bell curves
varies with the widest bells along the line x=y and the narrowest bells
perpendicular to the line x=y. The probability shown above is equivalent
to integrating the following portion of the bell shaped curve:

![](images/CorrelatedNormalProbabilities05.gif){width="401"
height="397"}

R has a library for calculation of multivariate t and multivariate
normal distributions. You can compute the probability in question using
the following R code.

    s <- matrix(c(2,1,1,2),nrow=2)
    pmvnorm(upper=c(-1,-1),mean=c(0,0),sigma=s)

which produces a probability of 0.1132. The calculation you would use if
X and Y were independent

    s <- matrix(c(2,0,0,2),nrow=2)
    pmvnorm(upper=c(-1,-1),mean=c(0,0),sigma=s)

produces an incorrect answer (0.0575), which you could also get by
multiplying the probability that two independent normal random variables
with mean 0 and variance 2 would be less than -1.

    pnorm(-1,mean=0,sd=sqrt(2))^2

The moral of this story is that when two events are correlated, you
can\'t just get a bivariate probability by multiplying the univariate
probabilities.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Probability
concepts](../category/ProbabilityConcepts.html).
<!---More--->
concepts](../category/ProbabilityConcepts.html).
for pages similar to this one at [Category: Probability
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Calculating probabilities involving
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Probability
concepts](../category/ProbabilityConcepts.html).
--->

