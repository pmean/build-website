---
title: How many charts should I pull?
author: Steve Simon
source: http://www.pmean.com/06/HowManyCharts.html
date: 2006-03-30
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: partial
---

I got a question from someone doing a quality review. She needs to
pull a certain number of medical records out of 892 and see whether
the doctors followed the clinical guidelines properly. The question is
how to determine the proper number of charts to pull.

Since the outcome variable is binary (followed guidelines, deviated
from guidelines), you would estimate a proportion and place 95%
confidence limits around that proportion. The desired width of the
confidence interval will tell you how many records you would need. So,
for example, if you suspected that 80% of the doctors followed the
guidelines, and you would be happy if your confidence interval around
this estimate had a width of plus/minus 10% (that is, the interval
would go from 70% to 90%), then you would need to sample 62 patients.

There's a simple formula that you could use to get this value

![06_BinomialSampleSize01.gif not found.](http://www.pmean.com/new-images/06/HowManyCharts01.png)
height="56"}

where H is the half width of the confidence interval and Z is the
appropriate percentile from a normal distribution (1.96 for a 95%
interval, for example).

You could also just find a program or a spreadsheet that does
confidence interval calculations and use trial and error to find the
right sample size. I have a simple spreadsheet that will work

-   [SingleProportionCI.xls](../00files/ConfidenceIntervalForSingleProportion.xls)

or you could find something on the web. A nice general resource for
pages that perform statistical calculations is

-   **[Web Pages that Perform Statistical
    Calculations](http://members.aol.com/johnp71/javastat.html)**.
    John C. Pezzullo. Accessed on 2006-03-30. **(Statistics, Software,
    Free)** members.aol.com/johnp71/javastat.html

One wrinkle in the ointment is that only some of the charts that you
pull will actually be relevant to your inquiry and there is no way of
telling which charts will work without reviewing the entire chart. If
you believe that only one out of every four charts meets your needs,
then you should pull 248 charts to make sure that you will have around
62 that qualify when you are done.
