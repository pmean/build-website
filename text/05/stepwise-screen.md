---
title: Stepwise regression to screen for covariates
author: Steve Simon
source: http://www.pmean.com/05/StepwiseRegression.html
date: 2005-11-25
categories:
- Blog post
tags:
- Being updated
- Covariate adjustment
output: html_document
page_update: partial
---
**[StATS]:** **Stepwise regression to screen for
covariates (November 25, 2005)**.

Someone wrote asking about how best to use stepwise regression in a
research problem where there were a lot of potential covariates. A
covariate is a variable which may affect your outcome but which is not
of direct interest. You are interested in the covariate only to assure
that it does not interfere with your ability to discern a relationship
between your outcome and your primary independent variable (usually your
treatment or exposure variable).

The writer offered up a couple of approaches. First, include all the
covariates (but not the primary independent variable) in a stepwise
regression model and then adjust your primary independent variable for
those covariates which survive the stepwise regression. Second, include
all the covariates and the primary independent variable in a stepwise
regression model and then report the final model. If the final model
fails to include your primary independent variable, that is just
evidence that your primary hypothesis is negative.

The person who wrote in was well aware of the weaknesses of stepwise
regression, but for those of you who are not familiar with those
weaknesses, please read

- [What are some of the problems with stepwise
regression?](../faq/faq12.asp)

which is a summary I made of comments about stepwise regression by Ira
Bernstein, Ronan Conroy and Frank Harrell that were published on the
email discussion list, stat-l.

The research community is gradually moving away from stepwise regression
to other more sophisticated methods, but for now you can probably get a
stepwise regression model published in most medical journals.
Furthermore, there is no established method for how to use stepwise
regression, so you are free to use any approach that is not totally
outrageous. Here are some general comments, though.

First, if your goal is to assure that no confounding variables produce
an incorrect relation between exercise and breast cancer, then the
safest thing to do is to include all the potential covariates in the
model and not worry about which ones pass some threshold for inclusion
in the model. The drawback to this approach, of course, is that you lose
a lot of degrees of freedom.

Second, never let a stepwise regression model violate your notion of
common sense. If a particular covariate is known to be important (e.g.,
cigarette smoking in a cancer study) then exclusion of this covariate on
the basis of a stepwise regression approach is a mistake. I like to
think of stepwise regression as an intelligent assistant. It offers some
help and guidance, but don't let it dictate the form of your final
statistical model.

Third, never let stepwise regression bypass your primary research
hypothesis. If a stepwise approach tosses out your primary independent
variable, force it back into the equation anyway at the end, because you
need to see the confidence interval and p-value associated with this
variable.

Finally, as noted above, there are some new approaches that compete very
well against stepwise regression in this particular situation. You
should examine the use of propensity scores (which I hope to write an
example for soon), as these offer all the advantages of including all
possible covariates and none of the disadvantages. There is also a book
by Frank Harrell on regression modeling approaches that is well worth
reading.

- **Regression Modeling Strategies: With Applications to Linear
Models, Logistic Regression, and Survival Analysis.** Harrell
FE (2001) New York, NY: Springer. ISBN: 0387952322. [\[BookFinder4U
link\]](http://www.bookfinder4u.com/detail/0387952322.html)

You can also browse
for pages similar to this one at [Category: Covariate
adjustment](../category/CovariateAdjustment.html).

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/StepwiseRegression.html
[sim2]: http://www.pmean.com

