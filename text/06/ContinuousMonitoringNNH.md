---
title: Continuous monitoring of the number needed to harm
author: Steve Simon
source: http://www.pmean.com/06/ContinuousMonitoringNNH.html
date: 2006-09-02
categories:
- Blog post
tags:
- Adverse events
output: html_document
page_update: partial
---

The continuing review of clinical trials has to address "good news"
issues. Does one arm of the study show substantially better efficacy?
Does one arm of the study have a significantly better safety profile?
There are rigorous and well accepted approaches for determining
partway through a clinical trial whether one arm has a greater
proportion of cured patients or a smaller proportion of harmed
patients.

Continuing review also has to address "bad news" issues. Is the
study falling behind schedule on its planned enrollment rates? Are
patients dropping out of the study at an alarming rate? Are certain
adverse drug reactions occurring at an unexpected rate?

The analysis of   "bad news" issues is more poorly developed. Often
decisions about these issues are based on subjective opinions and ad
hoc rules. Statistical process control charts and Bayesian statistical
methods offer an approach to treat on-going review of rates not tied
directly to an efficacy or safety comparison.

Consider a hypothetical research study that started in January 1997
with the intention to recruit 12 patients per year (one per month)
over a ten year period, for a total sample size of 120 patients. By
the end of June 2004, (roughly 7 1/2 years), the study has enrolled 42
patients (Table 1).

`  02/26/1997 04/04/1997 07/06/1997           07/25/1997 02/05/1998 02/15/1998           03/06/1998 07/03/1998 08/03/1998           02/08/1999 03/19/1999 04/20/1999           05/29/1999 06/21/1999 07/27/1999           09/06/1999 01/10/2000 01/11/2000           02/28/2000 03/03/2000 04/13/2000           05/30/2000 11/21/2000 12/18/2000           02/06/2001 04/30/2001 08/03/2001           01/20/2001 12/03/2001 12/06/2001           09/27/2002 10/01/2002 02/02/2003           03/03/2003 10/31/2003 11/04/2003           11/11/2003 01/05/2004 02/02/2004           04/15/2004 05/23/2004 06/02/2004          `Table
1. List of accrual dates.

Clearly this clinical trial has problems. The actual accrual rate is a
meager 5.6 patients per year, and now it is probably too late to fix
things. In order to finish on time, the researchers would have to
recruit at a rate more than 30 patients per year over the remainder of
the study. This is more than 5 times faster than the current accrual
rate and 2.5 times faster than the original planned accrual rate.

Wouldn't it be nicer if the researcher had noticed the problem two
years into the study rather than 7 1/2 years out? The researcher would
still have to hustle, but 14 patients per year would allow the study
to still finish on time and it represents only a modest increase over
the planned rate.

The traditional approach to examining rates is to set a time interval
(weeks, months, or years, for example) and count the number of events
per that time interval. For example, you could compute the monthly
rates

`Jan97 0        Feb97 1        Mar97 0        Apr97 1        May97 0        Jun97 0        Jul97 2        etc.`

Or the yearly rates

`1997 4        1998 5        1999 7        2000 8        etc.`

or something in between like the quarterly rates

`97Q1 1        97Q2 1        97Q3 2        97Q4 0        98Q1 3        etc.`

A narrow time interval allows you to respond very rapidly, but the
individual values (mostly zeros and ones) are so limited that the
information value of this approach may be limited. The yearly approach
has more information for any single time interval, but if you have to
wait a full year or more to spot any important changes. A quarterly
interval offers the best (worst?) of both worlds.

I am proposing a different approach that looks not at the events per
time interval but rather the time interval per event. Start by
calculating the date gap: the amount of time between successive
events. The trial started on on January 1 and recruited the first two
patients on February 26 and April 4. The gap between the start of the
study and the first patient is 46 days and the gap between the first
and second patients is 37 days. A plot of the date gaps for the entire
study appears below:

![](http://www.pmean.com/new-images/06/ContinuousMonitoringNNH01.gif)

Note that the vertical axis shows a mixture of time units. This was
done intentionally to emphasize one of the biggest advantages of the
date gap approach. Date gaps are self scaling and automatically
configure themselves appropriately. If events occur frequently, the
data will fit in the portion of the vertical axis where units are
measured in days or weeks. If the events occur rarely, the data will
fit in the portion of the graph where units are measured in months,
quarters, or even years.

The date gap has a second important advantage. Each time a patient is
recruited into the trial, another point appears on the chart. When you
count the number of events per time interval, you have to wait until
the end of that time interval before you can plot an additional data
point. By recasting accrual rates in terms of the number of days
between successive patients, we have liberated this problem from
arbitrary calendar boundaries.

An important unsolved question is how to set control limits properly
for a chart with highly skewed data. The control limits is
traditionally divided into zones, but for this data set, some of the
zones are in the negative territory. This suggests that perhaps the
control limits should be set using an asymmetric rule, that the
traditional use of zones in a control chart should be modified for
skewed data, or possibly both. Another intriguing possibility is to
transform the data prior to computing control limits.

Another intriguing prospect is to apply a CUSUM chart to this
technique. An accrual rate of one per month implies an average date
gap of 30 days. If you plot the cumulative sum of the deviations of
each individual date gap from the target of 30 days you get the
following chart.

![](http://www.pmean.com/new-images/06/ContinuousMonitoringNNH02.jpg)

The data has shown a clear and consistent problem from the very first
date gap. After 10 patients, the study is more than a year behind
schedule. While there are a few places where the accrual seems to be
making up for lost time, more often than not, the study is falling
further and further behind. The decision rules for CUSUM charts are
not very well defined and we are investigating a Bayesian approach.

`  02/26/1997   04/04/1997   07/06/1997           07/25/1997D 02/05/1998   02/15/1998           03/06/1998   07/03/1998   08/03/1998           02/08/1999   03/19/1999   04/20/1999D           05/29/1999   06/21/1999   07/27/1999           09/06/1999   01/10/2000   01/11/2000           02/28/2000D 03/03/2000D 04/13/2000           05/30/2000   11/21/2000   12/18/2000           02/06/2001D 04/30/2001   08/03/2001D           01/20/2001   12/03/2001   12/06/2001           09/27/2002   10/01/2002D 02/02/2003           03/03/2003   10/31/2003   11/04/2003           11/11/2003   01/05/2004   02/02/2004D           04/15/2004   05/23/2004D 06/02/2004          `Table
2. List of accrual dates with dropouts designated by D.

For this problem, note that you had to recruit 4 patients before one
dropped out, another 8 patients before the second dropped out, another
6 patients before the next one dropped out, and so forth.

The gaps 4, 8, 7, 1, 5, 2, 5, 7, 2 can be plotted in sequence to look
for trends. If the drop out rate is accelerating, then the number of
patients seen between each dropout is going to be smaller.

![](http://www.pmean.com/new-images/06/ContinuousMonitoringNNH03.gif)

The gray line in this graph is drawn at the mean. The mean of the gaps
can be shown to be equivalent to the number needed to harm (under the
presumption, of course, that a drop-out represents a harmful event).
