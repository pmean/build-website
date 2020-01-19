---
title: "Recommendation: Oracle Dates and Times"
author: "Steve Simon"
source: "http://blog.pmean.com/oracle-dates/"
date: "2016-10-18"
category: Blog post
tags: Dates, SQL
output: html_document
---

I'm working with R and SQL, and some of the work uses SQLite, and some
of the work uses Oracle. There are subtle differences between the two,
and for that matter between any two database programs. While there are
[SQL
standards](https://en.wikipedia.org/wiki/SQL#Interoperability_and_standardization),
most packages have minor deviations, or enhancements. Dates in Oracle
represent one deviation. In particular, Oracle does not use the [ISO
8601 standard date format](https://xkcd.com/1179/) (yyyy-mm-dd) by
default. Here's a nice overview of how to work with Oracle
dates.

<!---More--->

Kristian Widjaja, Jun Yang, Jeff Ullman. Oracle Dates and Times.
Available at
<http://infolab.stanford.edu/~ullman/fcdb/oracle/or-time.html>.

![](../../web/images/oracle-dates01.png)




