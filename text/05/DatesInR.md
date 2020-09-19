---
title: Dates in Excel and R
author: Steve Simon
date: 2005-08-10
category:
- Blog post
tags:
- R software
output: html_document
---
Every program uses a slightly different method for calculating date
values. Excel, for example, counts the number of days since the start of
1900 (January 1, 1900=1) for Windows, but for the Macintosh it uses 1904
instead of 1900.

If Excel encounters a two digit year, it places it in the 1900s if the
two digits are 30-99 and places it in the 2000s if the two digits are
00-29. Time is a fractional portion of a day in Excel (0.25 equals 6am,
0.5 equals noon and 0.75 equals 6pm).

If you read date values into R, it will probably assume that the dates
are strings. To convert from a string to a date format, use the command

`date2 <- as.Date(date1, "%m/%d/%y")`

R counts the number of days since the start of 1970 (January 1, 1970=0).
It ignores fractional portions of the day. If you use two digit years,
the results are specific to the system you are working on (just like
Excel!). So the moral is to always type in and always display four digit
years.

You can find an [earlier version](http://www.pmean.com/05/DatesInR.html) of this page on my [original website](http://www.pmean.com/original_site.html).