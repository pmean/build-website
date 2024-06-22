---
title: What does "overfitting" mean?
author: Steve Simon
source: http://www.pmean.com/03/overfit.html
date: 2003-07-24
categories:
- Blog post
tags:
- Modeling issues
output: html_document
page_update: complete
---

#### Dear Professor Mean,

I am conducting binary logistic regression analyses with a sample size of 80 of which 20 have the outcome of interest (e.g. are "very successful" versus somewhat/not very successful). I have thirty possible independent variables which I examined in a univariate logistic regression with the dependent variable. Of these thirty, five look like they might have a relationship with the independent variable. Now I want to include these six variables in a stepwise logistic regression model, but I am worried about overfitting the data. I have heard that there should be about 10 cases with the outcome of interest per independent variable to avoid overfitting. What exactly does overfitting mean?

#### Dear Reader

I apologize if some of the comments here appear harsh. You are going to have to seriously lower your expectations. That may be disheartening, but better to face the bad news now rather than later.

#### What is overfitting?

Overfitting means that some of the relationships that appear statistically significant are actually just noise. It occurs when the complexity of the statistical model is too great for the amount of data that you have. You will find that a model with overfitting does not replicate well and does a lousy job of predicting future responses. In simple words, the model stinks.

#### Rule of ten observations per variable.

The rule of 10 observations per variable (I've also heard 15) is referring to the number of variables screened, not the number in the final model. Since you looked at 30 variables, you really needed 300 to 450 events of interest to be sure that your model is not overfitting the data.

#### What to do, what to do?

 If you are trying to publish these results, you have to hope that the reviewers are all asleep at the switch. Instead of a ratio of 10 or 15 to one, your ratio is less than one to one. You have more variables than events. And since all 30 variables are part of the initial screen, so you can't say that you only looked at 5 variables.

Of course, you were unfortunate enough to have the IRB asleep at the switch, because they should never have approved such an ambitious data analysis on such a skimpy data set. So maybe the reviewers will be the same way.

I wouldn't count on it, though. If you want to improve your chances of publishing the results, there are several things you can do.

1. I realize that the answer is almost always "NO" but I still have to ask--is there any possibility that you could collect more data? In theory, collecting more data after the study has ended is a protocol deviation (be sure to tell your IRB). And there is some possibility of temporal trends that might interfere with your logistic model. But both of these "sins" are less serious than overfitting your data.

2. You could slap the "exploratory" label on your research. Put in a lot of qualifiers like "Although these results are intriguing, the small sample size means that these results may not replicate well with a larger data set." This is a cop-out in my opinion. I've fallen back on this when I've seen ratios of four to one or three to one, but you don't even come close to those ratios.

3. Ask a colleague who has not looked at the data to help. Show him/her the list of 30 independent variables and ask which two should be the highest priority, based on biological mechanisms, knowledge of previous research, intuition, etc., BUT NOT LOOKING AT THE EXISTING DATA. Then do a serious logistic regression model with those two variables, and treat the other twelve variables in a purely exploratory mode.

4. Admit to yourself that you are trying to squeeze blood from a turnip. A sample of 80 with only 20 events of interest is just not big enough to allow for a decent multivariable logistic regression model. You can't look for the effect of A, adjusted for B, C, and D, so don't even try. Report each individual univariate logistic regression model and leave it at that.

5. Give up all thoughts of logistic regression and p-values altogether. This may seem like a radical approach, but who made a rule that says that every research publication has to have p-values? Submit a publication with a graphical summary of your data. Boxplots and/or bar charts would work very nicely here. Explain that your data set is too small to entertain any serious logistic regression models. If you're unlucky, then the reviewers may ask you to put in some p-values anyway. Then you could switch to the previous option.

6. There are some newer approaches to statistical modeling that are less prone to overfitting. Perhaps the one you are most likely to see if CART (Classification and Regression Trees). These models can't make a silk purse out of a sow's ear, but they do have some cross validation checks that make them slightly better than stepwise approaches.

#### Summary

If you asked a group of statisticians how many of them have published results when they knew that the sample size was way too small, almost every hand would go up, I suspect. I've done it more times than I want to admit. Just be sure to scale back your expectations, limit the complexity of any models, and be honest about the limitations of your sample size.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/03/overfit.html
[sim2]: http://www.pmean.com/original_site.html
