---
title: Modular arithmetic and rounding in R
author: Steve Simon
source: http://www.pmean.com/07/ModularArithmeticInR.html
date: 2007-02-01
categories:
- Blog post
tags:
- R software
output: html_document
page_update: complete
---

In certain programming situations, you need to perform calculations involving division that produce whole numbers as a result. For example, if you divided 27 by 4, you would get 6.75, but if you were using whole numbers only, then your result would be 6 with a remainder of 3.

In R, the operator %/% produces an integer division, and the operator %% computes the remainder. So in R, the result of 19%/%4 would be 6 and the result of 19%%4 would be 3.

Here's a practical example. Suppose you wanted to take the numbers 0 through 23 and place them in a matrix with 4 rows and 6 columns, filling the matrix row by row. Integer division will help you assign the rows

```
> 1+(0:23)%/%4
[1] 1 1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 5 6 6 6 6
```

and modular artithmetic will help you assign the columns

```
> 1+(0:23)%%4
[1] 1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4
```

If you want to round a number to the nearest integer, use the round() function. For numbers with fractional portions exactly equaling 0.5, this function always rounds to the even digit. The round() function has an argument, digits, which allows you to round at a different level of precision. For example, using digits=2 will round to the nearest hundredth, and digits=-3 will round to the nearest thousand.

Other related functions that will produce integer results are

+ ceiling() which computes the closest integer that is larger than x,
+ floor() which computes the closest integer that is smaller than x, and
+ trunc() which computes an integer by dropping the fractional portion.

You would think that the last two functions produce the same results, and that is indeed true for positive numbers. But for negative numbers, dropping the fractional portion will actually produce a slightly larger value. Thus

+ floor(-9.1) equals -10, but
+ trunc(-9.1) equals -9.

**Related web pages:**

+ [Stats: Rules for rounding numbers (September 7, 2006)][sim3]

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/ModularArithmeticInR.html
[sim2]: http://www.pmean.com
[sim3]: http://www.pmean.com/weblog2006/RoundingNumbers.asp
