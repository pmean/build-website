---
title: Geometric distribution
author: Steve Simon
date: 2005-05-16
categories:
- Blog post
tags:
- Being updated
- Probability concepts
output: html_document
page_update: complete
---
Someone asked me about a game where A, B, and C toss a coin in order (A first, then B, then C, then A again, etc.) until someone gets a heads on their coin flip. What are the probabilities that A will win? B will win? C will win?

This is a simple application of the [geometric distribution][wik1] with P=1/2.

You can also take advantage of the symmetry of the situation. We don't know what the probability of winning for A, B, or C is, so set them to unknown values, X, Y, and Z. We can infer that if A's first flip of the coin is a tail, then B's probability of winning is now the same as what A's was before the coin flip. So that implies that Y=0.5X. By a similar argument, Z=0.5Y=0.25X. Since X, Y, and Z have to add up to 1, that implies that X+0.5X+0.25X=1. Solve for X to get your answer.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[wik1]: https://en.wikipedia.org/wiki/Geometric_distribution

[sim1]: http://www.pmean.com/05/GeometricDistribution.html
[sim2]: http://www.pmean.com/original_site.html
