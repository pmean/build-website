---
title: Binary outcome sample size calculations
source: http://www.pmean.com/00/binary.html
author: Steve Simon
date: 2000-08-23
categories:
- Blog post
tags:
- Being updated
- Sample size justification
output: html_document
page_update: partial
---
*Dear Professor Mean, I have to calculate a sample size for a binary outcome variable. The research study is on breast feeding failures within 7 to 10 days of birth for mothers who intended to breast feed. The rate of failure overall is expected to be about 12%. What sample size do I need?

Dear Reader,

Breast feeding failure is an example of a binary outcome measure. There are only two possible values: the mother is successfully breast feeding at 7 to 10 days, or the mother is not successfully breast feeding at 7 to 10 days. Other examples of binary outcomes would be:

+ the patient died (survived) within the first year of study,
+ the patient experienced (did not experience) a specific side effect,
+ the patient had a positive (negative) result on a diagnostic test.

The sample size you need when you outcome is binary is different than when your outcome is continuous. For a continuous outcome, you need to specify the variability of your outcome measure and how much of a change you would consider clinically relevant. For a binary outcome, you still need to specify the clinically relevant change. But you don't need a measure of variability. What you need instead is an estimate in your control group of the probability for one level of your binary outcome. You might also need to specify the distribution of your explanatory (independent) variable.

**Example**

One of the factors that might influence breast feeding failure is whether the delivery was a vaginal birth or a C-section. Let's assume that roughly 20% of the mothers in the sample had a C-section. Expressing it in a different way, the ratio of vaginal births to C-sections is 4 to 1.

Let's also assume that the rate of breast feeding failure is 15% in the C-section group and 30% in the vaginal birth group. You hypothesize that C-section babies fare better, because the mother stays in the hospital longer. The extra time in the hospital allows greater interaction with lactation consultants.

You wish to use a two sided test at an alpha level of 0.05. You also want the power to be at least 0.80. Under these conditions, you would need a sample size of 435 mothers.

[Show some of the formulas and calculations.]

**Summary**

Baffled Bob wants to know how to calculate a sample size when his outcome variable is binary (has only two possible values). Professor Mean explains that you need to specify the probability of an outcome at two different values of your predictor or independent variable.

**Further reading**

+ **[Binomial Program to Calculate Power or Sample Size](http://www.swogstat.org/Stat/Public/binomial/binomial.htm)**. Brent Hostetler, Southwest Oncology Group Statistical Center. Accessed on 2003-05-08. *"Two Arm Binomial is a program to calculate either estimates of sample size or power for differences in proportions. The program allows for unequal sample size allocation between the two groups."* www.swogstat.org/Stat/Public/binomial/binomial.htm

+ **[One sample binomial](http://www.swogstat.org/Stat/Public/one_binomial.htm)**. Southwest Oncology Group Statistical Center. Accessed on 2003-05-08. *"One Arm Binomial program calculates either estimates of sample size or power for one sample binomial problem. The first button calculates approximate power or sample size and critical values (reject if >= critical value). The second button calculates "exact" power and alpha for the given null and alternative proportions and sample size. Note, sample size and null and alternative proportions can be changed before using the second button."* www.swogstat.org/Stat/Public/one_binomial.htm

+ **[Bayesian sample size determination for estimating binomial parameters from data subject to misclassification](http://www.med.mcgill.ca/epidemiology/Joseph/diagsmp.pdf)**. Elham Rahme, Lawrence Joseph, Theresa W. Gyorkos. Accessed on 2003-05-08. *"We investigate the sample size problem when a binomial parameter is to be estimated, but some degree of misclassification is possible. The problem is especially challenging when the degree to which misclassification occurs is not exactly known."* Published November 29, 1999. www.med.mcgill.ca/epidemiology/Joseph/diagsmp.pdf

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/binary.html
[sim2]: http://www.pmean.com/original_site.html
