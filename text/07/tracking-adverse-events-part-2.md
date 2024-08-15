---
title: Tracking adverse events during kidney biopsy, Part 2
author: Steve Simon
source: http://www.pmean.com/07/TrackingAdverseEventsPart2.html
date: 2007-04-05
categories:
- Blog post
tags:
- Adverse events
output: html_document
page_update: partial
---
This is a major revision of a [March 14, 2007 weblog entry](TrackingAdverseEvents.html).

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

The dates represent dates of the kidney biopsies for 239 consecutive
biopsies. I have shifted these dates by an arbitrary constant to protect
confidentiality. Those dates with an H represent biopsies where gross
hematuria was noted (n=21). An I represents a biopsy where an inadequate
amount of tissue was obtained (n=17). An N represents a biopsy where
narcotics were required to control the pain (n=22). An O represents any
other adverse event (perforation, hematoma, fistula, transfusion needed,
prolonged hospitalization, re-admission, or graft loss, n=11). Some of
these events (perforation, graft loss) never occurred in this particular
data set.

The first 170 biopsies occurred prior to a major change in procedure,
the use of real time ultra sound to help with needle positioning. The
three month period from July through September was considered a
transition period. There were 20 biopsies performed during this
transition. The biopsies from October 2005 onward were considered to be
part of the post implementation phase.

The plot below shows the time when certain biopsy events occurred.

![](http://www.pmean.com/new-images/07/TrackingAdverseEventsPart201.gif)

Hematuria is one of the most common adverse events, occurring about 9%
of the time or roughly one in every 11 patients. There are no trends or
patterns over time.

![](http://www.pmean.com/new-images/07/TrackingAdverseEventsPart202.gif)

Inadequate tissue is another serious concern. This occurs about 7.5% of
the time or roughly once in every 13 patients. Notice that no instances
of inadequate tissue occurred after the changes were made. We can't
really estimate the rate very well with this data, but we suspect that
it is small (less than 2%) and it represents a sudden drop in the rate
from what we observed prior to the intervention.

![](http://www.pmean.com/new-images/07/TrackingAdverseEventsPart203.gif)

Another concern is a biopsy with pain sufficient to require the use of
narcotics. This occurs roughly once in every ten patients and shows no
trends or patterns over time.

![](http://www.pmean.com/new-images/07/TrackingAdverseEventsPart204.gif)

All other adverse events represents a smaller piece of the puzzle, with
an average of one other adverse event for every twenty patients.
Although three events did occur after the intervention, the most recent
data suggests the possibility of an improvement as the last 40 or so
patients have avoided any of these other adverse events. This drop in
the adverse event rate is not large enough to allow us to claim an
improvement in the process of biopsies, but as additional data
accumulates, we may be able to draw a stronger conclusion.

![](http://www.pmean.com/new-images/07/TrackingAdverseEventsPart205.gif)

**How can you construct these graphs?**

Here are the details on how to construct the control chart for
hematuria. The table below shows each individual biopsy with an H if the
biopsy resulted in hematurian and a dash (-) if the biopsy did not.

```
      1 2 3 4 5 6 7 8 9 0
  [ ] - - - - - H - - - -
 [10] H - - - - H - - - -
 [20] - - - - - - - - - -
 [30] - - - - - - - - - -
 [40] - - - H - - - - - -
 [50] - - H - - - - - - -
 [60] - - - - - - - - - -
 [70] - - - - - - - - - H
 [80] - - - - - - - - - -
 [90] - - - - - - - - - -
[100] - - - H - - - - - -
[110] - - - - - H - - - -
[120] - - - - - - - - H -
[130] - H - H - - - - - -
[140] - - - - - - H - - -
[150] - - - - H - - - - -
[160] - - - - - - - - - -
[170] - - - H - - H - - -
[180] - - - - H H H - - -
[190] - - H H - - - - - -
[200] - - - - - - - - - -
[210] - - - H - - - - - -
[220] - - - - - - - - - -
[230] - - - - - - - - -`
```
Note that hematuria occurred with the 6th, 11th, 16th, and 44th biopsy.
That means we had to wait 6, 5, 5, and 28 patients between each event.
The full list of waiting times are

```
 6  5  5 28  9 27 24 12 13
 3  2 13  8 19  3  8  1  1
 6  1 20
 ```

The last hematuria event occurs with the 214th patient. What do we do
with these final biopsies. It seems a shame to ignore them, because the
long stretch without hematuria does provide information. You know that
the next hematuria event could only occur with the 240th or later
patient. So the date gap is at least 26 patients, maybe more.

You can plot these date gaps, including the 26, in sequence and draw a
line connecting the consecutive data points. Use a special symbol (X)
and a dotted line for the last data value (26) because we don't know
exactly what this value is.

Plotting the waiting times on a log scale is useful because waiting
times are often skewed. The plots shown above also reverse the scaling
so that long waiting times are shown at the bottom of the graph and
short waiting times are at the top. With this reverse scaling, a sudden
surge in bad events (represented by a series of short waiting times) is
displayed at the top of the graph and a sudden decline (represented by a
series of long waiting times) is displayed at the bottom.

The average waiting time has a special interpretation. The waiting times
form a telescoping sum, and the sum is equal to 240, one more than the
total number of biopsies. The average simply divides this sum by the
number of biopsies with hematuria (22). If you swapped the numerator and
the denominator, you would get 22/240 which is an estimate of the
probability of observing hematuria in a randomly selected biopsy
(actually the estimated probability is 22/239, but that is not worth
quibbling about).

The inverse of a probability of a harmful event is known as the number
needed to harm. In this example, NNH = 10.9. This tells you that you
have to perform 11 biopsies on average in order to experience one event
of hematuria.

There are several ways to compute control limits. The approach I used
for this data set was to treat the waiting times as individual values in
an XmR chart. This chart requires you to compute a moving range, a range
for each successive pairs of waiting times. The first three moving
ranges are

```
|6- 5|= 1
|5- 5|= 0
|5-28|=23
```

and the entire list of moving ranges is shown below.

```
 1  0 23 19 18 3 12  1 10
 1 11  5 11 16 5  7  0  5
 5 19  6
```

The average moving range is 8.48. The formula for the control limits is

```
10.9 +/- 2.66*8.48
```

The upper control limit is 33.5. The lower control limit is negative, an
impossible value to achieve, and is not plotted on the graph. The
warning limit (or the two sigma limit) is computed as

```
10.9 +/- (2/3)*2.66*8.48
```

The upper warning limit is 25.9 and the lower warning limit is negative.
