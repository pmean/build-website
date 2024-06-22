---
title: Running R on a web server
author: Steve Simon
date: 2008-06-17
categories:
- Blog post
tags:
- Being updated
- R software
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

I'm working on a project for planning and monitoring accrual patterns
in clinical trials. This will eventually lead, I hope, to a grant to
support this work. I have some existing R scripts and want to examine
the possibility of running those scripts on a web page.

The R FAQ has a section on this.

-   [cran.r-project.org/doc/FAQ/R-FAQ.html\#R-Web-Interfaces](http://cran.r-project.org/doc/FAQ/R-FAQ.html#R-Web-Interfaces)

There are a variety of solutions, using
[CGI](http://en.wikipedia.org/wiki/Common_Gateway_Interface),
[Java](http://en.wikipedia.org/wiki/Java_(programming_language)),
[JavaScript](http://en.wikipedia.org/wiki/JavaScript), and
[PHP](http://en.wikipedia.org/wiki/Php). I'll investigate these, but
the one that seems to be the best fit is rwui.

-   [rwui.cryst.bbk.ac.uk/](http://rwui.cryst.bbk.ac.uk/)

A nice description of this package appears in the October 2007 issue of
R News.

-   [www.r-project.org/doc/Rnews/Rnews\_2007-2.pdf](http://www.r-project.org/doc/Rnews/Rnews_2007-2.pdf)

Another possible candidate is CGIwithR. A paper in the Journal of
Statistical Software describes this system.

-   [www.jstatsoft.org/v08/i10/paper](http://www.jstatsoft.org/v08/i10/paper)

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/RWebServer.html
[sim2]: http://www.pmean.com/original_site.html
