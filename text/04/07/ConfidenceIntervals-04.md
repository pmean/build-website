---
title: Confidence intervals for proportions
author: Steve Simon
source: http://www.pmean.com/04/ConfidenceIntervals-04.html
date: 2004-07-27
category: Blog post
tags: Confidence intervals
output: html_document
---
**[StATS]: Confidence intervals for proportions
(created 2004-07-27)**.

> One of the fellows at the hospital asked me about confidence intervals
> for proportions. I wrote a couple of simple spreadsheets to do these
> calculations
>
> -   [SingleProportionCI.xls](../00files/ConfidenceIntervalForSingleProportion.xls)
> -   [TwoUnpairedProportionsCI.xls](../00files/ConfidenceIntervalForTwoUnpairedProportions.xls)
>
> It\'s important to avoid comparing two separate confidence intervals
> to see if they overlap. Someone brought me data where the proportion
> of patients who tested positive was 41.6% (n=202) for the first group
> and 50.7% (n=802) in the second group. The individual confidence
> intervals are (34.8% to 48.4%) and (47.2% to 54.2%). Notice that the
> two intervals overlap, but just barely. The confidence interval for
> the difference in two proportions, however, is (-16.7% to -1.5%) which
> provides evidence that the two proportions differ. This is a
> borderline result, of course, since one side of the interval almost
> reaches zero.
>
> The reason that you can have overlap in the individual intervals is
> that you don\'t add the two standard errors together. The standard
> error for the two individual intervals would be
>
> ![](../weblog/images/ci02.gif){width="243" height="66"}
>
> and the standard error for the difference is
>
> ![](../weblog/images/04_ci01.gif){width="206" height="66"}
>
> I also have spreadsheets that calculate confidence intervals for
> means:
>
> -   [SingleMeanCI.xls](../00files/ConfidenceIntervalForSingleMean.xls)
> -   [TwoUnpairedMeansCI.xls](../00files/ConfidenceIntervalForTwoUnpairedMeans.xls)
>
> These are not very sophisticated spreadsheets and they use the
> simplest formulas available. The nice thing, though, about these
> spreadsheets is that they allow you to play a bunch of \"what if\"
> games.

**Exact confidence intervals**

> Some alternate confidence intervals based on the exact binomial
> distribution will provide better results than my spreadsheet, which
> uses the normal approximation to the binomial distribution. You can
> get such an interval using [StatXact
> software](http://www.cytel.com/StatXact/Default.asp), produced by
> [Cytel, Inc](http://www.cytel.com/home/default.asp). A paper (PDF
> format) at the their web site [discusses some of these exact
> procedures and how to get p-values from an exact confidence
> interval](http://www.cytel.com/Library/Issue_seven/smallerPvalues-final.pdf).

**Other pages that compute confidence intervals**

> There are lots of web pages out there that do confidence interval
> calculations, using Java or JavaScript. Here are a few nice examples
> of confidence intervals for a single proportion:
>
> > **[Exact Binomial and Poisson Confidence
> > Intervals](http://members.aol.com/johnp71/confint.html)**, John C.
> > Pezzullo. members.aol.com/johnp71/confint.html
> >
> > **[The Confidence Interval of a
> > Proportion](http://faculty.vassar.edu/lowry/prop1.html)**, Richard
> > Lowry. faculty.vassar.edu/lowry/prop1.html
> >
> > **[Confidence interval of a proportion or
> > count](http://www.graphpad.com/quickcalcs/ConfInterval1.cfm)**,
> > GraphPad. www.graphpad.com/quickcalcs/ConfInterval1.cfm
> >
> > **[Large Sample Confidence Interval for a Proportion
> > Applet](http://stat.tamu.edu/~jhardin/applets/signed/case6.html)**,
> > James W. Hardin. stat.tamu.edu/\~jhardin/applets/signed/case6.html
>
> and for the difference between two proportions:
>
> > **[The Confidence Interval for the Difference Between Two
> > Independent
> > Proportions](http://faculty.vassar.edu/lowry/prop2_ind.html)**,
> > Richard Lowry. faculty.vassar.edu/lowry/prop2\_ind.html
>
> A nice general reference for web pages that do statistical
> calculations is
>
> > **[Web Pages that Perform Statistical
> > Calculations](http://members.aol.com/johnp71/javastat.html)**.
> > Pezzullo JC. Accessed on 2004-07-08.
> > members.aol.com/johnp71/javastat.html

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Confidence
intervals](../category/ConfidenceIntervals.html).
<!---More--->
intervals](../category/ConfidenceIntervals.html).
for pages similar to this one at [Category: Confidence
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Confidence intervals for proportions
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Confidence
intervals](../category/ConfidenceIntervals.html).
--->

