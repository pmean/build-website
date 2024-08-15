---
title: "A non-technical answer to why we need Markov Chain Monte Carlo"
author: "Steve Simon"
source: "http://blog.pmean.com/non-technical-mcmc/"
date: "2015-09-21"
categories:
- Blog post
tags:
- Accrual problems
- Bayesian statistics
output: html_document
page_update: complete
---

Someone was looking for examples of illustrative examples to help explain to people without a statistical background how MCMC methods can be applied to help solve real world problems. I offered up some general advice and some of my own research as an example.

<!---More--->

There are lots of people that know a lot more about MCMC than I do. The only thing I can offer in my defense is that I know so little about MCMC that everything I do know qualifies as non-technical.

You should take a look at the examples in the BUGS manual. Most of these are simple illustrative examples that are very easy to follow.

I would also encourage you to look at some of the Bayesian MCMC approaches for missing data. Often we can make somewhat informed guesses about what a missing data point might be because, for example, males have a different pattern of responding than females. You need, however, to simulate missing data in a way that doesn't overstate the certainty of this pattern. MCMC properly incorporates all of the uncertainties associated with predicting what a missing value might have been.

Another example that might be use of latent variables. Ordinal data, for example, can be thought of as cut-points of an underlying continuous variable. MCMC allows you simulate what this underlying continuous variable might be.

A paper that I co-authored in Statistics in Medicine (SIM) might be an interesting example. We were looking for predictive models for the duration of a clinical trial. Many clinical trials last a lot longer than expected. When you learn that the recruitment of subjects is a lot slower than expected, you need to revise your estimate of how long it will take for you to finish your research study.

Our solution, which has been worked on by others as well, involves a specification of a prior distribution (your estimate of the accrual rate prior to data collection) and combining that with actual accrual data as you progress with your study. If this study is one of many similar ones that you have conducted in the past, you will have provided a strong prior distribution, and you won't overreact to a bit of early bad news. On the other hand, if this is a fairly new setting for you, and your prior is weak, you want to be sensitive to early warnings of problems.

The solution that we offer in the SIM paper does not really require MCMC because it has a closed form solution. But several extensions that we are looking at would require MCMC.

The key reference for these ideas is Gajewski BJ, Simon SD, Carlson SE. Predicting accrual in clinical trials with Bayesian posterior predictive distributions. Stat Med. 2008 Jun 15;27(13):2328-40 which is available in [html format][gaj1].

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/non-technical-mcmc/
[sim2]: http://blog.pmean.com

[gaj1]: http://onlinelibrary.wiley.com/doi/10.1002/sim.3128/abstract


