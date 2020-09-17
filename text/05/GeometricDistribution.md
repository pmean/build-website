---
title: Geometric distribution
author: Steve Simon
source: http://www.pmean.com/05/GeometricDistribution.html
date: 2005-05-16
category: Blog post
tags: Probability concepts
output: html_document
---
**[StATS]:** **Geometric distribution (May 16,
2005)**

Someone asked me about a game where A, B, and C toss a coin in order
until someone gets a heads on their coin flip. What are the
probabilities that A will win? B will win? C will win?

This is a simple application of the geometric distribution with P=1/2. A
good reference for this distribution is

-   **[Geometric
    Distribution](http://arnoldkling.com/apstats/geometric.html%20)**.
    Kling A. Accessed on 2005-05-16.
    arnoldkling.com/apstats/geometric.html

You can also take advantage of the symmetry of the situation. We don\'t
know what the probability of winning for A, B, or C is, so set them to
unknown values, X, Y, and Z. We can infer that if A\'s first flip of the
coin is a tail, then B\'s probability of winning is now the same as what
A\'s was before the coin flip. So that implies that Y=0.5X. By a similar
argument, Z=0.5Y=0.25X. Since X, Y, and Z have to add up to 1, that
implies that X +0.5X+0.25X=1. Solve for X to get your answer.

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
**[StATS]:** **Geometric distribution (May 16,
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Probability
concepts](../category/ProbabilityConcepts.html).
--->

