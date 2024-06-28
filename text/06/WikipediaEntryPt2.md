---
title: Wikipedia entry on Binomial Confidence Interval, Part 2
author: Steve Simon
source: http://www.pmean.com/06/WikipediaEntryPt2.html
date: 2006-08-22
categories:
- Blog post
tags:
- Wiki pages
output: html_document
page_update: partial
---

Here's my first attempt to improve the Wikipedia entry on the
binomial confidence interval. I start by simplifying and improving the
introduction

A '''Binomial Confidence Interval''' is a [confidence
interval] for a proportion in a [statistical population].
It uses the proportion estimated in a [statistical sample] and
allows for [sampling error]. There are several formulas for a
binomial confidence interval, but all of them rely on the assumption
of a [binomial distribution]. A simple example of a
[binomial distribution] is the number of heads that you
observe when you flip a coin in the ten times. In general, a
[binomial distribution] applies when you repeat an experiment
a fixed number of times, each trial of the experiment has two
possible outcomes (labeled arbitrarily success and failure), the
probability of success is the same for each trial, and the trials
are [statistically independent].

and including the classical formula that relies on a normal
approximation.

The simplest and most commonly used formula for a binomial
confidence interval relies on approximating the [binomial
distribution] with a [normal distribution]. This
approximation is justified by the [central limit theorem]. The
formula is

<math>\\hat p \\pm z_{\\alpha /2}</math>
<math> \\sqrt{ \\frac{\\hat p \\left ( 1- \\hat p \\right
)}{n}}</math>

where <math>\\hat p</math> is the proportion estimated from the
statistical sample, <math>z_{\\alpha /2}</math> is the
<math>\\alpha /2</math> upper percentile of a [standard
normal distribution], and n is the sample size.

The [central limit theorem] applies well to a [binomial
distribution], even with a sample size less than 30, as long as
the proportion is not too close to 0 or 1. For very extreme
probabilities, though, a sample size of 30 or more may still be
inadequate. The normal approximation fails totally when the sample
proportion is exactly zero or exactly one. A frequently cited rule
of thumb is that the normal approximation works well as long as
np>5 and n(1-p)>5.

Here's a screen shot of my changes

![](http://www.pmean.com/new-images/06/WikipediaEntryPt201.gif)

and

![](http://www.pmean.com/new-images/06/WikipediaEntryPt202.gif)

I also experimented with some messier formulas. Here is the TeX code

<math>\\sum_{k=x}^n {{n \\choose k}p_0^k \\left ( 1-p_0
\\right ) ^ {n-k} }=\\alpha /2</math>
>
<math>\\sum_{k=0}^x {{n \\choose k}p_0^k \\left ( 1-p_0
\\right ) ^ {n-k} }=\\alpha /2</math>

and here is what the equations look like

![](http://www.pmean.com/new-images/06/WikipediaEntryPt203.gif)
>
![](http://www.pmean.com/new-images/06/WikipediaEntryPt204.gif)

There is no entry for standard normal distribution, and the entry on
statistical sample

-   [en.wikipedia.org/wiki/Statistical_sample](http://en.wikipedia.org/wiki/Statistical_sample)

is flagged by Wikpedia as a stub (an entry that is short and provides
insufficient information). So it looks like there would be plenty of
work for me if I wanted to do more with Wikipedia.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/WikipediaEntryPt2.html
[sim2]: http://www.pmean.com
