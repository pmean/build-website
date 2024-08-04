---
title: "Can I replace missing values with zero?"
author: "Steve Simon"
source: "http://blog.pmean.com/missing-equals-zero/"
date: "2015-05-18"
categories: 
- Blog post
tags:
- Missing data
output: html_document
page_update: complete
---

### Dear Professor Mean,

I have a large data set from a household budget survey with 20,000 records. When I calculate the mean for some of the variables, there are some missing values. Sometimes it is an average of almost 20,000 observations and sometimes is an average of much less than 20,000. Can I replace all the missing values with zero so I am averaging exactly 20,000 observations for each variable?

<!---More--->

### Dear Reader,

Missing values are very difficult. I can't answer your question honestly without understanding a lot more about the individual variables and why they might be missing. Here are some approaches that are worth considering.

#### 1. No news is good news.

If you are looking at certain types of variables, it may be a reasonable assumption that if that value is missing, then that is because only bad values are reported. So a missing value for side effects may be considered the same as no side effects.

#### 2. No news is bad news.

For other types of variables, it may be a reasonable assumption that if that value is missing, then that is because only good values are reported. If someone drops out of a smoking cessation clinic, it is often because they are embarrased to admit that they have "fallen off the wagon" and are smoking like a chimney again.

Both the no news is good news and the no news is bad news approaches are likely to be questioned by a peer reviewer. One thing you might consider is a sensitivity analysis, where you apply the liberal no news is good news approach and the conservative no news is bad news approach in sequence. If the results of both analyses are comparable, then you can safely conclude that your analysis is unaffected by missingness. You'd be safe to report any reasonable approach.

#### 3. No news is average news.

This is sometimes called mean imputation. If you ask ten Likert scale items and the person responded with an average of 2 on nine of the ten items, you might replace the missing item with 2 as well. it gets a bit tricky when the average is a non-integer, but you might be able to get away with this.

There's more than one way to average, of course. If you have 100 patients and the average of the 99 with data on question 7 is 3, then you could use a value of 3 for the 100th patient.

Mean imputation is pretty easy to do, and for many of the analyses that you do (particularly univariate analyses), mean imputation is equivalent to using the average of only the non-missing data values. Mean imputation is frequently bad. It is used a lot, however, and you might get lucky with the peer-reviewers of your paper.

#### 4. No news is old news.

A very similar approach is called last observation carried forward (LOCF). If you have measurements at five time points and a patient has values only for the first four time points, just pretend that the measurement at the fifth time point is unchanged from the fourth time point.

There is a lot of criticism of LOCF in the literature and you probably won't get past peer review on this one. This is a bit unfair perhaps because mean imputation, which is often far worse than LOCF, is often overlooked by peer reviewers.

#### 5. No news is zero news.

Sometimes a missing value represents "nothing" in a way that makes it safe for you to replace that missing value by zero. Suppose you ask for income in four different categories: wages, interest, dividends, and royalties. If someone lists income for wages, interest, and royalties, perhaps they left dividends blank because they had no dividend income. This is somewhat akin to the no news is bad news option.

All of the approaches suggested so far are ad hoc, require untestable assumptions about your data, and represent poor statistical practice. But if you are able to get one of these past peer review, I'm not going to complain.

#### 6. Certain statistical models can tolerate missing values and provide results that are not fairly reasonable.

For example, in the longitudinal example, you might try fitting a random effects regression model. This fits a trend line for each patient and pools the results across all patients. The random effects model allows you to extrapolate the individual trend line to missing values, but you need to do it carefully. As I understand it, these types of models work well for the missing completely at random case, but not so well for the missing at random case. Certainly a random effects regression model is preferred to LOCF.

#### 7. Multiple imputation.

This is surprisingly easy and if you've never done this before, you should try it. I can't summarize multiple imputation well in this email, but if done properly, it can handle a wide range of situations with statistical rigor. There's a pretty good book by Steff van Buuren, but that's not the only good book out there.

#### 8. Bayesian models.

You can build a Bayesian model which not only addresses your research hypothesis, but also allows you to predict the missing values. The model can be quite sophisticated. As I understand it, you can even build Bayesian models to handle the Missing Not at Random (abbreviated MNAR) case. The Bayesian model allows you to explicitly define your assumptions about missingness.

There's a pretty close relationship between multiple imputation and Bayesian models, though the latter has greater flexibility, as I understand it.

One more comment. No matter what approach you use, it is almost always a good idea to compare the demographics of those who provided data for a particular question and those for whom the data is missing. If the demographics of the two match up reasonably well, you have some level of assurance that any reasonable approach to missingness will work well. If you have a disparity, such as a question that is left blank mostly by older patients, then you have trouble and need to consider a rigorous approach like multiple imputation.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/missing-equals-zero/
[sim2]: http://blog.pmean.com




