---
title: Small sample size, yet again
author: Steve Simon
source: http://www.pmean.com/06/SmallSample.html
date: 2006-03-29
categories:
- Blog post
tags:
- Small sample size issues
output: html_document
page_update: partial
---

*Dear Professor Mean, Is there any statistical test/method that will
allow you to make statistically significant conclusions from a sample of
nine? Someone was trying to tell me that if you use a nonparametric
test, you can make get statistical significance, even with a very small
sample size.*

I get this sort of question a lot. Is there a test that will get
statistical significance when you have only nine patients in your
sample? Yes, it's called the "Blood From a Turnip" test.

Your question is a very important one and one that needs a bit more
elaboration. There is no test that allows you to make statistically
significant conclusions, no matter what the sample size. People run
these large trials with thousands of patients and they still sweat while
the statistics are being computed, because no test and no sample size
will guarantee the production of statistical significance.

What you meant to ask was, is it possible to compute a valid test with a
sample size of nine? If the answer to that is Yes, then the second
question is, would such a test ever be able to have enough power to
reject the null hypothesis?

Well, the t-test is valid under certain assumptions and a nonparametric
test is valid under certain assumptions. The set of assumptions is a bit
smaller and less restrictive for the nonparametric test. In particular,
the nonparametric test never requires that the underlying distribution
is normal and this assumption is very important for small sample sizes.
By the way, the word "valid" here deserves a definition. A statistical
test is valid if the overall alpha level of the test does not deviate
significantly from the specified alpha level.

A nonparametric test might be valid even for very small sample sizes.
Keep in mind, though, that nonparametric tests still have assumptions.
Some nonparametric tests, for example, require symmetry of the
underlying distribution. This is far less restrictive than normality,
but it is still an important assumption.

There are times that even a t-test is valid for a sample of size nine,
and there are times that neither a t-test nor a nonparametric test are
valid. So I think it would be a mistake to say that you always have to
use a nonparametric test if the sample size is small.

If you think the assumptions of either the t-test or the nonparametric
test are satisfied, then you move on to the second question. Would such
a test ever have enough power to reject the null hypothesis? The answer
is that with a sample size of 5-10, you must hope for an all-or-nothing
response. Anything short of an all-or-nothing response, you would have
inadequate power.

An all-or-nothing response means that the best patient in the control
group is still worse off than the worst patient in the treatment group.
In many (if not most) research settings, an all-or-nothing response is
almost impossible to achieve. It only takes one or two patients who have
an unexpectedly low or high response to totally destroy your
all-or-nothing response. And ask yourself an honest question. If the
treatment I am considering is so powerful that it is likely to produce
an all-or-nothing response, wouldn't you already know that? Typically
we research problems where the effects are subtle rather than
pronounced. Most treatments that produce an all-or-nothing response have
probably already been discovered by someone else.

But let's be a bit more pragmatic. I assume that the data has already
been collected. If so, go ahead and analyze the data. It costs you
nothing to perform the analysis. Be sure to report the confidence
interval rather than the p-value, because you need to alert your readers
that a sample of 9 has very poor precision. Your conclusions will be
ambiguous and generally uninformative and you will end up saying
something like "Although we did not reject the null hypothesis, we are
unsure if this is because there truly is no difference between the two
groups or if it is just a reflection of the inadequate sample size."
What an awful thing to have to admit.

If the data has not been collected yet, ask yourself if it is worth your
time and trouble to collect data that is going to produce a foregone
conclusion. Ask yourself if it is ethical to ask nine research subjects
to sacrifice their time and energy in a research endeavor that will
almost certainly lead to an ambiguous conclusion. Also ask yourself if
you can reasonably expect approval any group that has oversight or
approval authority (an Institutional Review Board or an Animal Care and
Use Committee, for example).\
\
For what it's worth, certain research settings have so much precision
that it is not too difficult to show an all-or-nothing response. Certain
in vitro experiments are very carefully controlled so that the results
are almost perfectly reproducible. Not all in vitro experiments are so
blessed, but when this does happen, it is not outrageous to expect to
see an all-or nothing response. Another research setting where you might
get by with a very small sample size is a cross-over trial, because in
that trial, each subject serves as their own control.
