---
title: "My research contributions to patient accrual models"
author: "Steve Simon"
source: "http://blog.pmean.com/patient-accrual-models/"
date: "2015-06-03"
categories:
- Blog post
tags:
- Professional details
output: html_document
page_update: complete
---

The U.S. National Institutes of Health (NIH) has a new biosketch format where they ask you to summarize "up to five of your most significant contributions to science." Here's a first draft of my research contributions to patient accrual models.

<!---More--->

I've had the opportunity to work with many researchers and the biggest problem that most of them face is poor patient accrual. They struggle to find a way to recruit subjects quickly enough so that they could meet their sample size goals within a practical time frame. With a colleague at Kansas University Medical Center (KUMC), Byron Gajewski, and later with a graduate student at KUMC, Joyce Yu Jiang, we developed Bayesian models that could forecast the amount of time that a trial would take to reach a fixed sample size or to forecast the sample size for a trial that ended at a fixed date. These models incorporate the researcher's subjective opinions and historical information about patient accrual rates from previous studies. The Bayesian model updates this information with actual accrual data from the current study to provide continuously revised estimates of completion time or final sample size.

Also of note is that our work on Bayesian models has highlighted the importance of teaching basic Bayesian techniques to new researchers. We published an article suggesting a simple pedagogical approach that targets the ANOVA model as the best place to first mention Bayesian methods.

Many of the initial accrual rate estimates that researchers provide are wildly optimistic. An extension to the Bayesian model, developed by Joyce Yu Jiang, provides a way to discount a strong prior belief if it is inconsistent with the actual accrual pattern that is observed in the study itself. Her model is a simple and straight forward adaptation of the modified power prior and has applicability for just about any Bayesian model that incorporates an informative prior distribution.

My work with accrual models have taught me that, by itself, the sample size calculation during the planning of a research study is insufficient. If it takes you ten years to complete a study that you thought would only take ten months, you are going to end up with a disaster.

Jiang Y, Simon S, Mayo MS, Gajewski BJ. Modeling and validating Bayesian accrual models on clinical data and simulations using adaptive priors. Stat Med. 2015 Feb 20; 34(4): 613-29.

Gajewski BJ, Simon SD, Carlson SE. On the Existence of Constant Accrual Rates in Clinical Trials and Direction for Future Research. Int J Statist Prob. 2012;1(2):43-46.

Gajewski BJ, Simon SD. A One-Hour Training Seminar on Bayesian Statistics for Nursing Graduate Students. The American Statistician. August 1, 2008, 62(3): 190-194.

Gajewski BJ, Simon SD, Carlson SE. Predicting accrual in clinical trials with Bayesian posterior predictive distributions. Stat Med. 2008 Jun 15;27(13):2328-40.

Here are pictures of Byron Gajewski and Joyce Yu Jiang.

![Figure 1. Photo of Dr. Byron Gajewski](http://www.pmean.com/new-images/15/gajewski.jpg)

![Figure 2. Photo of Dr. Joyce Yu Jiang](http://www.pmean.com/new-images/15/jiang.jpg)

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/patient-accrual-models/
[sim2]: http://blog.pmean.com

