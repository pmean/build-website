---
title: "Meta-analysis of ordinal data"
author: "Steve Simon"
source: "http://blog.pmean.com/meta-analysis-of-ordinal-data/"
date: "2014-12-15"
categories: Blog post
tags:
- Systematic overviews
output: html_document
page_update: partial
---

Dear Professor Mean, I would like to conduct a meta-analysis of several
studies. The data in these studies were evaluated using an ordinal
scoring system coded as 0,1,2,3. How to I combine the results of these
studies?

<!---More--->

There is no consensus in the research community on how to analyze an
ordinal outcome measure. Some people use a non-parametric test (e.g.,
Mann-Whitney test). Others use ordinal logistic regression. Still others
will treat the ordinal variable as if it were interval/ratio and apply a
t-test. Finally, some will use a cut-point to create a binary outcome.

The latter two approaches, by the way, have some serious issues, but
that doesn't stop people from using them.

The non-parametric test leaves you out in the cold because there is no
effect size associated with a non-parametric test. You might be able to
cobble something together, but you'd probably need access to individual
patient data.

The ordinal logistic regression produces an odds ratio and you can
probably get those odds ratios into your meta-analysis software. Be
careful, because the standard error for the odds ratio in ordinal
logistic regression is not the same as it would be for the odds ratio
from a two by two table.

The t-test is pretty easy to handle, as you have a mean and standard
deviation for each group.

Of course, with no consensus among researchers, you will probably have
at least one study choosing each of the different analysis strategies,
making it next to impossible to pool the results.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/meta-analysis-of-ordinal-data/
[sim2]: http://blog.pmean.com
