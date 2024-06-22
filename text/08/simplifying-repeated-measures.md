---
title: Simplifying repeated measurements
author: Steve Simon
date: 2008-03-12
categories:
- Blog post
tags:
- Being updated
- Multilevel models
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

I received an email inquiry about a project that involved four repeat
assessments on 10 different subjects. The question started out as, is
my sample size 10 or is it 40?

My immediate response was to ask for more details, but to also point
out that 4 repeated measurements on 10 subjects is not the same as 40
independent observations. There is almost always a positive
correlation among these measurements and that implies a level of
redundancy. You don't get as much information as you would with 40
independent observations.

But it is not the same as a sample size of 10 either. The repeated
measurements do add a level of precision, so you have more information
than if you collected a single measurement on 10 subjects.

I then suggested that sometimes a design like this could be greatly
simplified if you calculated a single summary statistic across the
four measurements. For example, an average of the four measurements, a
maximum value, or a difference between the first and last measurements
might all be useful. At other times, however, such a summary would be
overly simplistic and should be avoided.

It turns out that the data was categorical, so a change score or mean
would be inappropriate. But the categories did have a natural ordering
and selecting the maximum value was a good solution.

Repeated measurements lead to some of the most difficult problems with
data management and with data analysis and the solutions are often
very dependent on the context in which the repeated measurements were
done.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/RepeatedMeasurements.html
[sim2]: http://www.pmean.com/original_site.html
