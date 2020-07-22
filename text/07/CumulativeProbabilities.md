---
title: Formulas for cumulative Poisson and binomial probabilities
author: Steve Simon
source: http://www.pmean.com/07/CumulativeProbabilities.html
date: 2007-02-19
categories: Blog post
tags: Poisson regression, Probability concepts
output: html_document
---
**[StATS]:** **Formulas for cumulative Poisson and
binomial probabilities (created 2007-02-19).**

I am updating some material about [Poisson
regression](../99/poisson.html) and noticed that some of the tests and
confidence intervals rely on a percentile from a Chi-squared
distribution or a gamma distribution. In previous work on binomial
confidence intervals, I had noticed the use of a beta distribution and
an F distribution. It seems odd to apply percentiles from continuous
distributions for confidence intervals involving counting, but the
formulas do indeed work. There are well known relationships for the
cumulative distributions of the Poisson and binomial distributions that
lead to these formulas.

![](http://www.pmean.com/images/images/07/CumulativeProbabilities01.gif)

and

![](http://www.pmean.com/images/images/07/CumulativeProbabilities02.gif)

These can be found on page 127 and page 40, respectively of

-   **Statistical Distributions Second Edition.** Merran Evans, Nicholas
    Hastings, Brian Peacock (1993) New York: John Wiley & Sons.
    [BookFinder4U
    link]](http://www.bookfinder4u.com/detail/0471559512.html)

The Wikipedia entries on [the Poisson
distribution](http://en.wikipedia.org/wiki/Poisson_distribution) and
[the binomial
distribution](http://en.wikipedia.org/wiki/Binomial_distribution) refer
to the [incomplete gamma
function](http://en.wikipedia.org/wiki/Incomplete_gamma_function) and
the [regularized incomplete beta
function](http://en.wikipedia.org/wiki/Incomplete_beta_function#Incomplete_beta_function),
respectively, and this is, I suspect, another way of deriving the above
relationships.

[Update: March 21, 2007] The relationship between the Poisson and the
Chi-squared random variable is fairly easy to show if you recognize the
relationship between the Chi-squared distribution and the Gamma
distribution. The first equation above can be rewritten as

![](http://www.pmean.com/images/images/07/CumulativeProbabilities03.gif)

The left side of the equation equals

![](http://www.pmean.com/images/images/07/CumulativeProbabilities04.gif)

and the right side of the equation equals

![](http://www.pmean.com/images/images/07/CumulativeProbabilities05.gif)

You can compute this by using [integration by
parts](http://en.wikipedia.org/wiki/Integration_by_parts). If you let

![](http://www.pmean.com/images/images/07/CumulativeProbabilities06.gif)

then the integral simplifies to

![](http://www.pmean.com/images/images/07/CumulativeProbabilities07.gif)

or

![](http://www.pmean.com/images/images/07/CumulativeProbabilities08.gif)

Repeat the process again to get

![](http://www.pmean.com/images/images/07/CumulativeProbabilities09.gif)

and again and again until you get down to

![](http://www.pmean.com/images/images/07/CumulativeProbabilities10.gif)

A gamma distribution with shape parameter 1 is simply an exponential
distribution and this last probability works out directly to equal

![](http://www.pmean.com/images/images/07/CumulativeProbabilities11.gif)

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Poisson
regression](../category/PoissonRegression.html) or [Category:
Probability concepts](../category/ProbabilityConcepts.html).
<!---More--->
Probability concepts](../category/ProbabilityConcepts.html).
regression](../category/PoissonRegression.html) or [Category:
for pages similar to this one at [Category: Poisson
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]:** **Formulas for cumulative Poisson and
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Poisson
regression](../category/PoissonRegression.html) or [Category:
Probability concepts](../category/ProbabilityConcepts.html).
--->

