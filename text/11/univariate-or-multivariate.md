---
title: Should I report the univariate or the multivariate logistic regression analysis?
author: Steve Simon
date: 2011-09-07
categories:
- Blog post
tags:
- Logistic regression
output: html_document
page_update: complete
---

### Dear Professor Mean,

I have results from four univariate logistic regression models and one multivariate logistic regression model with all four variables. In my univariate analysis, all the variables are significant. But, in multivariate analysis, only x1 is significant. Which results should I report?

<!---More--->

### Dear Reader,

There are several different approaches, but here is one I use frequently. The univariate analyses are labelled as "unadjusted" because they represent the effect without controlling for the other variables in the model. The multivariate model provides four "adjusted" effects because it represents the impact of a given variable after holding all the other variables constant. Your table of odds ratios and confidence intervals would look something like

```
     unadjusted      adjusted
     odds ratio     odds ratio
 x1 2.4 (1.6,3.6)  2.3 (1.5,3.5)
 x2 2.8 (2.0,4.2)  1.8 (0.9,2.1)
 x3 3.3 (2.5,6.7)  1.5 (0.9,2.1)
 x4 2.6 (1.2,4.0)  1.4 (0.7,2.2)
```

Notice in this example, that the effect of adjusting is to attenuate all of the odds ratio except for x1.

As a general guide on how to write up statistical analyses, look for a wonderful book: How to Report Statistics in Medicine: Annotated Guidelines for Authors, Editors, and Reviewers by Thomas A. Lang and Michelle Secic.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/report.html
[sim2]: http://www.pmean.com/original_site.html 
