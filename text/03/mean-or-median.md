---
title: Mean or median?
author: Steve Simon
date: 2003-07-28
categories:
- Blog post
tags:
- Descriptive statistics
output: html_document
page_update: complete
---

### Dear Professor Mean,

I am writing a report on turnover. I want to summarize the number of weeks it takes to fill a vacancy. Should I use a mean or a median?

<!---More--->

### Dear Reader,

The mean is easily influenced by outliers, so you might want to avoid it when your data is highly skewed. For example, if you are collecting data on salaries and your random sample happens to include Bill Gates, the mean would be so large that it would not be a good representation of the sample.

One advantage of the mean that is often overlooked is that it extrapolates well to totals. Suppose for example, that each week of vacancy costs an organization $5000 and that our organization has had 20 vacancies in the past year. If we take the average weeks of vacancies times 20 times 5000 we would get an estimate of the total cost to the organization. You couldn't do that with a median.

In medicine, the folks who do cost-benefit analyses almost always use a mean rather than a median (or a log transformation) even when the data is highly skewed because it helps the hospital, insurance company, etc. better understand the impact on their bottom line.

Of course, there is no rule that says you can't report both a mean and a median.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/03/meanormedian.html
[sim2]: http://www.pmean.com/original_site.html
