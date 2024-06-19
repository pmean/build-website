---
title: Stratified Cox regression models
author: Steve Simon
source: http://www.pmean.com/05/StratifiedCoxRegression.html
date: 2005-03-22
categories:
- Blog post
tags:
- Being updated
- Survival analysis
output: html_document
page_update: partial
---
**[StATS]:** **Stratified Cox regression models
(March 22, 2005)**

Someone sent me an email asking about a Cox regression model that
included a strata for clinics. What's the best way to handle strata?
That's a tricky question to answer. The first question you might want
to ask is whether it makes sense to include the clinic factor as a
strata at all. When you include strata, you allow the Cox model to
estimate an entirely separate hazard function for each clinic. That's
quite different from including clinic as a fixed effect in the Cox
regression model, where you would be assuming that the clinics differ
only in that the hazard function for one clinic is a multiple of the
hazard function for the other clinic.

Thernau and Grambsch describe it well in their book on survival
analysis.

*Analysis of multicenter clinical trials frequently uses
stratification. Because of varying patient populations and referral
patterns, the different clinical centers in the trial are likely to
have difference baseline survival curves, ones that do not have simple
parallel relationships. Strata play a role similar to blocks in
randomized block designs analyzed by two-factor analysis of variance.*
(page 44).

Using a stratified Cox model could lead to a loss of power or precision,
because you are using more of the data to estimate separate hazard
functions and that leaves less of the data for your other research
hypotheses. But perhaps assuming that the clinics only differ by a
multiplicative constant is an oversimplification. A third approach is to
treat clinics as a random effect. This leads to a frailty model, which
you cannot run in SPSS, but which is available with other software
programs.

The rule is to choose a model that is as simple as possible, but not too
simple. Perhaps your sample size might also help you decide about the
complexity of the model. Do you have lots of data to spare so that
estimating separate hazard functions is a luxury you can easily afford?
Also, take a look at the Kaplan-Meier curves for each clinic. Do they
show unusual patterns, such as one clinic having very high early
mortality, but the second clinic eventually catching up?

There's no easy answer to this question, but remember that just because
you used a stratified sample, that does not mean that your strata have
to be accounted for in a particular way. Think hard about including
clinics as a fixed effect or as a random effect as an alternative.

The other thing to keep in mind is that there are probably several
approaches to your data set that would be easy to defend in a
peer-reviewed publication. Choose a reasonable approach, and don't
worry so much about the choices you didn't make. If a peer-reviewer
tells you to use a different model, that's actually good news. When the
reviewers start nitpicking your model and don't mention bigger issues,
you are probably only one step away from publishing.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/StratifiedCoxRegression.html
[sim2]: http://www.pmean.com
