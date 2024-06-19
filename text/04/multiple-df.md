---
title: Multiple degree of freedom tests
author: Steve Simon
date: 2004-09-22
categories:
- Blog post
tags:
- Analysis of variance
output: html_document
page_update: partial
---
Someone sent me an email describing a situation where an interaction
effect in SPSS had a large p-value, but one of the individual components
of that interaction had a small and statistically significant p-value.

This can occur in many statistical models where you are testing a factor
or interaction that involves multiple degrees of freedom. You might be
looking at a variable which indicates race/ethnicity. If there are five
possible values for this variable (e.g., White, Black, Hispanic, Asian,
and Other), then testing the effect of race in a statistical model
involves four degrees of freedom. The hypothesis that you are testing is
that the average outcome measure is the same for all five levels for
race.

SPSS and other statistical software will then often present individual
components of this hypothesis. They will select a reference category and
then compare each of the remaining categories to that reference. SPSS
choose the last or largest value of the category as the reference
category, which may not always be exactly what you want. In the
race/ethnicity example, that leads to four single degree of freedom
comparisons:

-   White versus Other;
-   Black versus Other,
-   Hispanic versus Other, and
-   Asian versus Other.

It doesn't happen too often but sometimes the single degree of freedom
comparisons are not consistent with the multiple degree of freedom test.
What should you do in this situation?

First, make sure that you are looking at a logical reference category.
The reference category might be a control group or it might be the
largest group in your sample, or the youngest group. A lot depends on
the context of the problem. One thing for sure is that the computer
understands nothing about the context of your problem, so it only
chooses a good reference category by dumb luck. In the example above,
using Other as your reference category is probably the worst possible
choice.

You should also apply a Bonferroni correction to the single degree of
freedom components. A p-value of 0.03 doesn't look quite as impressive
if it is just one of five degrees of freedom.\
\
If you still get significance after applying Bonferroni, then I think
you have to be honest and mention the fact that your analysis produced
ambiguous and conflicting results. Report the p-values both for the
multiple degrees of freedom test and for each of the individual degrees
of freedom test. Then let the reader decide.\
\
Of course, with an interaction, you should also draw a graph, because
certain types of interactions, especially ones where the lines cross,
are more interesting than others.\
\
The reverse can happen as well. Suppose the test with multiple degrees
of freedom has a statistically significant p-value, but the p-values for
all of the individual degree of freedom tests are large. Here, you might
want to do a bit of investigation. Maybe it is some oddball combination
(groups 1 and 4 combined versus groups 2, 3, and 5) that is showing a
large effect. This sort of thing might be missed by the particular
single degree of freedom tests that the software has chosen for you.

You can find an [earlier version](http://www.pmean.com/04/MultipleDF.html) of this page on my [original website](http://www.pmean.com/original_site.html).
