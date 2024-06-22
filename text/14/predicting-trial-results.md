---
title: "Predicting clinical trial results based on announcements of interim analyses"
author: "Steve Simon"
source: "http://blog.pmean.com/predicting-trial-results/"
date: "2014-04-06"
categories:
- Blog post
tags:
- Early stopping
output: html_document
page_update: partial
---

If you've ever been involved with interim reviews of clinical trials on
a DSMB (Data Safety and Monitoring Board), you will be warned about the
importance of confidentiality. There are two big reasons for this.
First, leaking of interim trial results could lead to insider trading.
News that the trial is going well would lead to a jump in stock prices
and news that the trial is going poorly would lead to a dip in stock
prices. If someone gets early news from the DSMB, they could profit from
that inside information.

<!---More--->

The second reason that you need confidentiality is that the company
conducting the trial might make changes to the trial based on
information at the interim review. This might involve speeding up
recruiting, changing the entry criteria, or other mid-stream protocol
changes. These changes, if based on interim data results, could affect
the operating characteristics of the study. One possibility might be an
inflation of the Type I error rate.

It turns out that a DSMB does not need to release ANY information and
still provide partial information about the probability of success of
the clinical trial. If the DSMB recommends that a trial continue at one
of its meeting, you have a bit of information, because the criteria for
early stopping for futility, for example, was not met. This article
talks about this and offers a real world example.

Broglio KR, Stivers DN, Berry DA. Predicting clinical trial results
based on announcements of interim analyses. Trials. 2014;15(1):73.
doi:10.1186/1745-6215-15-73. Available at:
<http://www.trialsjournal.com/content/15/1/73>

![](http://www.pmean.com/new-images/14/predicting-trial-results01.png)

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/predicting-trial-results/
[sim2]: http://blog.pmean.com