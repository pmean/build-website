---
title: "Basic notation for survival or time-to-event analyses"
source: new
date: "2020-10-12"
categories:
- Blog post
tags:
- Survival analysis
output: html_document
page_update: complete
---

I got some questions about the notation I use for various functions in survival models and the interpretation of some of these functions.

<!---more--->

$T$ is a random variable, defined on the interval $(0, \infty)$. It represents the time at which an event occurs (typically death, but it could be other events).

$t_1, t_2, ..., t_n$ are the times at which an event occurs or a patient is lost to follow-up (censored).

$c_1, c_2, ..., c_n$ are indicator (0-1) variables that indicate whether an event occured or the observation was censored.

$f(\cdot)$ is the probability density function for T. We use $f(t)$ to compute probabilities.

$P[a < T < b] = \int_a^b f(t) dt$ 

Sometimes f depends on some covariates and parameters. In that case, we write 

$f(\cdot, X_i, \beta)$

Every density function has a cumulative density associated with it.

$F(a) = \int_{-\infty}^a f(t) dt$

$S(\cdot)$ is the survival function.

$S(a) = P[T > a] = 1- F(a) =  = \int_a^{\infty} f(t) dt$

Again, the survival function may depend on some covariates and parameters. 

$S(\cdot, X_i, \beta)$

$h(\cdot)$ is the hazard function. It is an instantaneous rate, adjusted for the number of events that occur prior to the time of interest.

$h(t) = \frac{P[t < T < t + \Delta t] / \Delta t}{P[T > t]}$

If you let $\Delta t$ approach zero, the hazard function becomes

$h(\cdot) = \frac{f(\cdot)}{S(\cdot)}$

Like before, you can show the dependence on some covariates and parameters with the notation

$h(\cdot, X_i, \beta)$

The proportional hazards assumption is written in mathematical notation as

$h(\cdot, X_i, \beta) = e^{X_i \beta}h_0(\cdot)$

where $h_0(\cdot)$ is a baseline hazard rate.

