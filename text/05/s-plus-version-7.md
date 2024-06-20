---
title: S-plus version 7
author: Steve Simon
source: http://www.pmean.com/05/SplusVersion7.html
date: 2005-04-19
categories:
- Blog post
tags:
- Being updated
- Statistical computing
output: html_document
page_update: partial
---
**[StATS]:** **S-plus version 7 (April 19, 2005)**

I attended a web seminar by David Smith introducing the latest version
of S-plus, version 7.This software, produced by Insightful Corporation,
is one of my favorite products for producing advanced statistical
analyses. Dr. Smith cited four advantages of Insightful software
products:

1.  integrating statistics into business processes,
2.  flexible and rapid prototyping,
3.  visualization and custom reporting, and
4.  deriving value from large data sets.

He mentioned how Pillsbury Bakery had produced a web based statistical
application to allow non-statisticians to review quality reports and
charts. Ratings managers at Lipper (Reuters) use the rapid prototyping
to react faster to new mutual funds introduced to the market. Eli Lilly
uses custom reporting and visualization tools to assist with high
throughput screening. At Kraft, product quality managers use these
graphics to visualize sensory panel data to adjust recipes for
consistency and aroma. At Verizon, managers process massive amounts of
network performance data to optimize their networks.

The new features of S-plus Server include

1.  statistical techniques,
2.  enterprise-class development,
3.  analysis of very large data sets.

A new library by Chao, Pinheiro, et al, allows for analyses of mixed
models with non-Gasussian responses, such as repeated measures of counts
and proportions with random effects. A library by Terry Thernau allows
you to build mixed effects Cox models. This allows you to include random
effects in a survival data model.

The S-plus workbench provides an integrated development environment of S
programming teams. It includes a smart code editor that recognizes the
particulars of the language and offers appropriate syntax highlighting
and indenting. The code editor has an outline function which allows you
to jump to various segments of your code and a history window that lists
the previously submitted commands. You can integrate task within the
code by including comments in the code itself. These tasks are
highlighted in a special window and allow you to jump to the appropriate
code. This workbench is based on the industry standard
[Eclipse](http://www.eclipse.org/) framework.

S-plus now has a
[pipeline](http://www.corporate-ir.net/ireye/ir_site.zhtml?ticker=**IFUL&scripthttp://en.wikipedia.org/wiki/Pipeline_(computer))
architecture for scalable data analysis. You can now manipulate and
analyze data sets in the gigabyte size range. Previous verison of S-plus
stored all of the data in memory, the new system stores data on the
disk. S-plus has a new data type, the bdFrame (Big Data Frame). There
are variants for time series and vector data.

The bdFrame uses the same tools as other S-plus objects such as the
ability to use the square brackets to selects portions of the data
frame. The bdFrame has news data manipulation functions for appending
and merging and filtering data sets. S-plus has the ability to use
[SQL](http://en.wikipedia.org/wiki/SQL) code for data manipulation. For
large data sets, S-plus has the ability to produce hex-bin charts rather
than scatterplots. With large data sets, a scatterplot often looks like
a big blob of ink that is difficult to interpret.

S-plus has new out-of-memory algorithms for linear, logistics, and
Poisson<U+FFFD> regression. You can apply arbitrary S-plus functions to data
blocks using the bd.by.group() function.

Dr. Smith ended with a case study using US 2000 Census data. To read the
data in as a bdFrame, the code looks like

- census \<-
importData("/projects/census/census.csv",stignasAsFactors=F,,bigdata=T)

You can remove rows with zero population totals using standard S
subscripting techniques

- census \<- census\[census\[,"poptotal"\]\>0,\]

but this requires two passes through the data. A new and faster
alternative is

- census \<- bd.filter.rows(census,"popTotal\>0")

You can also use [regular
expressions](http://en.wikipedia.org/wiki/Regular_expression) to filter
this data.

There are new "Big Vector" data types: bdNumeric, bdFactor,
bdCharacter, bdLogical, bdTimeDate. These data types have the same
efficiency advantages of the bdFrame.

There are two white papers:

- Delivering the Power of Predictive Analytics Across the Enterprise,
and
- Analyzing Large Data Sets with S-plus 7 Enterprise Developer.

A new course, S-plus 7 - Working With Big Data, is also available.

You can also browse
for pages similar to this one at [Category: Statistical
computing](../category/StatisticalComputing.html).

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/SplusVersion7.html
[sim2]: http://www.pmean.com

