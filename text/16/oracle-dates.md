---
title: "Oracle Dates and Times"
author: "Steve Simon"
source: "http://blog.pmean.com/oracle-dates/"
date: "2016-10-18"
categories:
- Recommendation
tags:
- Dates
- SQL
output: html_document
page_update: complete
---

![Figure 1. Excerpt from website](http://www.pmean.com/new-images/16/oracle-dates01.png)

<div class="notes">

I'm working with R and SQL. Some of the work uses SQLite, and some of the work uses Oracle. There are subtle differences between the two, and for that matter between any two database programs. While there are [SQL standards][wik1], most packages have minor deviations or enhancements. Dates in Oracle represent one deviation. In particular, Oracle does not use the [ISO 8601 standard date format][xkcd1] (yyyy-mm-dd) by default. Here's a nice overview of how to work with Oracle dates.

Kristian Widjaja, Jun Yang, Jeff Ullman. Oracle Dates and Times. Available in [html format][widj1]. 

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/oracle-dates/
[sim2]: http://blog.pmean.com

[widj1]: http://infolab.stanford.edu/~ullman/fcdb/oracle/or-time.html
[wik1]: https://en.wikipedia.org/wiki/SQL#Interoperability_and_standardization
[xkcd1]: https://xkcd.com/1179/

</div>
