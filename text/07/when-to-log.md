---
title: When should you use a log transformation?
author: Steve Simon
source: http://www.pmean.com/07/WhenToLog.html
date: 2007-12-28
categories:
- Blog post
tags:
- Linear regression
output: html_document
page_update: complete
---

### Dear Professor Mean,

How do I know whether it is appropriate to use a log transformation for my data?

### Dear Reader,

There are no absolute rules here. A lot of the factors that go into whether you should use a log transformation are subjective and vary by the professional discipline.

The first question to ask is whether your data includes zeros and/or negative numbers. You cannot use a log transformation unless all your data values are strictly greater than zero. Some people try to adapt the log transformation in this situation by adding a constant to each data value, but this adds an extra element of arbitrariness to your data analaysis.

The second question to ask is if there is evidence that your data is skewed to the right. A histogram, a normal probability plot, or a boxplot will all give you an indication of this. Log transformations make the most sense for data that are skewed right, but this is not an absolute requirement.

Finally, ask yourself if there are any existing precedents to use a log transformation for this type of data. You don’t have to have a precedent, but as the saying goes, "there’s safety in numbers."

There are other considerations, of course, but these are the three biggest questions that you should ask.
You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/WhenToLog.html
[sim2]: http://www.pmean.com
