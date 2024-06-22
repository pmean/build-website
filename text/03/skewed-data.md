---
title: Skewed data
source: http://www.pmean.com/03/skew.html
author: Steve Simon
date: 2003-06-05
categories:
- Blog post
tags:
- Descriptive statistics
output: html_document
page_update: complete
---
### Dear Professor Mean,

Please explain how the standard deviation can be greater than the mean. I think it is because of skewed data.*

### Dear reader,

Be careful. The most commonly used distribution is the standard normal. It has a mean of 0 and a standard deviation of 1. So clearly, it represents an example where the standard deviation is greater than the mean.

What you are thinking about is the fairly common situation where a variable can only take on positive values. The concentration of ozone in the air is a good example of this. When the variable is non-negative, then usually the standard deviation is smaller than the mean. When it is not, it is probably because your data is skewed to the right (positively skewed).

Clearly, the data can't be symmetric in such a situation. With symmetric data, the mean plus or minus two standard deviations would have to include roughly 95% of the data. But with the standard deviation larger than the mean, minus two standard deviations would put you quite a ways negative.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/03/skew.html
[sim2]: http://www.pmean.com/original_site.html
