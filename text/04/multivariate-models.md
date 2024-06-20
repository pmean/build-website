---
title: Discrepancy between univariate and multivariate models
author: Steve Simon
date: 2004-11-12
categories:
- Blog post
tags:
- Modeling issues
output: html_document
page_update: partial
---
> Someone asked me about an analysis that showed certain factors were
> predictive of a health outcome when considered individually. When
> these factors were included in a multivariate model that included
> other factors, they were no longer statistically significant.
>
> This is worth investigating further but perhaps you need to live with
> a bit of ambiguity in the data. Perhaps some of these variables are
> correlated strongly with other variables that are in the final model.
> You might find for example, that gestational age is a useful predictor
> of health outcomes in a univariate model, but it is not significant in
> a multivariate model that also includes birth weight. This is hardly
> surprising, since birth weight and gestational age are so tightly
> correlated.
>
> There is also the possibility that the multivariate model is itself
> wrong. There is no approach to multivariate models that will guarantee
> that you end up with the "correct model" when you are done. Some
> approaches work better than others, but there will always be some
> unquantifiable degree of uncertainty about the final multivariate
> model that you choose.
>
> This may not be as bad as it sounds though. George Box has a famous
> quote "All models are wrong, but some are useful."

You can find an [earlier version](http://www.pmean.com/04/MultivariateModels.html) of this page on my [original website](http://www.pmean.com/original_site.html).
