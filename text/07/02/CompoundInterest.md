---
title: Compound interest and powers
author: Steve Simon
source: http://www.pmean.com/07/CompoundInterest.html
date: 2007-02-11
category: Blog post
tags: Statistical theory
output: html_document
---
**[StATS]:** **Compound interest and powers
(February 11, 2007)**

In some of my mathematical calculations, I end up computing an
expression that involves a number very close to one raised to a very
large power. This term can often be approximated by an exponential
function, but I can never quite remember the relationship. An example
involving compound interest may help me remember better in the future.

If you invest an amount of money A for t years at a simple interest
rate, i, the amount of money that you earn is

 ![](images/CompoundInterest01.gif){width="75" height="36"}

and if you compound the interest n times per year, the amount you earn
is

![](images/CompoundInterest02.gif){width="90" height="61"}.

If you let n go to infinity, this term converges to

![](images/CompoundInterest03.gif){width="25" height="26"}.

This formula is well known to people in finance and in mathematics. A
nice explanation can be found in the [Wikipedia article on compound
interest](http://en.wikipedia.org/wiki/Compound_interest).

As an example of how I would use this, I had an expression of the form

![](images/CompoundInterest04.gif){width="75" height="36"}

What would this equal for values of s close to zero? Replace s with 1/n
to get

![](images/CompoundInterest05.gif){width="76" height="61"}

This is just like the compound interest formula with A=1, r=1, and t=-1.
A purist might quibble that compound interest for a negative amount of
time makes no sense, but there is indeed an interpretation for this in a
financial context. Even if there were no such interpretation, the
mathematical relationship holds anyway.

The limit as n approaches infinity (which is equivalent to the limit as
s approaches zero) is

![](images/CompoundInterest06.gif){width="26" height="26"}.

How good is this approximation? The constant e is 2.718 and the ratio
1/e is 0.3679. For s=0.1, you get

![](images/CompoundInterest07.gif){width="123" height="26"}.

 For s=0.01, you get

![](images/CompoundInterest08.gif){width="138" height="26"}.

For s=0.001, you get

![](images/CompoundInterest09.gif){width="153" height="26"}.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Statistical
theory](../category/StatisticalTheory.html).
<!---More--->
theory](../category/StatisticalTheory.html).
for pages similar to this one at [Category: Statistical
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Compound interest and powers
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Statistical
theory](../category/StatisticalTheory.html).
--->

