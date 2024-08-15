---
title: "Internal storage format for dates"
author: "Steve Simon"
date: "2022-10-30"
output:
  html_document: default
categories: Blog post
tags:
- Data management
source: new
page_update: complete
---

If you are given data that includes dates, expect confusion. Dates can be represented in many different ways.


### Internal storage

When you import dates, your software will either store your data as a string or as a number. You should try to get dates stored as numbers because it makes calculation of time intervals easier.

But each package chooses a different numbering system. Each system defines an index date, the date corresponding to the number zero. The index date is January 1, 1960 in SAS and Stata and January 1, 1970 in R. If you are foolish enough to manipulate dates in Microsoft Excel, the index date might be December 31, 1899 or January 1, 1904. There are some bugs in how Excel handles the leap year in 1900.

SPSS is the oddball of the bunch. It uses an index date of October 14, 1582, the start of the Gregorian calendar. It also stores not the number of days since the index date, but the number of seconds. This means that today's date is stored as a number just shy of 14 billion. SPSS makes this choice to avoid rounding errors. It may be harder for you and me. But for the computer, arithmetic operations of numbers in the billions is no harder than single digit numbers.
