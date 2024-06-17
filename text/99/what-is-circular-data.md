---
title: Circular data models
source: http://www.pmean.com/99/circular.html
author: Steve Simon
date: 1999-12-15
categories:
- Blog post
tags:
- Being updated
- Circular data
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

When your data has a cyclic or circular component, then the use of basic trigonometry can provide a statistical model that allows for cyclic effect. Examples of cyclic components are time of the day and wind direction.

<!---More--->

The unique feature is that data at opposite ends of the interval are
actually close to one another. For example
- wind direction could be
recorded as a number between 0 and 360
- with 0 representing north
- 90
representing east
- 180 representing south
- and 270 representing west.
Notice that with this variable
- winds at 10 and 350 are very close.
Time of the day could be represented by values 00:00 for midnight,
12:00 for noon and 23:59 for one minute before midnight.

An average for cyclic data is pretty much useless whenever you have
data at the extremes. For example
- suppose you have a teenage child
who is supposed to be home before 10pm (2200). The first two evenings,
he returns at 11pm (2300) and at 1am (0100). Although both times are
beyond the curfew
- the average return time
- 1200
- is at noon!

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/circular.html
[sim2]: http://www.pmean.com/original_site.html
