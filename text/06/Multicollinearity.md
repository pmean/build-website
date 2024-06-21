---
title: Multicollinearity is not a violation of assumptions
author: Steve Simon
source: http://www.pmean.com/06/Multicollinearity.html
date: 2006-01-20
categories:
- Blog post
tags:
- Modeling issues
output: html_document
page_update: partial
---

> A colleague from my days at the National Institute for Occupational
> Safety and Health emailed me a question. Apparently, one of the
> co-authors of a paper he is writing is in a bit of a panic because the
> linear regression model that they are using has multicollinearity. She
> calls this a violation of assumptions and wonders if she should look
> at certain transformations that are difficult to interpret but which
> remove much of the multicollinearity. To me this seems like jumping
> from the frying pan into the fire.
>
> The first thing to recognize is that the presence of multicollinearity
> is not a violation of assumptions. It is worth repeating,
> MULTICOLLINEARITY IS NOT A VIOLATION OF ASSUMPTIONS. All of the tests
> and confidence intervals in a regression model are valid in the
> presence of multicollinearity.
>
> Multicollinearity does lead to a loss of precision and power, so you
> have to look at the overall findings. If they are positive, then say
> "In spite of severe multicollinearity, we were able to establish an
> association between our exposure variable and our outcome." If the
> results are negative, then say "Although these results are negative,
> we need to be cautious about our findings, since the presence of
> multicollinearity may have led to a serious loss in precision for our
> estimate of the exposure effect."
>
> Another thing to keep in mind is that the multicollinearity is often
> just a factor among your covariates and it may not directly involve
> your exposure variable. In this case, you may have some difficulty
> figuring out which covariates are more important than the others, but
> who cares. As long as you adjust for all the relevant covariates, your
> estimate of the exposure effect should still be good.
>
> Some people advocate tossing out some of the covariates if there is
> multicollinearity, and this is a defensible course of action. The
> latest word, as I understand it, though, is that you are still better
> off keeping all your covariates in. There are a lot of opportunities
> for mischief if you start tinkering with the covariate list. I'll try
> to write more about this when I have time.
