---
title: P control chart, answers to on your own exercises
author: Steve Simon
source: http://www.pmean.com/07/PControlChartAnswers.html
date: 2007-03-07
categories:
- Blog post
tags:
- Control charts
output: html_document
page_update: complete
---

On the web page [Calculating a P control chart][sim3] you were asked to calculate P charts for the following two data sets:

```
Worker #2:
60 56 78 60 74 70 70 68 82 76 72 76
68 78 76 68 74 56 74 62 60 70 60 84

Worker #3:
24 32 20 14 32 22 20 26 26 38 30 16
36 32 38 14 26 14 38 20 14 18 22 34`
```

For worker #2, the average of all 24 proportions is 0.6967. The control limits are calculated as

![](http://www.pmean.com/new-images/07/PControlChartAnswers01.gif)

and the control chart is

![](http://www.pmean.com/new-images/07/PControlChartAnswers02.gif)

Notice that the computer rounds these numbers slightly differently, reporting the lower control limit as 0.50 rather than 0.51. Do not worry about these small differences, but the computer's value is slightly more accurate.

There are no points out of control on this chart.

For worker #3, the average proportion is 0.2525. The control limits are calculated as

![](http://www.pmean.com/new-images/07/PControlChartAnswers03.gif)

and the control chart is

![](http://www.pmean.com/new-images/07/PControlChartAnswers04.gif)

Again, the answers diverge slightly because of rounding. There are no points out of control on this chart.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/PControlChartAnswers.html
[sim2]: http://www.pmean.com

[sim3]: http://new.pmean.com/PControlChart/
