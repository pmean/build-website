---
title: "Comparing two vectors with possible missing values"
author: "Steve Simon"
source: "http://blog.pmean.com/comparing-two-vectors/"
date: "2014-03-06"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

I want to compare two vectors in R that have the same length and
identify where, if anywhere, that the two vectors don't match. It sounds
like an easy thing to do, but missing values muddy things up quite a
bit.

<!---More--->

Suppose you have two vectors in R,

`x <- c(1, 2,99, 4,NA, 6,NA) y <- c(1, 2, 3, 4, 5,NA,NA)`

These vectors match at the first, second, fourth, and seventh location
and mismatch at the other spots. NA, of course, is the code for missing
in R. I want a logical function that is true when the vectors match and
false otherwise. You would think that this would be just as simple as
(x==y), but when you try this, you get a rude surprise.

`> (x==y) [1]� TRUE� TRUE FALSE� TRUE��� NA��� NA��� NA`

The problem is that when one of the values is unknown, R tells you quite
logically that it doesn't know if it equals the other value. So the
fifth case (where x is unknown), the sixth case (where y is unknown),
and the seventh case (where both x and y are unknown) evaluate neither
to TRUE or FALSE, but rather to NA.

This is an example of a [three valued logic
system](http://en.wikipedia.org/wiki/Three-valued_logic). It seems
complicated and prone to error, but a two value logic system is equally
prone to error. In SAS, for example, the missing value code is treated
in logical statements as smaller than any other number (effectively
negative infinity). It's [a bit more complicated than
this](https://support.sas.com/documentation/cdl/en/lrcon/62955/HTML/default/viewer.htm#a001292604.htm),
but for the purposes of this discussion, you don't need to know all the
details. The problem with SAS occurs when you want to select based on
missing values. In SAS, the statement

`if (age < 18)`

will evaluate to TRUE not just for the children, but for those whose
ages are missing. In most situations, you would actually have to use

`if (age < 18) & (age ne .)`

In any program, missing values are a pain. See, for example, all the
hoops you have to jump through with [missing values in
SQL](https://www.simple-talk.com/sql/learn-sql-server/sql-and-the-snare-of-three-valued-logic/)!

Anyway, in R, you need to convert the last three NAs to FALSE, FALSE,
and TRUE, respectively. So you might try

`> (x==y) | (is.na(x) & is.na(y)) [1]� TRUE� TRUE FALSE� TRUE��� NA��� NA� TRUE`

Pop quiz. Why do the seventh value get TRUE even though the first half
of the expression evaluates to NA? Read the answer at the bottom of this
post.

So we're halfway there. We need to convert the two NA values to FALSE.
There are several ways to do this.

`> (x==y) & (!is.na(x) & !is.na(y)) | (is.na(x) & is.na(y)) [1]� TRUE� TRUE FALSE� TRUE FALSE FALSE� TRUE`

Let's split this apart. The first two conditions evaluate to TRUE only
if the two values are equal and both non-missing. But the way it is
coded, it evaluates to FALSE (not NA) when one or both values are
missing.

`> (x==y) & (!is.na(x) & !is.na(y)) [1]� TRUE� TRUE FALSE� TRUE FALSE FALSE FALSE`

The third condition evaluates to TRUE if both values are missing and
FALSE otherwise.

`> (is.na(x) & is.na(y)) [1] FALSE FALSE FALSE FALSE FALSE FALSE� TRUE`

Again, we have sidestepped the dreaded logical missing. Combine these
together with OR to get the final answer.

I'm wondering if there is a more clever way to do this, possibly with
the xor function. If you have something that is shorter and/or easier to
follow, [send me an email](http://www.pmean.com/contact.html).

Answer to pop quiz: when you have a logic statement with OR, and one of
the two components is TRUE, then it doesn't matter whether the second
component is TRUE or FALSE. So R evaluates TRUE \| NA as TRUE.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/comparing-two-vectors/
[sim2]: http://blog.pmean.com
