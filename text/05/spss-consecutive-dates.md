---
title: Placing consecutive dates in a column of an SPSS file
author: Steve Simon
date: 2005-01-26
categories:
- Blog post
tags:
- SPSS software
output: html_document
page_update: partial
---

Someone gave me a data set with 549 rows of data. The first row corresponded to observations on 06/01/2003, the second to 06/02/2003, and so forth through 11/30/2004. She wanted to know how to get those particular dates in a column without having to type something into each individual cell.

Here's how I did it.

First, I defined a new column, date1, that has a date format. Then I used TRANSFORM | COMPUTE to calculate the following formula:

- DATE.DMY(31,05,2003)+\$casenum\*24\*60\*60

This gives you dates starting on June 1, 2003 and moving up day by day in each row.

She also wanted a column designating the particular month. You can do this with the same TRANSFORM | COMPUTE command to compute a new variable, MONTH, using the formula

- XDATE.MONTH(date1).

Since you have June in both 2003 and 2004, you probably also need to compute a YEAR variable using the formula

- XDATE.YEAR(date1).

This is a very simple example of date calculations in SPSS. I have another page that talks about this:

- [Stats: Date calculations in SPSS][sim3]

and version 13 of SPSS has a very useful date and time wizard:

- [New in SPSS version 13.0][sim4]

but the best resource for these types of things is on Raynald Levesque's web site:

- [Dates Tutorial][lev1].

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/ConsecutiveDates.html
[sim2]: http://www.pmean.com/original_site.html
[sim3]: http://www.pmean.com/99/dates.html
[sim4]: http://www.pmean.com/04/SPSSversion13.html

[lev1]: https://www.spsstools.net/en/syntax/syntax-index/dates-and-time/
