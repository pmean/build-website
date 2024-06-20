---
title: Seminar notes. Missing values in a dose response model
author: Steve Simon
source: http://www.pmean.com/06/MissingValues.html
date: 2006-07-17
categories:
- Blog post
tags:
- Nonlinear regression
output: html_document
page_update: partial
---

One of the talks at the 18th Annual Applied Statistics in Agriculture Conference, sponsored by Kansas State University was "Dose-Response Modeling with Marginal Information on Missing Categorical Covariate" by John R. Stevens, Utah State University. David I. Schlipalius, of The University of Queensland was a co-author.

Dr. Stevens showed a picture of a beetle known as the lesser grain borer, a primary pest of stored grain. Some of these beetles have shown resistance, which was tracked to two loci, and asked how these loci influenced resistance. They tested increasing numbers of beetles in increasing dose groups, so as to get a reasonable number of surviving beetles. These surviving beetles were genotyped, and a pattern emerged with certain genotypes showing greater degrees of resistance.

Typically in studies like this, you look at a logit dose response curve.

In this design, there is a missing value problem in that only surviving beetles were genotyped. This was a cost saving procedure, since the experiment used tens of thousands of beetles, but only 387 survived.

There is a latent variable, Nij, the proportion of beetles in genotype i who received dose j. If Nij were known, then you would have a simple binomial distribution. Dr. Stevens noted that if you can show that this latent variable is mssing at random (MAR), then you can get unbiased estimates of the probability of mortality.

As with an earlier talk, I appreciated a reminder of the definition: a covariate x is MAR if the probability of observing x does not depend on x or any other unobserved covariate, but may depend on response and other observed covariates (Ibrahim 1990).

The EM algorithm starts with an initial step, which provides initial estimates of the unknown probabilities.

In this problem, there is a zero dosage level, which means that Ni0 i known at all levels and allows an initial estimate of the probabilities of individual gene

The expectation step uses Bayes formula to estimate the latent variables (Nij).

The maximization step uses the estimates of the latent variables to get maximum likelihood estimates assuming the latent variables are known. These maximum likelihood estimates replace the initial estimates.

Then you cycle again with another expectation step and another minimization step.

There were some computational complexities that the author described, but which are difficult to capture in this summary.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/MissingValues.html
[sim2]: http://www.pmean.com