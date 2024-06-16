---
title: Splines
source: http://www.pmean.com/00/splines.html
author: Steve Simon
date: 2000-01-27
categories:
- Blog post
tags:
- Ask Professor Mean
- Unusual data
output: html_document
page_update: partial
---
*Dear Professor Mean, Can you send me a basic definition of splines?*

<!---More--->

Dear reader,

A spline is a wiggly curve that changes its wiggles as it moves along to try to touch each data point. It changes the wiggles in a graceful manner so that it gives the appearance of a single curve.

Statisticians also use smoothing splines which don't wiggle enough to go through every single data point, but which still try to get reasonably close to the data.

Have you ever seen the french curve that is used in drafting? It is a way to connect consecutive points in a way that looks smooth and natural. Splines work in a similar fashion.

I'm sure you were also interested in a technical definition. No? Well you're going to get one anyway. A spline is a series of cubic polynomials. Each cubic polynomial fits to a group of consecutive values. You also constrain those cubic polynomials to be continuous and smooth (smooth means it has a continuous first derivative). That's the mathematical definition.

An alternative to the spline is a locally weighted average. For this approach, at each data point, averaging or a simple regression model is fit to data with high weight given to values that are close on the x-axis and low weight given to values that are far away on the x-axis. When points are very far away on the x-axis, they are given zero weight.

Here's an example, looking at a lottery taken in the California recall election that randomly assigned each letter of the alphabet. Notice a slight tendency early in the process to select letters later in the alphabet. This is a small sample and both splines and locally weighted averages tend to have more uncertainty at the extremes, so it is possible that this is just an artefact.

![](http://www.pmean.com/images/00/splines1.gif){width="476" height="381"}

**Further reading**

+ Generalized Additive Models. Hastie TJ, Tibshirani R. London England: Chapman and Hall (1990). ISBN: 0-412-34390-8.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/splines.html
[sim2]: http://www.pmean.com/original_site.html
