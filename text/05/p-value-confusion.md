---
title: Confusion about p-values
author: Steve Simon
date: 2005-01-18
categories:
- Blog post
tags:
- Hypothesis testing
output: html_document
page_update: partial
---

Someone wrote to me with a statement that represents a commonly held, but false belief. He stated, in effect, that a p-value of 0.06 means that there is only a 6% probability that the null hypothesis is true.

While the p-value is indeed a probability, it represents effectively a probability about the data, given that the null hypothesis is true. The statement above is effective a statement about the probability that the null hypothesis is true, given the data. It's a rather subtle reversal of a conditional probability, but one with important ramifications.

The only way that you can compute a probability for the null hypothesis is to use Bayesian statistics. This involve specifying a prior probability for the null hypothesis, something that is quite controversial.

Bayesians delight in computing things like the probability that the sun will rise tomorrow. It takes a different way of looking at things, but I have found that the Bayesian approach becomes more attractive for some of the more complex problems in Statistics.

I have a bibliography of references on [p-values (and confidence intervals)](page no longer available), and have made a feeble attempt to accumulate a [few references about Bayesian statistics](page no longer available). When I get the time, I would like to write a page on some simple Bayesian models. There is an entire software program devoted to Bayesian analysis, BUGS (Bayesian inference Using Gibbs Sampling):

- [The BUGS Project][bug1]

The [Edstat-l listserv][eds1] (no longer active) has had an active debate about the weaknesses of p-values and null hypothesis significance testing starting in late December.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/ConfusionPvalues.html
[sim2]: http://www.pmean.com/original_site.html

[bug1]: https://www.mrc-bsu.cam.ac.uk/software/bugs/
[eds1]: http://www.lsoft.com/scripts/wl.exe?SL1=EDSTAT-L&H=LISTS.PSU.EDU


<!---

../library/pvalueci1.asp
../library/bayesian.asp

-->
