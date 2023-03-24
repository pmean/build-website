---
title: "A mixture of normal distributions"
source: "New"
date: "2023-03-24"
categories:
- Blog post
tags:
- Statistical theory
output: html_document
---

There is a simple theoretical result involving a mixture of normal distributions. If you select a normal distribution with a mean of zero and let the precision of that normal distribution vary according to a gamma distribution, you end up with a t-distribution. In particular, if you let the precision of a normal distribution vary according to an exponential distribution (exponential is a special case of the gamma distribution), you get a Cauchy distribution (Cauchy is a special case of the t-distribution).

<!--more-->

Let's start with the special case. 

Let X have a conditional distribution

$f(X|\tau) =
  \sqrt{\frac{\tau}{2 \pi}}
  e^{-\frac{1}{2}\tau X^2}$

and let \tau have an unconditional distribution

$g(\tau) = e^{-tau}$

Then the joint distribution is

$f(X|\tau)g(\tau) =
  \sqrt{\frac{\tau}{2 \pi}}
  e^{-\frac{1}{2}\tau X^2}
  e^{-tau}$
  




$k(\tau) = 
  \frac{(n_0 \tau_0)^{n_0}}{\Gamma(n_0)}
  \tau^{n_0-1}
  e^{-\beta_0 \tau}$

which is a gamma distribution with

$\alpha=n_0$ and $\beta=n_0\tau_0$

Use a conditional prior for $\mu$ given $\tau$.

$g(\mu | \tau) =
  \sqrt{\frac{\tau}{2 \pi}}
  e^{-\frac{1}{2}\tau (\mu-\mu_0)^2}$

You can get an unconditional prior for $\mu$ by integrating out the prior on $\tau$

$g(\mu) = \int
  \sqrt{\frac{\tau}{2 \pi}}
  e^{-\frac{1}{2}\tau (\mu-\mu_0)^2}
  \frac{(n_0 \tau_0)^{n_0}}{\Gamma(n_0)}
  \tau^{n_0-1}
  e^{-\beta_0 \tau}d\tau$

Pull out any multiplicative constants not involve $\tau$.

$g(\mu) = 
  \frac{1}{\sqrt{2 \pi}}
  \frac{(n_0 \tau_0)^{n_0}}{\Gamma(n_0)}
  \int\tau^{n_0-\frac{1}{2}}
  e^{-\tau(\frac{1}{2} (\mu-\mu_0)^2-\beta_0)}
  d\tau$


$h(\theta | \mathbf{X}) \propto \theta^{n_0-1} e^{-n_0 \theta / \theta0} \theta^{n/2} e^{- \frac{1}{2} \theta\sum(X_i-\mu_0)^2}$

which can be rewritten as

$h(\theta | \mathbf{X}) \propto \theta^{n/2 + n_0-1} e^{-(n_0 \theta0 + \frac{1}{2}\sum(X_i-\mu_0)^2)}$

which is a gamma distribution with posterior parameters

$\alpha_1 = n/2+n_0$ and

$\beta_1 = n_0 theta_0 + \frac{1}{2}\sum(X_i-\mu_0)^2)$

This can also be shown to relate to a t-distribution

$\frac{\Gamma \left(\frac{\nu+1}{2} \right)} {\sqrt{\nu\pi}\,\Gamma \left(\frac{\nu}{2} \right)} \left(1+\frac{x^2}{\nu} \right)^{-\frac{\nu+1}{2}}$

