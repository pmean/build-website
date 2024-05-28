---
title: Why use a Bayesian adaptive trial?
author: Steve Simon
source: http://www.pmean.com/12/adaptive.html
date: 2012-03-07
categories:
- Blog post
tags:
- Bayesian statistics
output: html_document
page_update: complete
---

The Bayesian adaptive trial controls the probability of randomizing a patient to each of the proposed dose groups. As data emerges during the study, the probabilities are updated so that you are less likely to randomize a patient to a dose level that has far too much toxicity, far too little efficacy, or which does not contribute much information about the dose-response curve. The Bayesian adaptive trial also allows you to close certain arms of the trial if the dose is clearly inappropriate for further study.

<!---More--->

The Bayesian adaptive trial has three advantages. First, by not committing a fixed number of patients to each dosage level, you have the ability to look at a greater number of dosage levels and across a wider range. Second, the Bayesian adaptive trial decreases the proportion of patients who get an inappropriate dosage during the study. Third, the Bayesian adaptive trial can use information from intermediate endpoints to impute the long term measures of efficacy and safety, so that not just the patients who have completed the trial, but also patients who have started, but not yet completed the trial can contribute information to the choice of appropriate dosing for future patients.

The Bayesian adaptive trial typically has a random number of patients enrolled. This is a potential disadvantage. You can, however, place an upper limit on the total number of patients. Furthermore, if the trial is well designed, the expected number of patients will be less than they would be with a design with a fixed number of patients in each dose group.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/12/adaptive.html
[sim2]: http://www.pmean.com/original_site.html
