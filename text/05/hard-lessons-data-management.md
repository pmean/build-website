---
title: Hard learned lessons
author: Steve Simon
date: 2005-11-25
categories:
- Blog post
tags:
- Being updated
- Data management
output: html_document
page_update: partial
---
It's been a busy month, as noted below, and in a rush to complete all
my projects, I ended up doing some things that may have caused a few
problems (nothing permanent, of course, but they did up delaying further
some projects that were already behind schedule). I alluded to a bit of
this in my weblog entry

- Non-destructive data editing (November 2, 2005)

but I have a few more lessons worth mentioning.

1.  It is very difficult to perform a good data analysis by email and
telephone. A good data analysis requires a lot of dialog that can
only be done in a face-to-face setting. Often I will produce a graph
or table and have to ask a simple question like "Is this what you
expected?" to make sure that I am on the right track. Sometimes I
will need more information about a variable but will only realize
this halfway through the analysis. I hate to ask busy people to sit
with me as I work through a data analysis, but I am starting to
realize that without this interaction, I cannot produce results
quickly and accurately.
2.  Excel is a very fragile medium for the storage of data. On one
project, I had to sort the data in order to identify dates of events
that were within 30 days of other events in the data set. In Excel,
it is easy to end up sorting just some of the columns or just some
of the rows, leading to the production of a data set that has
grossly incorrect results.
3.  You can't just jump in and run the final statistical model for a
project without first laying a firm foundation of preliminary
charts, tables, and graphs. This is a lesson I harp on in many of my
classes, but one that I have ignored myself at my own peril. In
particular, I had a data analysis that involved survival times with
time varying covariates and with multiple events per patient. It's
not that difficult an analysis to run, but it does require some
care. But instead of starting with some simple analysis (estimating
survival probabilities before incorporating time varying covariates,
or estimating the time to the first event), I ended up jumping right
straight in to the final statistical model. In the process, I ended
up making some serious errors. These errors were fixable, but the
time I spent fixing them was far more than the time I would have
spent laying the proper foundation.

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/HardLessons.html
[sim2]: http://www.pmean.com/original_site.html
