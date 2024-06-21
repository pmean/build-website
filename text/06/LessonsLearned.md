---
title: More lessons learned the hard way
author: Steve Simon
source: http://www.pmean.com/06/LessonsLearned.html
date: 2006-01-31
categories:
- Blog post
tags:
- Data management
output: html_document
page_update: partial
---

> The more I do, the more I realize how little I have thought about how
> to properly conduct a statistical analysis. One lesson I thought I had
> learned was that it costs next to nothing to store information
> electronically, but it can often save you a lot of time. But recently,
> I have relearned the value of this lesson.
>
> In a study of microarrays of 11 different tissues, a researcher wanted
> to compare expression levels of a broad class of genes. I used a
> randomization test and then applied a Bonferroni correction. Since
> there were 11 tissues, there were 11\*10/2 = 55 different pairwise
> comparisons. A simple approach is to take each p-value and multiply it
> by 55. Those p-values larger than 1.0 were set equal to 1.0.
>
> The researcher then asked for the unadjusted p-values. That is a
> reasonable enough request. I could divide all the Bonferroni adjusted
> p-values by 55 to get back the unadjusted p-values, but what would I
> do about the p-values that I set equal to 1.0. They could represent a
> whole range of values, so I was stuck. I had to run the randomization
> tests a second time (it takes several hours of computer time). How
> much easier would it have been to store the unadjusted p-values as an
> intermediate result. It would cost almost nothing to store an
> additional 55 values.
>
> **Previous weblog entries on this topic:**
>
> -   [Stats: Hard learned lessons (November
>     25, 2005)](http://www.pmean.com/weblog2005/HardLessons.asp)
> -   [Stats: Non-destructive data editing (November
>     2, 2005)](http://www.pmean.com/weblog2005/NondestructiveEditing.asp)
