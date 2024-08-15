---
title: "Too many different prior choices for the hierarchical beta binomial model"
author: "Steve Simon"
source: "http://blog.pmean.com/too-many-priors/"
date: "2016-05-31"
categories: Blog post
tags:
- Bayesian statistics
output: html_document
page_update: complete
---

I'm interested in studying how Bayesian hierarchical models work and I want to start with what seems like the simplest case, the hierarchical beta-binomial model. It's actually not that simple, it seems. There are too many choices for the hyperprior that you use in this setting.

<!---More--->

If you run a google search on the hierarchical beta binomial model, you see a lot of helpful choices. Many of these are PDFs and my system does not let me track the URLs of PDF files that easily. But you should be able to find these easily. Also, many of these PDFs are Powerpoint slides. Powerpoint slides are usually too sketchy to be useful, but these slides are pretty nice.

There are at least three general approaches and within each approach, there are differing recommendations.

Approach #1. Assume a beta prior on the binomial proportions, model the hyperparameters of the beta distribution directly.

Conjugate Priors, Hierarchical Models, Comparing Ranks through Simulation (no author given) starts with a binomial distribution and places a beta prior on that distribution. It then suggests two gamma distribution for the hyperparameters of the beta distribution, though this reference does not say which particular gamma distribution.

Brice D. L. Acree & Thomas Carsey, Bayesian Hierarchical Models, June 4, 2015 proposes that the binomial proportions come from a beta distribution and that the two hyperparameters from the beta distribution are both uniform on the interval 0 to 10.

Approach #2. Assume a beta prior distribution on the binomial proportions, but transform the hyperparameters of the beta distribution.

Kathryn Blackmond Laskey, Bayesian Inference and Decision Theory, Unit 7: Hierarchical Bayesian Models recommends that you transform the hyperparameters of the beta distribution. Dr. Laskey proposes this transformation because the two hyperparameters of the beta distribution are so closely correlated that the Gibbs sampling is inefficient. Her transformation, and the only transformation that others consider is U=alpha/(alpha+beta) and V=alpha+beta. U is the mean of the beta distribution and V is rough measure of the precision of the beta distribution with larger values implying more precision. She suggests a uniform distribution for U and a gamma(1,20) distribution for V. She uses the rat tumor data from Gelman et al.

Brian Junker, 36-724 Spring 2006: Metropolis-Hastings Example, February 22, 2006 also uses a beta distribution for alpha/(alpha+beta) but suggests a Pareto distribution for (alpha+beta).? The Pareto is a power law distribution and the power that Dr. Junker recommends 1.5. You have to read his arguments, but it involves a transformation of a fairly standard normal hierarchical model.

Manojit Nandi, A/B Testing with Hierarchical Models in Python -- Domino Blog, also recommends the same Pareto distribution, and cites Andrew Gelman's book (Bayesian Data Analysis, with John Carlin, Hal Stern, David Dunson, Aki Veharti, and Donald Rubin) as the rationale. 

Bob Carpenter, Hierarchical Bayesian Batting Ability, with Multiple Comparisons, also uses the Pareto distribution, but with no references or other justification.

Andrew Gelman, Some practical questions about prior distributions, October 21, 2009 reviews his earlier book recommendations and suggests that perhaps a half Cauchy distribution for 1/sqrt(alpha+beta) would be better than his earlier recommendation of an improper uniform(0,infinity) prior on that same parameter.

Approach #3. Transform the binomial proportions to something that can be easily modeled using normal distributions.

Pablo Verde, Lecture 12: Introduction to Hierarchical Models recommends a logit transformation of the binomial proportion. You attach a normal prior to these logits. The mean of the normal prior is assumed to be normal(0, 100) and the standard deviation is assumed to be uniform(0.01, 10).

Nicky Best, Alexina Mason and Philip Li, Bayesian Hierarchical Modelling using WinBUGS, February 17-18, 2011 recommends a logit transformation of the binomial proportion. You place a wide uniform distribution on the mean of the normal distribution (e.g., U(-100, 100)) or a normal distribution with very large variance. The distribution that you place on the variance or standard deviation of the normal distribution is tricky. They consider gamma priors for the reciprocal of the variance, a uniform(0, 100) distribution for the variance, a uniform(0,100) distribution for the standard deviation (not recommended, they say), and a half normal distribution with mean zero and variance 0.4^2 for the standard deviation.

Are you confused yet? The good news is that you have some latitude in making choices that fit your individual needs. The bad news is that when you try to publish, the peer reviewers are going to make you change your prior choice to the one they like best, and there's no way of predicting what their choice will be.

I should read some of the books in my library and check out some peer-reviewed references.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/too-many-priors/
[sim2]: http://blog.pmean.com
