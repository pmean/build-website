---
title: A bunch of univariate nonparametric tests versus a single parametric model
author: Steve Simon
date: 2011-11-03
categories:
- Blog post
tags:
- Logistic regression
output: html_document
page_update: complete
---

### Dear Professor Mean,

I'm working on a of weight loss during hospitalization. I'm measuring the percent change in the weight loss from admission to discharge and looking at the factors that influence it. I ran some non parametric tests and found a few factors that were associated with the weight loss. When I run a multivariate linear regression model, only one factor is associated with weight loss. The linear regression model assumes normative data, so I am not sure I can do that here. The data appears to be normally distributed but fails the test of normality. So, should I just report the non parametric tests? Is there a multivariable model for non normally distributed data?

<!---More--->

Dear Reader,

The big problem with nonparametric tests is that they don't generalize easily to settings like multivariable models. It is defensible to either rely on univariate nonparametric models or fit a multivariate parametric model like linear regression. Both have advantages and disadvantages. But whichever one you pick, you know that the peer-reviewer will make you switch.

There are some who advocate the use of ordinal logistic regression in this setting. Your outcome variable is not categorical, but ordinal logistic regression can still be used here. A univariate ordinal logistic model for continuous data might be a hard sell, though, for the peer reviewers.

If it were me, I'd run the multivariate linear regression model. Nonnormality is an overhyped problem. Also, the tests of normality are usually too sensitive, especially with moderate to large sample sizes. They detect trivial departures from normality that don't really hurt the validity of the multivariate linear regression model.

That just my preference. But there is no formal consensus in the research community, so you do have some latitude.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/SingleModel.html
[sim2]: http://www.pmean.com/original_site.html 
