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
---
**[StATS]:** **More lessons learned the hard way
(January 31, 2006)**.

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

[![Creative Commons
License](http://i.creativecommons.org/l/by/3.0/us/80x15.png)](http://creativecommons.org/licenses/by/3.0/us/)
This work is licensed under a [Creative Commons Attribution 3.0 United
States License](http://creativecommons.org/licenses/by/3.0/us/). It was
written by Steve Simon on 2006-01-31, edited by Steve Simon, and was
last modified on 2010-04-01. Send feedback to ssimon at cmh dot edu or
click on the email link at the top of the page. [Category: Data
management](../category/DataManagement.html)

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]:** **More lessons learned the hard way
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

