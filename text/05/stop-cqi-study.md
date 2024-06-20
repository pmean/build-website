---
title: When can I stop my CQI study?
author: Steve Simon
source: http://www.pmean.com/05/StopStudy.html
date: 2005-06-06
categories:
- Blog post
tags:
- Being updated
- Early stopping
output: html_document
page_update: partial
---
**[StATS]: When can I stop my CQI study? (June 6,
2005)**

I was asked today about a CQI project where children were being tested
for a certain condition, but they never tested positive. This was going
on for over a year and there were already 188 cultures and none were
positive. Is it safe to hang up your spurs and call it a day?

To decide whether to stop or not depends on how much precision you want
or desire.

If you have a rate of 0/188, then you can estimate the 95% confidence
interval for the true rate to be somewhere between 0 and 1.6%. That
tells you that even after allowing for sampling error, you know the
probability is much less than 2%.

Is that small enough, or do you need to make the interval even narrower?
You could, for example, collect data on twice as many patients. Then
your 95% confidence interval (assuming that all 376 samples are
negative) would be somewhere between 0 and 0.8%.

To me it hardly seems worth the trouble to further narrow the confidence
interval, but that is just my opinion. You need to balance the cost of
additional testing versus the cost of possibly missing a future positive
culture.

Another way of looking at it is to ask how much precision do you need?
If you want an unreasonable amount of precision, such as requiring that
the 95% confidence interval extend up to only 0.1%, then you would need
to find all negative results in an unrealistically large sample of 3,000
patients.

If you were quite casual about precision, and believed that an interval
that extended up to 20% would be satisfactory, then a casual sample of
15 patients with all negative results would be all that you really need.

I suspect that most people find themselves between those two extremes.
Tell me how much precision you are happy with and I will tell you how
big a sample size you would need.

**Further reading:**

- [Stats: Rule of three](../size/zeroevents.asp)

 You can also browse
for pages similar to this one at [Category: Early
stopping](../category/EarlyStopping.html).

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/StopStudy.html
[sim2]: http://www.pmean.com