---
title: Some resources for Analysis of Means
author: Steve Simon
source: http://www.pmean.com/06/AnalysisOfMeans-06.html
date: 2006-06-30
categories:
- Blog post
tags:
- Analysis of means
output: html_document
page_update: partial
---
One of the techniques recommended by Davis Balestracci when he visited
CMH in June 2006 was Analysis of Means, which often is abbreviated ANOM.
You can use ANOM much like a control chart, but it is applied when you
have a collection of averages representing the performance of specific
subgroups. The classic application is examining the performance of
several different workers who are all performing a similar task. I tend
to dislike examples like that because it implies that the root cause of
most problems lies in the workers themselves. That's not really true,
though, but even if it were, such a focus early on in a quality program
would lead to a lot of resistance, defensiveness, and possibly even
fudging the numbers.

Still, ANOM is a useful tool that has a lot of profitable applications.

The first thing you might notice is the similarity between the acronym
ANOM and another acronym, ANOVA (Analysis of Variance). The two
approaches can be used on the same problem, but they have a different
focus. In ANOVA, the comparison is typically to see if certain levels of
a factor differ from other levels of a factor. In ANOM, the comparison
is typically to see if certain levels of a factor differ from the
overall mean. You can adapt ANOVA to perform the latter task, but it is
typically not done all that often. The other difference is that ANOM
will typically use a graphical display that looks much like a control
chart.

Here is a nice resource for ANOM

-   [www.analysisofmeans.com](http://www.analysisofmeans.com/)

A brief tutorial for ANOM is available at

-   [www.sixsigmafirst.com/ANOM.htm](http://www.sixsigmafirst.com/ANOM.htm)

that shows how to use MINITAB for ANOM. Most software programs do not
have ANOM.<U+FFFD> (I know for sure that R, SPSS, and STATA do not have it) but
instead provide the results of the ANOVA model instead. Apparently, ANOM
is available in the SAS/QC package.

Donald Wheeler is one of my favorite authors, and you can find a nice
discussion of ANOM in Chapter 18 of

-   **Advanced Topics in Statistical Process Control: The Power of
    Shewhart's Charts.** Donald J. Wheeler (1995) Knoxville, Tennessee:
    SPC Press. [\[BookFinder4U
    link\]](http://www.bookfinder4u.com/detail/0945320450.html)

**(Update: 2007-02-01)**. The best book on this topic is

-   **The Analysis of Means.** Nelson PR, Wludyka PS, Copeland
    KAF (2005) Philadelphia, PA: SIAM. ISBN: 0.89871.592.X.
    [\[BookFinder4U
    link\]](http://www.bookfinder4u.com/detail/0.89871.592.X.html)

An interesting review of this book is on the web in PDF format at

-   [www.asq.org/pub/jqt/past/vol38\_issue2/jqt3802bookreviews.pdf](http://www.asq.org/pub/jqt/past/vol38_issue2/jqt3802bookreviews.pdf)

You can find the table of contents, introduction, and first chapter of
the book on the web in PDF format at

-   [www.siam.org/books/textbooks/SA18sample.pdf](http://www.siam.org/books/textbooks/SA18sample.pdf)

The first<U+FFFD> chapter includes several simple examples. The first example
shows paint drying times for four different types of paint. The data
(mean +/- sd) are

-   `6.88 +/- 1.72`
-   `9.28 +/- 1.85`
-   `9.00 +/- 2.81`
-   `9.90 +/- 1.95`

Each paint type was tested four times, for a total of 16 observations.
The overall mean is 8.8 and the lower and upper decision limits are 7.0
and 10.5, respectively. When I get some time, I'd like to replicate
this example using R software.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/analysisOfMeans.html
[sim2]: http://www.pmean.com
