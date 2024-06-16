---
title: Type II error
source: http://www.pmean.com/99/typetwo.html
author: Steve Simon
date: 1999-09-13
categories:
- Blog post
tags:
- Being updated
- Hypothesis testing
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, A journal reviewer criticized the small sample
size in my research study and suggested that I mention a Type II error
as a possible explanation for my results. I've never heard this term
before. What is a Type II error?*

In your research, you specified a null hypothesis and an alternative
hypothesis. Typically, the null hypothesis corresponds to no change.

When you are using Statistics to decide between these two hypothesis,
you have to allow for the possibility of error. Actually, if you are
using any other procedure, you should still allow for the possibility of
error, but we statisticians are the only ones honest enough to admit
this. Here are the two types of errors:

-   A type I error is **rejecting the null hypothesis when the null
    hypothesis is true**.
-   A type II error is **accepting the null hypothesis when the null
    hypothesis is false**.

The null hypothesis traditionally represents a negative finding (i.e.,
there is no difference between the treatment and control). You should
always remember that it is impossible to prove a negative. Some
statisticians will emphasize this fact by using the phrase "fail to
reject the null hypothesis" in place of "accept the null hypothesis."
The former phrase always strikes me as semantic overkill.

**Example**

Consider a new drug that we will put on the market if we can show that
it is better than a placebo.

-   A type I error would be **allowing an ineffective drug onto the
    market**.
-   A type II error would be **keeping an effective drug off the
    market**.

Suppose we are comparing two groups of patients, one with a possibly
dangerous exposure (e.g., non-ionizing radiation), and the other
unexposed.

-   A type I error would **condemning an exposure that actually is
    safe**.
-   A type II error would be **absolving an exposure that actually does
    harm**.

**Many studies have small sample sizes that make it difficult to reject
the null hypothesis** even when there is a big change in the data. In
these situations, a Type II error might be a possible explanation for
the negative study results.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/typetwo.html
[sim2]: http://www.pmean.com/original_site.html
