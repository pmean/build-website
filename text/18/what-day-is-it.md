---
title: "What day is it in my R program?"
author: "Steve Simon"
source: "http://blog.pmean.com/what-day-is-it/"
date: "2018-08-27"
categories:
- Blog post
tags:
- R software
output: html_document
page_update: complete
---

There are three different ways to find out inside your R program what
day it is. Let's quickly look at each.

<!---More--->

The Sys.time function returns the date and time value in POSIXct format.
POSIXct is an industry standard. Numerically, it is the number of
seconds since January 1, 1970.

The Sys.Date function returns the date value alone, and uses the
internal R format for dates, which is the number of days since January
1, 1970.

R has a third function, date, that produces a string with today's date
and time.

Note that the first two functions have inconsistent capitalization. Also
keep in mind that your computer stores information about the time zone
you are in. If things don't line up exactly right, R might end up
putting you one day earlier or later than the actual date.

You can use the print.default function to verify the underlying format
of the output from each of these functions.

```
> Sys.time()
[1] "2018-08-27 22:05:56 CDT"
> print.default(Sys.time())
[1] 1535425566
attr(,"class")
[1] "POSIXct" "POSIXt" 
```

```
> Sys.Date()
[1] "2018-08-27"
> print.default(Sys.Date())
[1] 17770
attr(,"class")
[1] "Date"
```

```
> date()
[1] "Mon Aug 27 21:59:54 2018"
> print.default(date())
[1] "Mon Aug 27 21:49:08 2018"
```

There are a variety of ways that you can reformat these values, and I'll
try to summarize them soon.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/what-day-is-it/
[sim2]: http://blog.pmean.com
