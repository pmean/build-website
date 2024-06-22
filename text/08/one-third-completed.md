---
title: What does one-third of the way through a study mean?
author: Steve Simon
date: 2008-04-06
categories:
- Blog post
tags:
- Being updated
- Early stopping
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

Someone asked me a very good question regarding interim analysis. If the
call for an interim analysis is specified as occurring one-third (and
two-third) of the way through a study, what does that mean. In a study
with 60 patients lasting a full year, does that mean until 20 (40)
patients have arrived, or does it mean until 4 (8) months? Also, if you
are counting discrete events, such as adverse events, does it mean
one-third of the expected number of adverse events?

One-third does indeed mean one-third of the patients rather than
one-third of the time. This can lead to some complexity when accrual is
a lot faster or a lot slower than originally planned, and simple rules
such as Pocock and O'Brien-Fleming may need to be adapted if the
interim analysis is consistent with a time interval, but seriously
inconsistent with the sample size. If you are chained to a calendar, you
might consider using a more complex approach such as an alpha-spending
function.

When counting number of adverse events, it is the number of patients,
not the number of patients experiencing an adverse events that defines
the stopping rule. This is more by tradition than for any technical
reason. The one exception to this rule is the use of survival curves.
Sometimes interim analyses for survival curves are defined using number
of patients (or better still) the number of patients hours. Sometimes it
can use the number of events, instead.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/OneThird.html
[sim2]: http://www.pmean.com/original_site.html
