---
title: Tracking adverse events during kidney biopsy
author: Steve Simon
source: http://www.pmean.com/07/TrackingAdverseEvents.html
date: 2007-03-14
categories:
- Blog post
tags:
- Adverse events
output: html_document
page_update: complete
---

I have been helping a colleague who is interested in monitoring the safety of kidney biopsy events. He was kind enough to let me use his data set on my web pages in order to illustrate some new methods for monitoring adverse events. This data set allows you to see some examples of the use of control charts to track adverse events. Here is the raw data.

```
2003-01-12 ---- 2003-01-28 ---- 2003-02-01 ---- 2003-02-14 ----
2003-02-14 ---- 2003-02-15 H-NO 2003-03-09 ---- 2003-03-17 ----
2003-03-22 ---O 2003-03-25 ---- 2003-03-30 H--- 2003-03-31 ----  
2003-04-05 ---- 2003-04-13 ---- 2003-04-15 --N- 2003-04-19 H-NO
2003-04-22 ---- 2003-04-27 ---- 2003-05-11 ---- 2003-05-12 ----
2003-05-13 ---- 2003-05-20 ---- 2003-05-24 ---- 2003-06-02 ----
2003-06-08 ---- 2003-06-10 ---- 2003-06-22 -I-- 2003-06-23 ----
2003-06-24 ---- 2003-07-04 ---- 2003-07-06 ---- 2003-07-15 ----
2003-07-22 ---- 2003-07-25 ---- 2003-07-26 ---- 2003-07-26 ----
2003-08-01 ---O 2003-08-24 ---- 2003-08-26 ---- 2003-08-30 ----
2003-09-26 ---O 2003-09-26 ---- 2003-09-27 ---- 2003-09-27 H-N-
2003-09-28 ---- 2003-10-10 -I-- 2003-10-10 ---- 2003-10-12 --N-
2003-10-19 -I-- 2003-10-24 ---- 2003-10-24 -I-- 2003-10-26 ----
2003-10-31 H--- 2003-11-02 ---- 2003-11-07 -I-- 2003-11-07 ----
2003-11-09 ---- 2003-11-09 ---- 2003-11-15 ---- 2003-11-17 --N-
2003-11-29 -I-- 2003-12-12 ---- 2003-12-20 ---- 2004-01-03 ----
2004-01-04 ---- 2004-01-23 ---- 2004-01-25 --N- 2004-02-08 ----
2004-02-10 ---- 2004-02-14 ---- 2004-02-15 ---- 2004-02-15 ----
2004-02-17 ---- 2004-02-20 ---- 2004-02-22 ---- 2004-03-02 ----
2004-03-19 -I-- 2004-03-22 ---- 2004-03-26 ---- 2004-03-27 H-NO
2004-03-28 ---- 2004-04-10 ---- 2004-04-18 -I-- 2004-04-25 ----
2004-04-30 ---- 2004-05-02 ---- 2004-05-11 -I-- 2004-05-22 ----
2004-05-23 ---- 2004-05-28 ---- 2004-06-08 ---- 2004-06-15 ----
2004-06-20 -I-- 2004-06-26 ---- 2004-07-05 ---- 2004-07-09 ----
2004-07-09 ---- 2004-07-11 -I-- 2004-07-13 ---- 2004-07-24 ----
2004-07-30 ---- 2004-08-01 ---- 2004-08-01 -I-- 2004-08-06 H---
2004-08-07 --N- 2004-08-10 ---- 2004-08-13 ---- 2004-09-05 ----
2004-09-12 ---- 2004-09-21 ---- 2004-10-08 ---- 2004-10-12 ----
2004-10-13 ---- 2004-10-22 ---- 2004-11-02 ---- 2004-11-07 H-NO
2004-11-14 ---- 2004-11-28 -I-- 2004-11-29 ---- 2004-12-07 ----
2004-12-10 -I-- 2004-12-12 ---- 2004-12-13 ---- 2004-12-26 ----
2004-12-26 ---- 2005-01-03 ---- 2005-01-03 ---- 2005-01-09 -I--
2005-01-13 H--- 2005-01-15 ---- 2005-01-17 ---- 2005-01-17 H---
2005-01-20 ---- 2005-01-25 H--- 2005-01-28 ---- 2005-02-08 ----
2005-02-11 --N- 2005-02-11 ---- 2005-02-14 ---- 2005-02-18 ----
2005-02-21 ---- 2005-03-01 ---- 2005-03-07 ---- 2005-03-07 ----
2005-03-18 ---- 2005-03-18 --N- 2005-03-19 H-NO 2005-03-21 ----
2005-03-25 ---- 2005-04-10 ---- 2005-04-11 ---- 2005-04-11 ----
2005-04-15 -I-- 2005-04-23 ---- 2005-04-25 HI-- 2005-04-26 ----
2005-04-26 ---- 2005-04-29 ---- 2005-05-07 ---- 2005-05-09 ----
2005-05-13 ---- 2005-05-23 ---- 2005-06-06 ---- 2005-06-06 --N-
2005-06-10 ---- 2005-06-13 ---- 2005-06-19 ---- 2005-06-20 ----
2005-06-26 ---- 2005-06-30 ---- 2005-07-08 ---- 2005-07-18 ----
2005-07-22 ---- 2005-07-31 H-NO 2005-08-15 ---- 2005-08-19 ----
2005-08-21 H-N- 2005-08-22 ---- 2005-08-28 ---- 2005-08-29 ----
2005-08-29 ---- 2005-09-12 ---- 2005-09-12 ---- 2005-09-16 ----
2005-09-19 H--O 2005-09-23 H--- 2005-09-24 H--- 2005-09-25 ----
2005-09-26 ---- 2005-09-30 ---- 2005-10-09 ---- 2005-10-16 ----
2005-10-21 H--O 2005-11-04 H--- 2005-11-07 ---- 2005-11-14 --N-
2005-11-15 ---- 2005-11-15 ---- 2005-11-26 ---- 2005-11-28 ----
2005-12-02 ---- 2005-12-12 ---- 2005-12-16 ---- 2005-12-18 ----
2006-01-01 ---- 2006-01-02 ---- 2006-01-06 --N- 2006-01-16 ----
2006-01-16 ---- 2006-01-17 ---- 2006-01-20 ---- 2006-01-22 ----
2006-02-05 ---- 2006-02-06 H--- 2006-02-13 --N- 2006-02-24 ----
2006-02-26 ---- 2006-03-12 ---- 2006-03-19 ---- 2006-03-20 ----
2006-03-22 ---- 2006-03-27 --N- 2006-04-03 ---- 2006-04-03 ----
2006-04-14 ---- 2006-04-17 ---- 2006-04-30 ---- 2006-05-01 ----
2006-05-07 ---- 2006-05-09 ---- 2006-05-12 ---- 2006-05-12 ----
2006-05-13 ---- 2006-05-14 ---- 2006-05-19 ---- 2006-05-21 --N-
2006-05-22 --N- 2006-05-26 ---- 2006-05-29 ----
```

The dates represent dates of the kidney biopsies for 239 consecutive biopsies. I have shifted these dates by an arbitrary constant to protect confidentiality. Those dates with an H represent biopsies where gross hematuria was noted (n=21). An I represents a biopsy where an inadequate amount of tissue was obtained (n=17). An N represents a biopsy where narcotics were required to control the pain (n=22). An O represents any other adverse event (perforation, hematoma, fistula, transfusion needed, prolonged hospitalization, re-admission, or graft loss, n=11). Some of these events (perforation, graft loss) never occurred in this particular data set.

The first 170 biopsies occurred prior to a major change in procedure, the use of real time ultra sound to help with needle positioning. The three month period from July through September was considered a transition period. There were 20 biopsies performed during this transition. The biopsies from October 2005 onward were considered to be part of the post implementation phase.

The plot below shows the time when certain biopsy events occurred.

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents01.gif)

The plots shown below represent the cumulative increase in biopsies over time, with adverse events noted by the + symbol.

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents02.gif)

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents03.gif)

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents04.gif)

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents05.gif)

Here are some control charts monitoring the frequency of events.

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents06.gif)

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents07.gif)

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents08.gif)

![](http://www.pmean.com/new-images/07/TrackingAdverseEvents09.gif)

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/TrackingAdverseEvents.html
[sim2]: http://www.pmean.com
