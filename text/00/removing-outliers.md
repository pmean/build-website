---
title: Outliers
source: http://www.pmean.com/00/outliers.html
author: Steve Simon
date: 2000-01-28
categories:
- Blog post
tags:
- Ask Professor Mean
- Unusual data
output: html_document
page_update: partial
---

*Dear Professor Mean, I have recently conducted a survey of attitudes toward research from a professional group. There are some outliers (+/- 3SD) that I would eliminate , but others conducting the research with me feel that this might be a minority view, and should not be eliminated from the dataset. Any views or references that I should read to confirm my view, or theirs?*

There are several things you can do here. The suggestion in Altman's book (page 130) is to **present an analysis with and without the outliers**. Think of it as a sensitivity analysis. This also allows the readers to make up their own minds about which analysis to use.

My suggestion is to investigate any outliers carefully and fix any obvious typos. **Never remove an outlier unless there is a good MEDICAL reason to do so**. Even then you might want to think twice.

**Removing outliers is a deviation from the protocol and can lead to serious biases**. One possible exception is when you specify in your original protocol how outliers will be handled (e.g., any lab result outside three standard deviations will automatically be re-tested).

The other thing to keep in mind is that **sometimes the outliers are more interesting than the rest of the data**. Think about cancer patients who survive much longer than their peers. Why would you want to remove these "outliers"? These are the people you should be studying the most.

Also **look for other factors that might explain the outliers**. Are all the outliers in upper management? Maybe you have a Dilbert factor going on here. Look for any demographics that might be related to these unusual data values. If oultliers are exclusively in a particular demographic category (e.g., a specific age group), you have a great discovery that you might have missed if you just mindlessly tossed out the data.

There are a lot of good approaches to handling outliers, although your original inclination to remove them without further effort is not the best choice.

**Further reading**

Altman DG. Practical Statistics for Medical Research. London England: Chapman and Hall (1991). ISBN: 0-412-27630-5.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/outliers.html
[sim2]: http://www.pmean.com/original_site.html
