---
title: "History of SPSS"
author: "Steve Simon"
source: "http://blog.pmean.com/history-of-spss/"
date: "2014-05-31"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: partial
---

I'm helping to put together three separate classes, Basic data
management and analysis with R \[SAS / SPSS\]. As part of these classes,
I need to discuss the history of these programs, because understanding
that history will help you better understand the strengths and
weaknesses of each statistical package. Here's a brief history of
SPSS.

<!---More--->

SPSS, an acronym for Statistical Package for the Social Sciences, first
appeared in 1968. Interestingly, the marketing department today will
only refer to SPSS by its acronym because it wants to de-emphasize its
original target audience of social scientists and try to encourage (and
appropiately so) use of the program by a broader group of researchers.
For a couple of years in 2009, the product was renamed PASW (short for
Predictive Analytics SoftWare), but that name change was reversed
because of the large customer awareness of the SPSS brand name.

The development team, Norman Nie, Hadlai Hull, and Dale Bent, were all
working at Stanford University at the time. Dr. Nie moved to the
National Opinion Research Center at the University of Chicago and
continues distribution of the program from that University. The actual
program was first distributed for free, but the authors of the first
SPSS manual (Nie, Bent, and Hull) made a fair amount of money from book
royalties. In 1975, to avoid jeopardizing the non profit status of the
University, Drs. Nie and Hull created SPSS, Incorporated.

SPSS was originally written in FORTRAN, and some of the legacy of that
FORTRAN code still remains, such as the distinction between short
strings (8 characters or less) and long strings (more than 8
characters). But because SPSS was written in FORTRAN, it was available,
even during its early years on a broad range of minicomputers and
mainframe computers. By contrast, SAS, written in a mix of PL/1,
FORTRAN, and IBM Assembler Language, was limited at first to IBM
mainframes.

SPSS was ported to Microsoft computers in 1984 and to the Windows
operating system in 1992. While earlier versions of SPSS required
knowledge of the SPSS programming language, the Windows version
introduced an easy to use menu based interface that is close to
comprehensive. This is in sharp contrast to the menu based interfaces
for R and SAS which are not as tightly integrated into the program and
which only cover a subset of the total number of features of these
packages.

Much of the code for the graphical user interface was re-written in Java
in 2007 for version 16 to simplify the process of porting to multiple
computers and to allow greater flexibility in the use of their dialog
boxes. SPSS also recently added Python capabilities to allow for more
efficient processing of macro codes.

Over the years, SPSS has added various modules to the package to handle
advanced methods like multiple imputation, complex survey data analysis,
and text mining. SPSS also marketed AMOS, a popular program for
Structural Equations Modeling.

In 2009, SPSS Incorporated was purchased by IBM. In promotional
literature, the package is now called called "IBM SPSS Statistics".

Here are some resources that I found while researching the history of
SPSS.

\* [http://www.spss.com.hk/corpinfo/history.htm\
](http://www.spss.com.hk/corpinfo/history.htm)\*
<http://surveyresearch.weebly.com/what-is-spss.html>\
\*
<http://www4.unescobkk.org/education/efatraining/module-b2/2-introduction-to-spss-pasw-statistics/>

Update: August 19, 2014. I got a nice email from David Nichols, who has
been working at SPSS since 1988. He mentions that Norman Nie provided
mostly oversight and did not do much, if any, coding, so I changed the
phrasing above from "programming team" to "development team." He also
sent me a [link to a Chicago Tribune article about a legal dispute over
the trademark SPSS between Norman Nie and
IBM](http://articles.chicagotribune.com/2009-09-27/business/0909250481_1_predictive-analytics-software-spss-norman-nie)
and noted that the temporary name change from SPSS to PASW occurred
before the buyout by IBM. The Chicago Tribune article had links to other
articles in that paper. One [written in 1990 during the transition of
SPSS to
PCs](http://articles.chicagotribune.com/1990-11-18/business/9004050981_1_spss-edward-hamburg-statistical-software),
and another [written in 2003 that talks about recent growth in the
company and reviews the initial development of
SPSS](http://articles.chicagotribune.com/2003-09-22/business/0309220008_1_spss-chairman-norman-nie-software-firm).

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/history-of-spss/
[sim2]: http://blog.pmean.com
