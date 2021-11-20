---
title: Calculating rates
author: Steve Simon
source: http://www.pmean.com/07/CalculatingRates.html
date: 2007-04-06
categories:
- Blog post
tags:
- Poisson regression
output: html_document
---
Someone on the [MedStats](../category/InterestingWebsites.html#MeStXx)
discussion group asked how to calculate a rate of needlestick incidents.
The answer is quite simple, but there are a variety of possible
responses.

The formula for a rate is x/y, or simple division. The Wikipedia
definition of a rate is helpful.

> *A rate is a special kind of ratio, indicating a relationship between
> two measurements with different units, such as miles to gallons or
> cents to pounds. For example, suppose one spends 9 dollars on 2 pounds
> of candy. The rate \$9 / 2 pounds compares the money spent to the
> number of pounds of candy.*
> [en.wikipedia.org/wiki/Rate](http://en.wikipedia.org/wiki/Rate)

In this particular case, the numerator is the number of needlestick
incidents and the denominator is some other type of measurement.
Typically the denominator is a measure of workload, area, volume or
time. So one possible denominator is simply time itself. Divide the 6
needlesticks by the 30 days in a month to produce a rate of 0.2
needlesticks per day.

I'm also starting to pull together some of the formulas needed for
confidence intervals for count data.

-   [Stats: Confidence intervals for count data (March
    22, 2007)](CountData.html)
