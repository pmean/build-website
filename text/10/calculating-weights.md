---
title: Calculating weights to correct for over and under sampling
author: Steve Simon
date: 2010-03-22
categories:
- Blog post
tags:
- Sampling
output: html_document
page_update: partial
---

Someone asked how to use weights to adjust for the fact that certain strata in a study were recruited more vigorously than other strata. For example, suppose you sampled at four communities and noted the age distribution as 0-14 years, 15-39 years, and  40+ years. How would you adjust for differential age distributions.

<!---More--->

Someone asked how to use weights to adjust for the fact that certain strata in a study were recruited more vigorously than other strata. For example, suppose you sampled at four communities and noted the age distribution as 0-14 years, 15-39 years, and  40+ years. How would you adjust for differential age distributions.

The key calculation is to understand the sampling probability. Let nij represent the number of patients sampled in community i and age strata j. Let Nij represent the total number of patients in the population in community i and age strata j. The probability of sampling, pij,  is nij/Nij. The inverse of this probability, 1/pij is an interesting quantity. It tells you how many people in the population are represented by a single individual in the population. So if the sample size is 100 and there are 2 million people in the population, each person in the sample represents 20,000 people in the population.

If you weight the data by the inverse of pij, this will give greater weight to those strata where you undersample, because each person in the sample represents a larger number of individuals in the population than you had hoped for. Similarly, this will give less weight to those strata where you oversample.

Suppose you don't know the total number of patients in the population, but you do know the relative proportions in each community. So in community 1, the age group 0-14 years constituted 40% of your sample, but you knew that in the population for community 1, age group 0-14 years corresponded to 50% of the community. Let pij be the proportion of sample patients in community i and age strata j relative to the total number sampled in community i across all strata. Let Pij be the proportion of the population in community i who belong to strata j. If you weight the data by Pij/pij, you will give greater weight to those patients who are undersampled (Pij > pij) and lesser weight to those patients who are oversampled (Pij < pij).  You will give weight 1 to those patients who are sampled correctly (Pij = pij). In the above example assign a weight of 0.5/0.4 = 1.25 to the age group 0-14 years.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/10/CalculatingWeights.html
[sim2]: http://www.pmean.com/original_site.html
