---
title: "Analyzing ordinal salary categories"
author: "Steve Simon"
source: "http://blog.pmean.com/analyzing-ordinal/"
date: "2015-01-08"
categories: 
- Blog post
tags:
- Logistic regression
- Ordinal data
output: html_document
page_update: complete
---

### Dear Professor Mean,

I have three variables: physicians (%), dentists (%), and salary categories. I want to know if there is a difference in the percentage of physicians and dentists in each salary category. What test I need to use? ANOVA is not appropriate because the outcome is not continuous.

<!---More--->

### Dear Reader,

You need counts rather than percentages. Can you get them?

Also, can you verify that this is a simple random sample?

If you can get the counts and they are coming from something reasonably close to a simple random sample, then you are able to proceed. But lacking either of these means that your data is not amenable to any credible analysis.

Let's hope for the best here. If so, then what you are doing is comparing to see if the counts for the physicians and the counts for the dentists are allocated roughly evenly across the salary categories. Salary category is ordinal, and there is a lot of controversy over the best approach here. Probably the best approach would be ordinal logistic regression. Chi square tests have a problem in that they fail to take advantage of the ordinal nature of your outcome variable and lose a lot of power against reasonable alternative hypotheses. Some people will use a rank based test like Mann-Whitney for this data and even though there are a lot of ties, that ends up being the same as ordinal logistic regression.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/analyzing-ordinal/
[sim2]: http://blog.pmean.com



