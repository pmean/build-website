---
title: Why is my standard deviation so small
author: Steve Simon
date: 2011-05-02
categories:
- Blog post
tags:
- Descriptive statistics
output: html_document
page_update: complete
---

I am helping someone with a projec that involves (among other things), computing averages of many Likert scale items. A Likert scale has different interpretations, but I use the term to mean a scale that has five items with a logical ordering. So the scale 1=Strongly disagree, 2=Disagree, 3=Neutral, 4=Agree, and 5=Strongly agree is a Likert scale. This person ran some descriptive statistics on the individual items and on the mean of those items. The results are shown below with generic names for the individual items. I was asked why the average had a standard deviation that was so much smaller than the standard deviations of the individual items.

<!---More--->

![Figure 1. Table of means and standard deviations](http://www.pmean.com/new-images/11/SmallStdDev01.png)

An average is always less variable than an individual score. It is at the heart of almost every statistical method in the book. If averages were more variable than individual items, then we would never want to take samples.

What is a bit surprising, perhaps, is that the standard deviation is not a lot smaller. If the four items were independent, then the standard deviation would have been half the size (smaller by a factor of the square root of 4). It's not that much smaller because the items are positively correlated. But unless the correlation is +1, the average will always have less variation than the individual items.

There are a few qualifiers, of course. If one item has a much smaller standard deviation than the other items, it is possible for the mean to have a larger standard deviation than those individual item (but still smaller than the standard deviation of the other items). Some other anomalies might appear with unbalanced data. But as a general rule, averages are less variable than individuals and we statisticians are glad for it.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/SmallStdDev.html
[sim2]: http://www.pmean.com/original_site.html 

