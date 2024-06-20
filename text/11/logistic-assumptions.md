---
title: What are the assumptions of logistic regression
author: Steve Simon
date: 2011-09-01
categories:
- Blog post
tags:
- Logistic regression
output: html_document
page_update: complete
---

### Dear Professor Mean,

Does anyone have a good reference for the assumptions of binary logistic regression? I have a client who has an anonymous reviewer who says his analysis doesn't meet one of the assumptions, but it doesn't make any sense in this situation, and I think the reviewer doesn't understand something.

<!---More--->

### Dear Reader,

There are only two assumptions: linearity on the log odds scale and independence. Independence is usually established by citing the sampling mechanism. As long as you don't do something like take data from identical twins, you should be okay here. Independence becomes a problem with cluster sampling and hierarchical models.

There is a formal test of linearity called the Hosmer and Lemeshow test. You split your continuous predictor variable into ten groups, and compare the group probabilities with what a model that is linear on the log odds scale would predict. You can also fit a more complex model, such as a spline and compare it to the linear model.

Linearity, of course, is a moot point if your predictor variable is categorical. A binary predictor variable, for example, reduces to a two by two table, and the only assumption for a two by two table is independence.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/LogisticAssumptions.html
[sim2]: http://www.pmean.com/original_site.html
