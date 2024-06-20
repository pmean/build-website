---
title: Centering the data
author: Steve Simon
source: http://www.pmean.com/07/CenteringData.html
date: 2007-06-08
categories:
- Blog post
tags:
- Data transformations 
output: html_document
page_update: complete
---

### Dear Professor Mean,

Why do we have to center the data before analyzing it? What would happen if we failed to center the data?*

### Dear Reader,

Failure to center the data is a criminal offense in most jurisdictions. There is a thousand dollar fine for each offense, and the money from these fines goes towards the Professor Mean Needs to Analyze His Data on a Beach research travel fund.

Centering a variable is simply transforming the data by subtracting the mean from each value. If you had a column of data representing each subject's age and the average age was 8 years, then the centered data would be the actual age minus.
 
There is no specific requirement that you center your data before analysis. In certain complex regression models, especially models involving polynomials and/or interactions, the results are often easier to interpret if you use centered data. Back in the old days of computing (the 1970's and 80's), many computers were limited and used single precision storage for more efficient storage and better computational speed. For these systems, centering the data would often minimize problems with rounding errors. This is rarely a concern with today's computers unless you have very extreme and unusual patterns in your data.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/CenteringData.html
[sim2]: http://www.pmean.com
