---
title: XBAR-S control chart, answers to on your own exercise
author: Steve Simon
source: http://www.pmean.com/07/XbarSControlChartAnswers.html
date: 2007-03-02
categories:
- Blog post
tags:
- Control charts
output: html_document
---
**[StATS]:** **XBAR-S control chart, answers to *on
your own* exercise (March 2, 2007)**.

On the web page

-   [Stats: Calculating an XBAR-S control chart (March
    2, 2007)](XbarSControlChart.html)

you were asked to calculate an XBAR-S control chart. Here is the data
for that problem.

`Week01 1.097 1.204    Week03 1.030 1.362    Week05 0.682 0.978    Week07 0.820 1.080    Week09 1.042 0.858    Week11 1.398 1.146    Week13 1.301 1.204`

Here are the summary statistics.

`             Mean   Stdev    Week01 1.151 0.076    Week03 1.196 0.235    Week05 0.830 0.209    Week07 0.950 0.184    Week09 0.950 0.130    Week11 1.272 0.178    Week13 1.252 0.069`

The mean of the seven means is 1.09 and the mean of the seven standard
deviations is 0.15. For subgroups of size 2, the constants are

`A3=2.659,    B3=0,    B4=3.267.`

The upper and lower control limits for the XBAR chart are

`1.09+2.659*0.15=1.49 and    1.09-2.659*0.15=0.69.`

The warning limits are

`1.09+2.659*0.15*2/3=1.36 and    1.09-2.659*0.15*2/3=0.82.`

Here is the control chart for the means (note that the numbers are
slightly different because of rounding).

![](http://www.pmean.com/images/images/07/XbarSControlChartAnswers01.gif)

The upper control limit for the S chart is

`3.267*0.15=0.49.`

The distance from the center line to the upper control limit is

`0.49-0.15=0.34.`

The warning limit is placed at 2/3 of the distance from the center
line or

`0.15+0.34*2/3=0.38.`

Here is the S chart (note again some slight discrepancies due to
rounding).

![](http://www.pmean.com/images/images/07/XbarSControlChartAnswers02.gif)

[![Creative Commons
License](http://i.creativecommons.org/l/by/3.0/us/80x15.png)](http://creativecommons.org/licenses/by/3.0/us/)
This work is licensed under a [Creative Commons Attribution 3.0 United
States License](http://creativecommons.org/licenses/by/3.0/us/). It was
written by Steve Simon.

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Control
charts](../category/ControlCharts.html).
<!---More--->
charts](../category/ControlCharts.html).
for pages similar to this one at [Category: Control
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]:** **XBAR-S control chart, answers to *on
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Control
charts](../category/ControlCharts.html).
--->

