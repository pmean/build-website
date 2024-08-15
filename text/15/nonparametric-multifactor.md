---
title: "Nonparametric tests for multifactor designs"
author: "Steve Simon"
source: "http://blog.pmean.com/nonparametric-multifactor/"
date: "2015-03-30"
categories: 
- Blog post
tags:
- Logistic regression
- Nonparametric tests
output: html_document
page_update: complete
---

### Dear Professor Mean,

I want to run nonparametric tests like the Kruskal-Wallis test and the Friedman test for a setting where there may be more than one factor. Everything I've seen for these two tests only works for a single factor. Is there any extension of these tests that I could use when I suspect that my data is not normally distributed.

<!---More--->

### Dear Reader,

Most nonparametric tests based on ranks (like Kruskal-Wallis and Friedman) do not extend well to additional factors. The reason for this is that the assumption that all rankings are equally likely under the null hypothesis does not work when testing the significance of one factor when another factor might have variation in the outcome measure.

Any extension of these nonparametric tests would therefore no longer be nonparametric. That doesn't mean that you can't use them, but it means that most of the motivation for choosing them disappears.

There is an alternative, however. Ordinal logistic regression is able to handle ordinal data like ranks and it is invariant to any montone transformation of your outcome variable. And ordinal logistic regression extends easily to multiple factors. It does have a pretty strong assumption of parallelism, but this is something that you can easily check. It certainly would be less restrictive than the assumption of normality.

You should also consider transformations like the log transform that can sometimes turn data that is highly skewed and heteroscedastic into nice well behaved data amenable to the classic multifactor ANOVA models.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/nonparametric-multifactor/
[sim2]: http://blog.pmean.com


