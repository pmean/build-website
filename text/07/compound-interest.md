---
title: Compound interest and powers
author: Steve Simon
source: http://www.pmean.com/07/CompoundInterest.html
date: 2007-02-11
categories:
- Blog post
tags:
- Statistical theory
output: html_document
page_update: complete
---

In some of my mathematical calculations, I end up computing an expression that involves a number very close to one raised to a very large power. This term can often be approximated by an exponential function, but I can never quite remember the relationship. An example involving compound interest may help me remember better in the future.

<!---More--->

If you invest an amount of money A for t years at a simple interest rate, i, the amount of money that you earn is

![](http://www.pmean.com/new-images/07/CompoundInterest01.gif)

and if you compound the interest n times per year, the amount you earn is

![](http://www.pmean.com/new-images/07/CompoundInterest02.gif)

If you let n go to infinity, this term converges to

![](http://www.pmean.com/new-images/07/CompoundInterest03.gif)

This formula is well known to people in finance and in mathematics. A nice explanation can be found in the [Wikipedia article on compound interest][wik1].

As an example of how I would use this, I had an expression of the form

![](http://www.pmean.com/new-images/07/CompoundInterest04.gif)

What would this equal for values of s close to zero? Replace s with 1/n to get

![](http://www.pmean.com/new-images/07/CompoundInterest05.gif)

This is just like the compound interest formula with A=1, r=1, and t=-1. A purist might quibble that compound interest for a negative amount of time makes no sense, but there is indeed an interpretation for this in a financial context. Even if there were no such interpretation, the mathematical relationship holds anyway.

The limit as n approaches infinity (which is equivalent to the limit as s approaches zero) is

![](http://www.pmean.com/new-images/07/CompoundInterest06.gif)

How good is this approximation? The constant e is 2.718 and the ratio 1/e is 0.3679. For s=0.1, you get

![](http://www.pmean.com/new-images/07/CompoundInterest07.gif)

For s=0.01, you get

![](http://www.pmean.com/new-images/07/CompoundInterest08.gif)

For s=0.001, you get

![](http://www.pmean.com/new-images/07/CompoundInterest09.gif)

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/CompoundInterest.html
[sim2]: http://www.pmean.com

[wik1]: http://en.wikipedia.org/wiki/Compound_interest
