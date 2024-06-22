---
title: "Tests of equivalence and non-inferiority"
author: "Steve Simon"
source: "http://blog.pmean.com/equivalence-talk/"
date: "2018-03-23"
categories:
- Blog post
tags:
- Hypothesis testing
output: html_document
page_update: partial
---

I'm making a webinar presentation in April for [The Analysis
Factor](https://www.theanalysisfactor.com/). I've done this several
times in the past. The talk in April will be on tests of equivalence and
non-inferiority, a topic which I have [covered briefly in my
newsletter](http://www.pmean.com/news/201012.html#1). I thought I'd
share a first draft of the abstract here on my blog.

<!---More--->

Tests of equivalence and non-inferiority.

Statistics is, to a large extent, a science of comparison. You are
trying to find if one group is bigger, faster, or smarter than another.
You do this by setting up a null hypothesis that your two groups have
equal means or proportions and an alternative hypothesis that one group
is "better" than the other. Even if you pretend to be dispassionate, you
hope, quietly and secretly, that the data you collect will end up
rejecting the null hypothesis. But there are times when you want to show
not that one group is better than the other, but that the two groups are
equivalent. This is impossible, by conventional wisdom. You can't prove
a negative. Well, you can prove a negative, but it takes more work. In
this presentation, you'll review the framework of the traditional
hypothesis test and compare it to the framework of the equivalence test,
and its one-sided cousin, the non-inferiority test. You'll learn how to
specify a range of equivalence or a margin of non-inferiority, where
those values define differences that are small enough to be tolerable.
You'll also identify critical issues in the design of an equivalence or
non-inferiority study that can make or break your experiment.

Here's a revised version:

Tests of Equivalence and Non-Inferiority with Steve Simon

Statistics is, to a large extent, a science of comparison. You are
trying to test whether one group is bigger, faster, or smarter than
another.<U+FFFD> You do this by setting up a null hypothesis that your two
groups have equal means or proportions and an alternative hypothesis
that one group is "better" than the other. The test has interesting
results only when the data you collect ends up rejecting the null
hypothesis. But there are times when the interesting research question
you're asking is not about whether one group is better than the other,
but whether the two groups are equivalent.<U+FFFD> For example, at which point
do second-language speakers make as few grammar errors as native
speakers?<U+FFFD> Or at which point does a new drug with fewer side effects
work just as well as the standard treatment?

Finding equivalence is impossible, by conventional wisdom. You can't
prove a negative. (Well, you can prove a negative, but it takes more
work.)<U+FFFD> There is an entirely different hypothesis testing framework that
allows for this kind of comparison.<U+FFFD> In this webinar, we'll review the
framework of the traditional hypothesis test and compare it to the
framework of the equivalence test and its one-sided cousin, the
non-inferiority test.<U+FFFD> You'll learn how to specify a range of
equivalence or margin of non-inferiority, where those values define
differences that are small enough to be tolerable.<U+FFFD> You'll also identify
critical issues in the design of an equivalence or non-inferiority study
that can make or break your experiment.


