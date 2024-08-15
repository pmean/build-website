---
title: "Simple longitudinal data sets to illustrate data management"
author: "Steve Simon"
source: "http://blog.pmean.com/simple-longitudinal-data-sets/"
date: "2014-07-07"
categories:
- Blog post
tags:
- Datasets
- Longitudinal data
- Missing data
output: html_document
page_update: partial
---

I am working on a class that will teach basic data management and
graphics using the R programming language with parallel classes in SPSS
and SAS. On the third or fourth day of the class, we will look at
managing longitudinal data sets, as these require special skills. I
wanted to find a couple of reasonably simple longitudinal data sets that
were available on the web and which had at least a few missing values in
them. Here's a couple of data sets that might work.

<!---More--->

Don Hedeker has a nice file on treatment of schizophrenia patients. The
outcome variable was severity of illness, which was measured on a seven
point scale:

1 = normal\
2 = borderline mentally ill\
3 = mildly ill\
4 = moderately ill\
5 = markedly ill\
6 = severely ill\
7 = among the most extremely ill

Patients received either a placebo or an active medication and they were
evaluated at baseline (0), and at weeks 1, 3, and 6. The gender of the
patient is also recorded. Some patients dropped out of the study and it
is interesting to talk about some of the simple (but not necessarily
recommended) approaches like LOCF (Last Observation Carried Forward).

The data set can be found at
<http://tigger.uic.edu/~hedeker/SCHIZREP.DAT.txt>. or
<http://rem.ph.ucla.edu//mld/data/tabdelimiteddata/schizophrenia.txt>.

Additional resources related to this data set can also be found at [Dr.
Hedeker's website](http://tigger.uic.edu/~hedeker/long.html), though
they are rather advanced and not germane to the data management and
basic graphical methods that I want to talk about.

Another interesting longitudinal data set appears at the OzDASL website.
The data is taken from the HARVEST trial, which examined whether
ambulatory monitoring of blood pressure adds useful information beyond
what is collected in a doctor's clinic. The data set includes
information on systolic and diastolic blood pressures and heart rate.
The suffix A or C indicates whether the measurement was done in an
ambulatory or clinical setting, and a second suffix of B, 3, 5, or E
indicates whether the measurement was taken at baseline, 3 months, 5
years, or at the endpoint. The endpoint measure is not explained very
clearly, but a variable labelled time is described as "Time in months
from baseline examination to the date of endpoint or to May 30, 1999,
whichever was earlier" which implies that some of the patients did not
complete a full five years.

The data set is available at

<http://www.statsci.org/data/general/harvest.txt>

and a description is at

<http://www.statsci.org/data/general/harvest.html>


You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/simple-longitudinal-data-sets/
[sim2]: http://blog.pmean.com
