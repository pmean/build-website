---
title: "Recent (and not so recent) advances in statistical computing"
author: "Steve Simon"
source: "http://blog.pmean.com/recent-advances/"
date: "2016-02-22"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

I'm giving a talk to the Statistics students at the University of Central Missouri. Here's the title and abstract of my talk.

<!---More--->

Recent (and not so recent) advances in statistical computing.

Like many other disciplines, Statistics has benefited from Moore's Law. As computers have become smaller, faster, and cheaper, statisticians have increased the capability of their data analysis tools. This talk reviews some of these computer dependent advances over the last 40 years.

I'm going to place some preliminary notes here to help me develop my Powerpoint slides.

Moore's Law is invoked in many different forms, but it was originally derived in 1965 by Gordon Moore, co-founder of Intel Corporation. It states that the numer of components of an integrated chip doubles every year, every 1.5 years, or every two years. The exact form is less critical than the fact that this represents an exponential growth. As the number of circuits in an integrated circuit increases, the speed increases more or less proportionately.

So, for example, the 8088 processor, the heart of the original IBM PC, was introduced in 1979, had 29,000 transistors and could calculate 0.3 million instructions per second (MIPS). The 80286 chip, introduced in 1982, had 139,000 transistors and could calculate 1.2 MIPS. The 80386 chip, introduced in 1985, had 275,000 transistors and could calculate 5.5 MIPS. The 80486 chip, introduced in 1989, had 1.2 million transistors and could calculate 20 MIPS. The first Pentium chips were introduced in 1993, had 3.1 million transistors and could calculate 100 MIPS.

Why is this important? Consider the estimation of regression coefficients in a linear regression model.� The hard part of this computation is the matrix inversion. If you use Gauss-Jordan elimination, it requires on the order of n\^3 operations. You can calculate the inverse by hand. What's the biggest matrix that you've had to invert by hand (only a pocket calculator involved)? How much time did it take? If someone says a 3 by 3 matrix took 10 minutes, then a 24 by 24 matrix would take 24\^3/3\^3 or 512 times longer or 85 hours (3.6 days). If they inverted a 4 by 4 matrix and it took half an hour, then a 24 by 24 matrix would take 6\^3 times longer or 108 hours (4.5 days).

So, back when computers weren't all that powerful, John Tukey developed something he called the resistant line. It was horribly inefficient, but Tukey coined the phrase "practical power" which is the power of a test multiplied times the probability that the test might get used. As smart as John Tukey was, this was one thing that he got wrong. And he got it wrong because he forgot about Moore's Law.

Consider a simple growth curve model. You measure the height of 24 boys on their 7th, 9th, 11th, and 13th birthdays. Suppose the 9 year value is missing on the 3rd boy. Do you replace the value by the average height� of all the other boys at 9 years? Do you replace the missing value with the average height of the boy at 7, 11, and 13 years? You can triangulate using the EM algorithm. Then be sure to knock off a degree of freedom when you're done. With faster computers, you can use multiple imputation, developed by Donald Rubin in 1987. You can also bypass the missing value problem completely by using a random effects linear regression.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/recent-advances/
[sim2]: http://blog.pmean.com
