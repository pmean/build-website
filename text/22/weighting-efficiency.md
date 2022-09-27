---
title: "Why weighting for iid data is inefficient"
author: "Steve Simon"
source: new
date: "2022-09-26"
category: 
- Blog post
tags:
- Statistical theory
output: html_document
---

Usually, you use weighting to gain efficiency in a setting where different data points have different variances. But if the variances are equal, such as in an independent and identically distributed setting, weighting might be done for other reasons. It may be needed, but you do lose some efficiency when you do this.

<!--more-->

How would you show this? 

$Var(\Sigma_i w_iX_i)= \Sigma_i(w_i^2 \sigma_i^2)$

According to the Cauchy-Schwarz inequality, this is less than or equal to 

$\Sigma_i(w_i^2)\Sigma_i \sigma_i^2)$

If all the variances are the same, then this reduces to 

$\Sigma_i(w_i^2)n\sigma^2)$


