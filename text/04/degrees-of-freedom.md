---
title: Degrees of freedom, Part 2
author: Steve Simon
date: 2004-04-15
categories:
- Blog post
tags:
- Statistical theory
output: html_document
page_update: partial
---
I received an email inquiry about degrees of freedom. I [explain the
concept briefly](../ask/df.asp), but this person wanted a more detailed
answer to the question, why do we use n-1 in the calculation of the
standard deviation and not n?

You can argue that the standard deviation involves the projection onto a
subspace of dimension n-1, because the n deviations from the mean have a
single constraint\--they must sum to zero. That may not be a very
satisfying answer.

Another answer is that using n-1 provides a good statistical property,
unbiasedness, but that applies to the variance and not to the standard
deviation.

Some statisticians (not many) have argued that you should not use n-1,
but should use n instead. They make a persuasive argument, but since
almost everyone uses n-1, why swim against the tide? There are more
important battles to fight, such as the mindless acceptance of an alpha
level of .05 for every hypothesis test ever done.

Some web pages that talk about degrees of freedom are:

-   <http://www.animatedsoftware.com/statglos/sgdegree.htm>
-   <http://davidmlane.com/hyperstat/A42408.html>
-   <http://www.bized.ac.uk/timeweb/digging/dig_source_dof.htm>
-   <http://en.wikipedia.org/wiki/Degrees_of_freedom>
-   <http://mathworld.wolfram.com/DegreeofFreedom.html>
-   <http://seamonkey.ed.asu.edu/~alex/computer/sas/df.html>
-   <http://www.tufts.edu/~gdallal/dof.htm>

You can find an [earlier version](http://www.pmean.com/04/DegreesFreedom.html) of this page on my [original website](http://www.pmean.com/original_site.html).
