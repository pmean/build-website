---
title: Placing consecutive dates in a column of an SPSS file
author: Steve Simon
source: http://www.pmean.com/05/ConsecutiveDates.html
date: 2005-01-26
category: Blog post
tags: SPSS software
output: html_document
---
**[StATS]: Placing consecutive dates in a column of
an SPSS file (January 26, 2005)**.

Someone gave me a data set with 549 rows of data. The first row
corresponded to observations on 06/01/2003, the second to 06/02/2003,
and so forth through 11/30/2004. She wanted to know how to get those
particular dates in a column without having to type something into each
individual cell.

Here\'s how I did it.

First, I defined a new column, date1, that has a date format. Then I
used TRANSFORM \| COMPUTE to calculate the following formula:

-   DATE.DMY(31,05,2003)+\$casenum\*24\*60\*60

 This gives you dates starting on June 1, 2003 and moving up day by day
in each row.

She also wanted a column designating the particular month. You can do
this with the same TRANSFORM \| COMPUTE command to compute a new
variable, MONTH, using the formula

-   XDATE.MONTH(date1).

Since you have June in both 2003 and 2004, you probably also need to
compute a YEAR variable using the formula

-   XDATE.YEAR(date1).

This is a very simple example of date calculations in SPSS. I have
another page that talks about this:

-   [Stats: Date calculations in SPSS](../data/dates.asp)

and version 13 of SPSS has a very useful date and time wizard:

-   [Stats: New in SPSS version 13.0 (December
    7, 2004)](http://www.childrensmercy.org/stats/weblog2004/SPSSversion13.asp)

but the best resource for these types of things is on Raynald
Levesque\'s web site:

-   **[Dates
    Tutorial](http://pages.infinit.net/rlevesqu/LearningSyntax.htm#DateTutorial%20%20)**.
    Levesque R. Accessed on 2001-09-07.
    pages.infinit.net/rlevesqu/LearningSyntax.htm\#DateTutorial

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: SPSS
software](../category/SpssSoftware.html).
<!---More--->
software](../category/SpssSoftware.html).
for pages similar to this one at [Category: SPSS
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Placing consecutive dates in a column of
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: SPSS
software](../category/SpssSoftware.html).
--->

