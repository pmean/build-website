---
title: "Recommendation: ROSE: A package for binary imbalanced learning"
author: "Steve Simon"
source: "http://blog.pmean.com/binary-imbalanced-learning/"
date: "2017-05-02"
categories: Recommendation
tags: Big data, Logistic regression
output: html_document
---

Logistic regression and other statistical methods for predicting a
binary outcome run into problems when the outcome being tested is very
rare, even in data sets big enough to insure that the rare outcome
occurs hundreds or thousands of times. The problem is that attempts to
optimize the model across all of the data will end up looking
predominantly at optimizing the negative cases, and could easily ignore
and misclassify all or almost all of the positive cases since they
consistute such a small percentage of the data. The ROSE package
generates artificial balanced samples to allow for better estimation and
better evaluation of the accuracy of the model.

<!---More--->

Nicola Lunardon, Giovanna Menardi, and Nicola Torelli. ROSE: A Package
for Binary Imbalanced Learning. The R Journal 6/1, 79-89, June 2014.
Available at
<https://journal.r-project.org/archive/2014-1/menardi-lunardon-torelli.pdf>.

![](http://www.pmean.com/images/images/17/binary-imbalanced-learning01.png)




