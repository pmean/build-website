---
title: Degrees of Freedom
source: http://www.pmean.com/99/df.html
author: Steve Simon
date: 1999-09-03
categories:
- Blog post
tags:
- Being updated
- Statistical theory
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, In your Simple Descriptive Statistics class, you
described the standard deviation as the square root of the **average**
squared deviation. If it is an average, how come we divide by the
degrees of freedom (n-1) rather than n. Is this just a conspiracy among
statisticians to make this stuff harder to understand.*

> You've been watching too many episodes of the X-files. We'd make
> this simpler if we could.
>
> Degrees of freedom is a **measure of how much precision an estimate of
> variation has**. A general rule is that **the degrees of freedom
> decrease when we have to estimate more parameters**.
>
> **Before you can compute the standard deviation, you have to first
> estimate a mean**. This causes you to lose a degree of freedom and you
> should divide by n-1 rather than n. In more complex situations, like
> Analysis of Variance and Multiple Linear Regression, we usually have
> to estimate more than one parameter. Measures of variation from these
> procedures have even smaller degrees of freedom than our standard
> deviation formula.
>
> Here's a cute joke I heard that is based on the concepts we just
> talked about. Two statistics are in a bar, talking and drinking. One
> statistic turns to the other and says "So how are you finding married
> life?" The other statistic responds, "It's okay, but you lose a
> degree of freedom."

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/df.html
[sim2]: http://www.pmean.com/original_site.html
