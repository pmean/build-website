---
title: Slash and burn models
author: Steve Simon
source: http://www.pmean.com/06/SlashAndBurn-06.html
date: 2006-06-26
categories:
- Blog post
tags:
- Modeling issues
output: html_document
page_update: partial
---

I received an email question about developing a logistic regression
model with some interaction terms. One of the interaction terms was
statistically significant but one or both of the main effects associated
with the interaction was not.<U+FFFD> So is it okay, I was asked to include the
interaction in the final model but not the non-significant main effects?

First, I need to comment on the "slash and burn"<U+FFFD> model building
practice that this person is using. A recent posting to the
[MedStats](../category/InterestingWebsites.html#MeStXx) email discussion
group outlines problems with this approach (although it does not use the
term "slash and burn"). The person who adopts a "slash and burn"
approach to models has a parsimonious intent. He/she wants to use as few
degrees of freedom as possible in the final statistical model and one
way to do this is to strip out anything that has an insignificant
p-value. The ideal in the "slash and burn" world is a model where
every single p-value is smaller than 0.05.

I've done my share of "slash and burn" in the past, but as more
research is being done, there is increasing evidence that these
parsimonious models do not perform as well as expected. The "slash and
burn" model is not too dissimilar from automated approaches like
stepwise regression and appear to have many of the same flaws. I want to
summarize these criticisms (Frank Harrell has some very interesting
research in this arena), but I have not had the time to do this well.
One reason I wanted to write up a description of the propensity score
model (see my other weblog entry for June 26, 2006) is that it offers a
different approach to "slash and burn."

Other ideas worth considering are setting up models based on your
initial understanding of the problem and if something that you expected
to be highly significant turns out not so, maybe it isn't so terrible
to still include it in the final model. You should also consider
including or excluding terms from the model based on considerations
other than the p-value. If a covariate has a very limited range, for
example, or a large percentage of missing values, it may be best to
leave that variable off of the menu entirely. If a covariate has been
demonstrated to be important in most previous studies, give it the
benefit of the doubt and include it in your model regardless of what
your p-value might say.

There are entirely new methods for model fitting, such as the lasso,
Bayesian Model Averaging, and smoothing splines that offer intriguing
alternatives to "slash and burn." These new approaches are rather
technical but appear to work well in practice. A revolutionary book that
describes how these approaches are changing how we practice statistics
is

-   **Regression Modeling Strategies: With Applications to Linear
    Models, Logistic Regression, and Survival Analysis.** Frank E.
    Harrell (2001) New York, NY: Springer. [\[BookFinder4U
    link\]](http://www.bookfinder4u.com/detail/0387952322.html)
    **(Model, Regression)**

But while Frank Harrell and others are making intelligent challenges and
offering intriguing alternatives, it is worth noting that "slash and
burn" is still quite popular and there are generally accepted protocols
that you follow.

First, it is very important to remove terms one at a time. Two terms in
a model might both be strongly correlated and the effect of A holding B
constant and the effect of B holding A constant might both be
statistically insignificant because both A and B are effectively
measuring the same thing. Eliminate one of the factors or the other, but
not both because things can change in surprising ways each time a factor
is removed from your model.

Second, it is very important to respect the hierarchy of terms in a
model. If a model includes a cubic term, then you need to include the
quadratic and linear terms in the model, even if they are not
statistically significant. The reason for this is that simple linear
transformations of a cubic term (such as a change in units) will often
convert some of those non-significant lower order terms back into
significant ones on the transformed scale.

For a similar reason, it is a very bad idea to include an interaction
term in your model without the main effects. Simple things like changing
your reference level will profoundly change the nature of the
interaction unless you are careful to include the main effects.

This is very important because most people who use tools like logistic
regression are unaware of the internal mechanics of the programs.
Different software has different internal workings so something that
produces one set of results in one program might have radically
different results in another program.

So how do you investigate an interaction in the "slash and burn"
world? There are several choices that are worth looking at, but a lot
depends on the context of your problem.

Sometimes a significant interaction is caused by an outlying cell. This
is a combination of factors that has a response probability that is far
out of line relative to other combinations of factors. You might look to
identify this unique combination and estimate its response probability
separately with a special indicator variable.

If your factors have more than two levels, you might see if the
interaction disappears when a single level of one of your factors is
intentionally left out of the model. Is the interaction isolated in a
particular subgroup of your data?

If the interaction is one that has no rational explanation based on your
knowledge of science, then perhaps you should reconsider whether your
original choice to investigate interactions was a good one. Every
research study places implicit or explicit limitations on the types of
models and the complexity levels that will be considered. Perhaps a
troublesome interaction is evidence that your initial plan was simply
casting your net too widely.

There are lots of other things you might do, and it depends a lot on the
context of your problem. Many of the choices you take will be
controversial and there is no generally accepted process that everyone
agrees with for building a good statistical model. I'm sure that some
of the stuff I have described here will be found to be totally appalling
by some.

**Related reading on these web pages:**

-   [Stats: Exploring interactions in a linear regression
    model](../model/lin_int.asp)
-   [Stats: The concepts behind the logistic regression
    model](../model/logist_concepts.asp)
-   [FAQ-12 What are some of the problems with stepwise
    regression?](../faq/faq12.asp)
-   [Stats: Stepwise regression to screen for covariates (November 25,
    2005, Model, Linear
    regression)](http://www.pmean.com/weblog2005/StepwiseRegression.asp)
-   [Stats: What is the best statistical model? (September 17, 2004,
    Model, Logistic
    regression)](http://www.pmean.com/weblog2004/BestModel.html)
-   [Stats: Interactions in logistic regression (April 8, 2004, Model,
    Logistic
    regression)](http://www.pmean.com/weblog2004/interactions.asp)
