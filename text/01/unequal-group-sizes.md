---
title: Unequal group sizes
author: Steve Simon
date: 2001-11-02
categories:
- Blog post
tags:
- Being updated
- Analysis of variance
output: html_document
page_update: partial
---
*Dear Professor Mean, I am comparing several groups of subjects, but the
number of subjects in each group differ quite a bit. How does this
affect the assumptions in analysis of variance.*

Equal group sizes are not a requirement for ANOVA. Some of the post hoc
tests in ANOVA require equal sample sizes, but there are ways to work
around this.

With unequal group sizes comes a loss of power, because the precision of
your estimates is dominated by the smaller (smallest) group sample size.
Still there are plenty of situations where unequal group sizes are
recommended. If, for example, the cost of sampling a control subject is
much smaller than the cost of sampling a treated subject, then you can
justify sampling a greater number of control subjects because it
produces the most precision for the money.

You should look closely at your assumption of equal variances, however,
since a violation of this assumption is more problematic when the group
sizes are not equal.

So my recommendation is to not worry too much about group sizes that are
not equal.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/01/unequal.html
[sim2]: http://www.pmean.com/original_site.html
