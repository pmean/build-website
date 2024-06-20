---
title: Adjusted odds ratios
author: Steve Simon
date: 2005-01-20
categories:
- Blog post
tags:
- Covariate adjustment
output: html_document
page_update: partial
---

Someone asked me today how to compute an adjusted odds ratio. He has a case control study where cases represent cancer patients. He also has various [Single Nucleotide Polymorphisms][wiki1] (SNPs). These would be coded as 0-1 depending on whether the SNP was present or absent. He also has demographic information, such as age, sex, smoking status, and so forth.

To compute an adjusted odds ratio, simply fit a logistic regression model. The outcome variable is the 0-1 variable which represents case or control status. The independent variables include a particular SNP variable, as well as all the demographic variable. The odds ratio that you get for the SNP variable shows the effect of that SNP on cancer status, after adjusting for all the demographic variables.

Make sure you have enough data before you do these adjustments. The rule of thumb is that you need 10 to 15 observations per outcome (here, either the number of cases or the number of controls, whichever is smaller). So if you have 60 cases and 120 controls, then you can fit a logistic model with about 4 to 6 independent variables.

For further details and a simple example, check out

- [Stats: Guidelines for logistic regression models][sim3].

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/AdjustedOR.html
[sim2]: http://www.pmean.com/original_site.html
[sim3]: http://www.pmean.com/99/logistic.html
[wiki1]: http://en.wikipedia.org/wiki/Single_nucleotide_polymorphism
