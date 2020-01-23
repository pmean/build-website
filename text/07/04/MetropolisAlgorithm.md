---
title: A simple illustration of the Metropolis algorithm
author: Steve Simon
source: http://www.pmean.com/07/MetropolisAlgorithm.html
date: 2007-04-13
category: Blog post
tags: Bayesian statistics
output: html_document
---
**[StATS]: A simple illustration of the Metropolis
algorithm (April 13, 2007)**

> In many situations, you need to generate a random sample from a
> distribution that is rather complex.  When simpler methods for
> generating a random sample don\'t work, there are a series of
> approaches based on the Markov chain principle that can help. There
> are several of these methods: Gibbs sampling, the Metropolis
> algorithm, the Metropolis-Hastings algorithm, that are collectively
> called Markov Chain Monte Carlo (MCMC). These approaches are
> especially valuable in Bayesian data analysis.
>
> The simplest of the three methods is the Metropolis algorithm, and
> here is a simple example of how it works.
>
> Suppose you have a distribution, where the density p is known, but
> where it is difficult or impossible to directly generate a random
> sample from that distribution. Typically p is a multivariate
> distribution, but in the example I show below, it is a univariate
> distribution.
>
> Select a starting point X0 that satisfies p(X0)\>0. At time points
> t=1, 2, \..., sample a provisional value X\*, not from p (which is
> difficult or impossible), but from a jumping distribution J(X\*\|X0).
> Notice that this is a conditional distribution, which means that the
> spot that you jump to depends on the value of X0. This jumping
> distribution has to have a symmetry property J(a\|b)=J(b\|a).
>
> You will select a new value X1, which is either X\* or X0. The
> selection depends on the ratio r=p(X\*)/p(X0). If r is greater than 1,
> you always select X\*. If r is less than 1, you select X\* with
> probability r and X0 with probability 1-r.
>
> Now repeat this process using X1. Select a provisional value X\* from
> the jumping distribution J(X\*\|X1). Note that the jumping
> distribution is now conditional on a different value. Compute the
> ratio r=p(X\*)/p(X1). Select X2 equal to either X1 or X\* depending on
> the ratio r. Continue this process to generate X3, X4, etc.
>
> The rationale for this approach is that you should look randomly in a
> variety of directions. If the new location is more likely than your
> current location, always sample the new location. If the new location
> is little less likely, then it makes sense most of the time to jump to
> the new location, but once in a while you will be better off staying
> at the current location. If the new location is much less likely, you
> will only rarely jump to that part of the distribution.
>
> With any reasonable jumping function, you can show that this algorithm
> visits all the regions of the distribution and with probabilities that
> are appropriately large or small.
>
> Here\'s an example. The distribution function here has the form
> p(x)=6x(1-x) for 0\<x\<1, which is actually quite easy to simulate.
> But let\'s see how the Metropolis algorithm would work for this
> situation. The jumping distribution I chose was normal with a mean
> equal to the previous iteration and a standard deviation of 0.2. At
> each iteration, I show the provisional value, but use gray if that
> value is not selected by the Metropolis algorithm.
>
> ![](images/MetropolisAnimation.gif){width="400" height="100"}
>
> To repeat this animation, press the REFRESH button on your browser.
>
> The choice of jumping distribution is important. You don\'t want the
> jumps to be too big or too small as either extreme can make the
> simulation process much less efficient.
>
> Even with a good jumping distribution, this process is not as
> efficient as more direct methods of simulation. The Markov Chain
> property of this simulation introduces a positive correlation to
> successive values. This makes the set of values somewhat patchy unless
> the number of simulations is quite large. You would only use this
> approach if the more direct simulation methods were too difficult.

[![Creative Commons
License](http://i.creativecommons.org/l/by/3.0/us/80x15.png)](http://creativecommons.org/licenses/by/3.0/us/)
This work is licensed under a [Creative Commons Attribution 3.0 United
States License](http://creativecommons.org/licenses/by/3.0/us/). It was
written by Steve Simon.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Bayesian
statistics](../category/BayesianStatistics.html).
<!---More--->
statistics](../category/BayesianStatistics.html).
for pages similar to this one at [Category: Bayesian
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: A simple illustration of the Metropolis
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Bayesian
statistics](../category/BayesianStatistics.html).
--->

