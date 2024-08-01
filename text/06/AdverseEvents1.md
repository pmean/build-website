---
title: Seminar on control charts and adverse events
author: Steve Simon
source: http://www.pmean.com/06/AdverseEvents1.html
date: 2006-06-05
categories:
- Blog post
tags:
- Accrual problems
output: html_document
page_update: partial
---

I took some time to expand my [May 30, 2005 weblog entry on accrual
rates](AccrualProblems.html) and developed a seminar which I will
present to the Statistics journal club at KUMC today.The [handout for
this talk](../training/hand68.asp) combines that weblog entry with a
[brief tutorial on quality control](../model/quality.asp).

I received some valuable feedback. One comment was on the use of the log
transformation, and I might want to show this graph on a different
scale. Another comment was on the use of Bayesian statistics to model
accrual rates. As the data accumulates, you would get more information
about the estimated stopping date of the study or about the estimated
total sample size at the end of the study. It would be important to get
a good prior distribution or possibly both an optimistic and a
pessimistic prior. If even an optimistic prior is swamped by actual data
suggesting that accrual is slow enough that no realistic sample size
would emerge at the of the study, then that might be the point at which
you decide to cut your losses.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/AdverseEvents1.html
[sim2]: http://www.pmean.com
