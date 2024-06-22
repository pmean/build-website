---
title: "Regression with SAS. Additional coding systems for categorical variables"
author: Steve Simon
date: 2008-11-01
categories:
- Recommendation
tags:
- Being updated
- Analysis of variance
- SAS software
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

Regression with SAS. Chapter 5: Additional coding systems for categorical variables in regression analysis. Xiao Chen, Phil Ender, Michael Mitchell, Christine Wells, UCLA Academic Technology Services. Excerpt: Categorical variables require special attention in regression analysis because, unlike dichotomous or continuous variables, they cannot by entered into the regression equation just as they are. For example, if you have a variable called race that is coded 1 = Hispanic, 2 = Asian 3 = Black 4 = White, then entering race in your regression will look at the linear effect of race, which is probably not what you intended. Instead, categorical variables like this need to be recoded into a series of variables which can then be entered into the regression model. There are a variety of coding systems that can be used when coding categorical variables. Ideally, you would choose a coding system that reflects the comparisons that you want to make. In Chapter 3 of the Regression with SAS Web Book we covered the use of categorical variables in regression analysis focusing on the use of dummy variables, but that is not the only coding scheme that you can use. For example, you may want to compare each level to the next higher level, in which case you would want to use "forward difference" coding, or you might want to compare each level to the mean of the subsequent levels of the variable, in which case you would want to use "Helmert" coding. By deliberately choosing a coding system, you can obtain comparisons that are most meaningful for testing your hypotheses. This website was last verified on 2008-URL: www.ats.ucla.edu/stat/sas/webbooks/reg/chapter5/sasreg5.htm. Added 2008-11-19 to  Category: Analysis of variance.

<!---More--->

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/Interesting2008.html
[sim2]: http://www.pmean.com/original_site.html
