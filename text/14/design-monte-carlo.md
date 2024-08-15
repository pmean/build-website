---
title: "Using statistical design principles to plan a Monte Carlo analysis"
author: "Steve Simon"
source: "http://blog.pmean.com/design-monte-carlo/"
date: "2014-03-09"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

I want to run a Monte Carlo analysis of various Bayesian estimators to
see how they perform when the prior distribution is "wrong". I'm like
everyone else--I just plunge in and start. But halfway through the Monte
Carlo analysis, I realized that I could make my life easier and produce
a better quality Monte Carlo analysis if I used basic statistical design
principles. Here's a brief outline of some of these design
principles.

<!---More--->

The Bayesian estimators being evaluated are a bit messy to describe
here--they are extensions of the modified power prior, if you are
curious. But I included a simpler measure, the beta-binomial model.
There is no reason to run a Monte Carlo simulation for the beta-binomial
model, as its properties are already well defined. But it is useful as a
quality check, to make sure that I'm not making some bone headed mistake
that causes all my results to be off by an order of magnitude.

First, you should always justify the sample size of your Monte Carlo. I
thought that I'd be okay with a thousand replications, but that really
might not be enough or it might be way too much. There are two outcome
measures for the Monte Carlo are the estimated bias and the estimated
precision.

The bias depends on the true population proportion, but the range of the
bias is always 1.0. So that means that one fourth of the range (0.25) is
a rough estimate of the variation in the bias. But we can run a quick
simulation and see if we're in the right ballpark. It turns out that we
have much less variation than that. The standard deviation of the bias
is somewhere around 0.02 to 0.04.

So if you wanted a confidence interval for bias to have a width no
greater than plus/minus 0.01, you'd need to run 60 replications. If you
wanted a confidence interval for the difference in two biases to have a
width no greater than plus/minus 0.01, you'd need to run 120
replications.

So far, so good. The estimated precision is a bit harder to decipher,
but it turns out that 120 replications would do just fine here as well.

\[To be continued.\]

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/design-monte-carlo/
[sim2]: http://blog.pmean.com
