---
title: Meta-analysis for a diagnostic
source: http://www.pmean.com/99/metaanalysis.html
author: Steve Simon
date: 1999-11-15
categories:
- Blog post
tags:
- Being updated
- Diagnostic testing
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

There is no real consensus yet on how to best combine data from several
studies of a diagnostic test. I will outline a few approaches that seem
to make sense.

**Direct analysis of sensitivity/specificity**

The simplest overall estimate of sensitivity (sens) or specificity
(spec) is to just combine all the studies in a pot and stir. Just
count the number of true positives (tp)
- false negatives (fn)
- true
negatives (tn) and false positives (fp) in each study. The overall
sensitivity would have the sum of the individual true positive values
in the numerator and the sum of the individual true positive plus
false negative values in the denominator.

![](../01/images/diagnostic01.gif)

This is equivalent to a weighted average of the individual
sensitivities where the weights for each individual study is simply
the individual true positive plus false negative values. You would
calculate an overall estimate of sp.

The tricky part comes when you try to define a confidence interval for
the overall estimate. This confidence interval is effectively a
combination of the standard errors that you would assign to each
individual study.

A first attempt might be to define the standard error of an individual
study using the classic binomial formula. Writing the standard error
in terms of true positive and false negative values
- you would get

![](../01/images/diagnostic02.gif)

The problem with this formula for the standard error is that it gives
less weight to studies where sensitivity is close to 50% and greater
weight to studies where sensitivity is much smaller than 50% or much
larger than 50%. Another problem occurs when one or more of the
sensitivities is 100%. The standard error using a binomial
distribution equals zero for those studies with 100% sensitivity,
which seems at first like a good thing. But when one study has<U+FFFD>
standard error of zero
- the meta-analysis model will try to give it an
infinite weight
- which is not at all a good thing.

One way to avoid some of these problems is to estimate the standard
error
- not using the individual sensitivities
- but the overall
sensitivity.

![](../01/images/diagnostic03.gif)

Since the numerator is now the same for every study
- you no longer
have the problem where studies with sensitivities near 50% get much
smaller weights than studies with sensitivities much smaller or much
larger than 50%. This approach also avoids the problem when a study
has 100% sensitivity.

It's interesting to note that
- the overall estimate and the standard
error for the overall sensitivity using this particular meta-analysis
model with a fixed effects estimate matches perfectly with the
traditional binomial confidence interval that you might apply. This is
easy enough to show because

![](../01/images/diagnostic04.gif)

which implies that

![](../01/images/diagnostic05.gif)

For a random effects model
- the results are a little more complicated
and they do not exactly match the traditional binomial confidence
interval formula.

**Example**: In an article describing systematic reviews of diagnostic
and screening tests,

-   **Systematic reviews in health care: Systematic reviews of
    evaluations of diagnostic and screening tests.** Deeks JJ. British
    Medical Journal 2001: 323(7305); 157-62.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11463691&dopt=Abstract)
    [\[Full
    text\]](http://bmj.bmjjournals.com/cgi/content/full/323/7305/157)
    [\[PDF\]](http://bmj.bmjjournals.com/cgi/reprint/323/7305/157.pdf)

data from 20 studies of endovaginal ultrasonography for detecting
endometrial cancer are presented. I typed the data in as a comma
separated file.

`study,tp,fn,tn,fp   Abu Hmeidan,81,5,186,273   Auslender,16,0,48,90   Botsis,8,0,14,98   Cacclatore,4,0,30,11   Chan,15,2,15,35   Dorum,12,3,34,51   Goldstein,1,0,16,11   Granberg,18,0,32,125   Hanggi,18,3,13,55   Karlsson (a),112,2,414,601   Karlsson (b),14,1,33,57   Klug,7,1,44,127   Malinova,57,0,26,35   Nasri (a),7,0,14,38   Nasri (b),6,0,24,59   Petrl,18,1,96,35   Taviani,2,0,18,21   Varner,1,1,4,9   Weigel,37,0,91,72   Wolman,4,0,18,32`

and here is the R code to read in an compute the meta-analysis models.

`library(meta)   f0 <- "X:/webdata/EndovaginalUltrasonography.csv"   deeks.example.dat <- read.csv(f0)   attach(deeks.example.dat)   sens <- tp / (tp + fn)   sens.overall <- sum(tp) / sum(tp + fn)   spec <- tn / (tn + fp)   spec.overall <- sum(tn) / sum(tn + fp)      par(mar=c(5.1,4.1,0.1,0.1))   plot(1-spec,sens,xlim=0:1,ylim=0:1)   points(1-spec.overall,sens.overall,pch="+",cex=2)`

The last three lines create a graph of the data
- which is shown below.
The par() function adjusts the margins of the graph to make more
effective use of the available space on the screen. The plot()
function creates the axes and draws a circle at each individual sens,
1-spec pair. The points() command adds a big plus sign at the overall
estimate.

![](../01/images/diagnostic10.gif)

Plotting 1-spec on the x-axis
- which seems odd
- but it is intended to
have the same orientation as an ROC curve. In fact
- this plot is often
called an SROC (Summary Receiver Operating Characteristic) plot.

I experimented with trying to show the confidence limits for each
study in the graph itself
- by drawing rectangles with the width
representing confidence limits for 1-spec and the height representing
confidence limits for sens. Unfortunately
- this graph was too
cluttered to be useful.

The computations for the actual meta-analysis are shown below. The
code is a bit cryptic perhaps
- but I am using "te" as an
abbreviation for "treatment effect" and "se" as an abbreviation
for "standard error." The metagen() function has similar notation.
The only thing that is a bit confusing perhaps is the sm= portion. The
letters "sm" stand for "summary measure. This is a label that
metagen uses to make the output look nicer.

`te1 <- sens   se1 <- sqrt(sens.overall * (1 - sens.overall) / (tp + fn))   deeks1.ma <- metagen(TE=te1
- seTE=se1
- studlab=study
- sm="Sensitivity")   te2 <- spec   se2 <- sqrt(spec.overall * (1 - spec.overall) / (tn + fp))   deeks2.ma <- metagen(TE=te2
- seTE=se2
- studlab=study
- sm="Specificity")`

and here is the output

`deeks1.ma    <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> Sensitivity<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    95%-CI %W(fixed) %W(random)   Abu Hmeidan<U+FFFD> 0.9419 [0.8997; 0.9840]<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 18.82<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    10.27   Auslender<U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.9022; 1.0978]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3.50<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.62   Botsis<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.8617; 1.1383]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    1.75<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3.61   Cacclatore<U+FFFD><U+FFFD> 1.0000 [0.8044; 1.1956]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.88<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    2.10   Chan<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.8824 [0.7875; 0.9772]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    3.72<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5.81   Dorum<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.8000 [0.6990; 0.9010]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    3.28<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5.42   Goldstein<U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.6088; 1.3912]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.22<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    0.60   Granberg<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.9078; 1.0922]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3.94<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.99   Hanggi<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.8571 [0.7718; 0.9425]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    4.60<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 6.47   Karlsson (a) 0.9825 [0.9458; 1.0191]<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 24.95<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    10.77   Karlsson (b) 0.9333 [0.8323; 1.0344]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3.28<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.42   Klug<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.8750 [0.7367; 1.0133]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    1.75<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3.61   Malinova<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.9482; 1.0518]<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 12.47<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    9.37   Nasri (a)<U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.8521; 1.1479]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.53<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    3.27   Nasri (b)<U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.8403; 1.1597]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.31<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    2.91   Petrl<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.9474 [0.8576; 1.0371]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    4.16<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 6.16   Taviani<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.7233; 1.2767]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.44<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    1.15   Varner<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.5000 [0.2233; 0.7767]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    0.44<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.15   Weigel<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.9357; 1.0643]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    8.10<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 8.21   Wolman<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.0000 [0.8044; 1.1956]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    0.88<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2.10      Number of trials combined: 20     <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    Sensitivity<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 95%-CI<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    z<U+FFFD> p.value   Fixed effects model<U+FFFD> 0.9584 [0.9401; 0.9767] 102.6404 < 0.0001   Random effects model 0.9481 [0.9171; 0.9792]<U+FFFD> 59.8249 < 0.0001      Quantifying heterogeneity:   tau^2 = 0.002; H = 1.43 [1.1; 1.85]; I^2 = 51% [18.1%; 70.7%]      Test of heterogeneity: <U+FFFD><U+FFFD><U+FFFD> Q d.f. p.value   38.75<U+FFFD> 19<U+FFFD><U+FFFD> 0.0048      Method: Inverse variance method       deeks2.ma    <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> Specificity<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    95%-CI %W(fixed) %W(random)   Abu Hmeidan<U+FFFD> 0.4052 [0.3606; 0.4498]<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 15.27<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.83   Auslender<U+FFFD><U+FFFD><U+FFFD> 0.3478 [0.2665; 0.4292]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4.59<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.46   Botsis<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.1250 [0.0347; 0.2153]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    3.73<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5.35   Cacclatore<U+FFFD><U+FFFD> 0.7317 [0.5825; 0.8810]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.36<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    4.49   Chan<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.3000 [0.1648; 0.4352]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    1.66<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4.71   Dorum<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.4000 [0.2963; 0.5037]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    2.83<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5.17   Goldstein<U+FFFD><U+FFFD><U+FFFD> 0.5926 [0.4087; 0.7765]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.90<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    3.97   Granberg<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.2038 [0.1275; 0.2801]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5.22<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.52   Hanggi<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.1912 [0.0753; 0.3071]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    2.26<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4.99   Karlsson (a) 0.4079 [0.3779; 0.4379]<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 33.78<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.93   Karlsson (b) 0.3667 [0.2659; 0.4674]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3.00<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.21   Klug<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.2573 [0.1842; 0.3304]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.69<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5.56   Malinova<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.4262 [0.3039; 0.5486]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2.03<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    4.90   Nasri (a)<U+FFFD><U+FFFD><U+FFFD> 0.2692 [0.1367; 0.4018]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.73<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    4.75   Nasri (b)<U+FFFD><U+FFFD><U+FFFD> 0.2892 [0.1843; 0.3941]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2.76<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.15   Petrl<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.7328 [0.6493; 0.8163]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    4.36<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5.43   Taviani<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.4615 [0.3085; 0.6146]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1.30<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    4.43   Varner<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.3077 [0.0426; 0.5728]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    0.43<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2.91   Weigel<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.5583 [0.4834; 0.6331]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    5.42<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5.54   Wolman<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 0.3600 [0.2248; 0.4952]<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    1.66<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4.71      Number of trials combined: 20     <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> Specificity<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    95%-CI<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> z<U+FFFD> p.value   Fixed effects model<U+FFFD> 0.3894 [0.3719; 0.4068] 43.7721 < 0.0001   Random effects model 0.3845 [0.3216; 0.4475] 11.9685 < 0.0001      Quantifying heterogeneity:   tau^2 = 0.0172; H = 3.26 [2.77; 3.85]; I^2 = 90.6% [86.9%; 93.2%]      Test of heterogeneity: <U+FFFD><U+FFFD><U+FFFD><U+FFFD> Q d.f.<U+FFFD> p.value   202.17<U+FFFD><U+FFFD> 19 < 0.0001      Method: Inverse variance method `

Notice that there is substantial evidence of heterogeneity in both the
sensitivity and specificity values.

**Analysis of sensitivity/specificity on the log odds scale**

Another approach is to transform the sensitivity/specificity to the
log odds scale before entering the data into a meta-analysis model.
The log odds transformation is a common transformation for binomial
data and serves as the heart of a logistic regression model. The
standard error for the log odds sensitivity has a nice simple
approximation. To derive this
- you have to remember a simple formula
about variances of a function.

![](../01/images/diagnostic11.gif)

This formula relies on two things you forgot from your days of
calculus
- how to take a derivative and how to apply a Taylor series
expansion.

The details are tedious
- but not difficult. When you use this formula
on the log odds function
- you get the following approximation.

![](../01/images/diagnostic13.gif)

Compare this to the standard error for sensitivity shown above. The
numerator for the standard error has now moved in with its downstairs
neighbor
- leaving the upstairs empty. For the log odds for
sensitivity
- this the opposite problem from the sensitivity. Studies
with sensitivity close to 50% have greater weight on the log odds
scale than studies with sensitivity larger than 50%.

You can simplify this formula further. Note that the denominator of
sens~i~ can cancel out the tp~i~+fn~i~ term right next to it. With a
bit more algebra
- you can get

![](../01/images/diagnostic14.gif)

The log odds transformation also has some problems when the
sensitivity is 100%. A simple fix is to add an arbitrary constant
(usually 0.5) to both the numerator and denominator. Another approach
would be to use the more complex formula listed above
- but substitute
the overall sensitivity for the individual sensitivity.

Example: Let's use the example in Deeks 2001 again. Here is the R
code to compute log odds and analyze the data in a meta-analysis
model. Note that the pmax function replaces the zeros in fn with 0.5.

`   logit <- function(p) {log(p)-log(1-p)}   fn.adj <- pmax(fn,0.5)   sens <- tp/(tp+fn.adj)   te3 <- logit(sens)   se3 <- sqrt(1/tp+1/fn.adj)   deeks3.ma <- metagen(TE=te3,seTE=se3,studlab=study,sm="Log Odds Sens")   spec <- tn/(tn+fp)   te4 <- logit(spec)   se4 <- sqrt(1/tn+1/fp)   deeks4.ma <- metagen(TE=te4,seTE=se4,studlab=study,sm="Log Odds Spec")`

Here is the output. Using the summary function results in a briefer
output because the results of individual studies are not shown.

`summary(deeks3.ma)      Number of trials combined: 20     <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> Log Odds Sens<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    95%-CI<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> z<U+FFFD> p.value   Fixed effects model<U+FFFD> 2.4775 [2.0562; 2.8987] 11.5269 < 0.0001   Random effects model 2.4761 [2.0318; 2.9204] 10.9228 < 0.0001      Quantifying heterogeneity:   tau^2 = 0.0551; H = 1.03 [1; 1.27]; I^2 = 5.4% [0%; 38.1%]      Test of heterogeneity: <U+FFFD><U+FFFD><U+FFFD> Q d.f. p.value   20.07<U+FFFD><U+FFFD> 19<U+FFFD> 0.3901      Method: Inverse variance method       summary(deeks4.ma)      Number of trials combined: 20     <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> Log Odds Spec<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    95%-CI<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> z<U+FFFD> p.value   Fixed effects model<U+FFFD> -0.4277 [-0.5036; -0.3518] -11.0403 < 0.0001   Random effects model -0.5033 [-0.7668; -0.2399] -3.7446<U+FFFD><U+FFFD><U+FFFD> 0.0002      Quantifying heterogeneity:   tau^2 = 0.292; H = 3.07 [2.58; 3.64]; I^2 = 89.4% [85%; 92.5%]      Test of heterogeneity: <U+FFFD><U+FFFD><U+FFFD><U+FFFD> Q d.f.<U+FFFD> p.value   178.76<U+FFFD><U+FFFD> 19 < 0.0001      Method: Inverse variance method `

You need to do a few additional calculations to get sensitivity
transformed back to the original measurement scale. You can define a
function in R to do this calculation for you. I call it the expit
function
- which is the inverse of the logit function.

`expit <- function(log.odds) {exp(log.odds)/(1+exp(log.odds))}`

With this function
- you can now take the estimates and confidence
limits on the log odds scale and transform them back to the original
scale.

`attach(deeks3.ma)   est.and.cl.fixed <- TE.fixed+c(0,-1.96,1.96)*seTE.fixed   round(100*expit(est.and.cl.fixed),1)      92.3 88.7 94.8      est.and.cl.random <- TE.random+c(0,-1.96,1.96)*seTE.random   round(100*expit(est.and.cl.random),1)      92.2 88.4 94.9      attach(deeks4.ma)   est.and.cl.fixed <- TE.fixed+c(0,-1.96,1.96)*seTE.fixed   round(100*expit(est.and.cl.fixed),1)      39.5 37.7 41.3      est.and.cl.random <- TE.random+c(0,-1.96,1.96)*seTE.random   round(100*expit(est.and.cl.random),1)      37.7 31.7 44.0`

The estimated sensitivity and 95% confidence limits under the fixed
effects model are 92.3% (88.7% to 94.8%). The estimates and limits
change only slightly under than random effects model. The estimated
specificity and 95% confidence limits under the fixed effect model are
39.5% (37.7% to 41.3%). Under the random effects model
- the estimate
is a bit lower and the confidence limits are much wider.

**Analysis of the diagnostic odds ratio**

A third approach is to compute the diagnostic odds ratio
- which
compares the odds for sensitivity to the odds for specificity.

![](../01/images/diagnostic07.gif)

Notice how the denominator looks like we accidentally switched things.
That was not a mistake. The diagnostic odds ratio is effectively the
odds of TPR (the true positive rate or sens) divided by the odds of
FPR (the false positive rate or 1-spec).

The first advantage of this approach is that you can use well-known
approaches for combining multiple odds ratios. The other advantage is
that is analyzes sensitivity and specificity as a pair. Some studies
may exhibit heterogeneity in the individual sensitivity or specificity
values because one researcher may have tried to maximize sensitivity
at the expense of specificity
- another may have tried to maximize
specificity at the expense of sensitivity
- and a third may have tried
to balance the two. If there is heterogeneity
- then the overall
estimates of sensitivity and specificity may be too low.

Although there are no guarantees
- the diagnostic odds ratio should
exhibit less heterogeneity. The problem with the diagnostic odds ratio
is that no one has a very good feel on what it actually represents.
One way of thinking about the diagnostic odds ratio is to swap a
couple of terms in the fraction.

![](../01/images/diagnostic15.gif)

So you might interpret the diagnostic odds ratio as the spread between
the two likelihood ratios. If
- for example
- the likelihood ratio for a
positive test is 10 and is 0.5 for a negative test
- then there is a 20
fold change. Another way of interpreting this is that the post-test
odds would be 20 fold higher for a positive test than for a negative
test.

The book on meta-analysis by Sutton et al suggests that<U+FFFD> you model the
heterogeneity in the diagnostic odds ratio using the following
regression model

![](../01/images/diagnostic16.gif)

You might recognize D as the diagnostic odds ratio. The variable S is
a bit harder to visualize
- but you can rewrite it as

![](../01/images/diagnostic17.gif)

This represents the tendency of an individual study to skew the test
more towards sensitivity or more towards specificity.

Here's an example of the problems that can happen when different
studies skew more towards sensitivity and others more towards
specificity. Imagine a diagnostic test that takes on a range of
values. This test follows a bell shaped curve both in the diseased and
the healthy populations and the two bell curves are set two standard
deviations apart. You could set a cutpoint to maximize specificity
- to
maximize sensitivity
- or something in between.

This series of graphs shows what happens across a range of cutpoints.

![](../01/images/diagno5.gif)

![](../01/images/diagno6.gif)

![](../01/images/diagno7.gif)

![](../01/images/diagno8.gif)

![](../01/images/diagno9.gif)

![](../01/images/diagno10.gif)

![](../01/images/diagno11.gif)

![](../01/images/diagno12.gif)

![](../01/images/diagno13.gif)

![](../01/images/diagno14.gif)

![](../01/images/diagno15.gif)

When you graph the data on an SROC plot
- you get a nice distribution
of values. Notice
- however
- that the average of all these
sensitivities and specificities is pushed further away from the upper
left hand corner than any of the individual sensitivity/specificity
pairs.

![](../01/images/diagnostic18.gif)

By fitting a model to the diagnostic odds ratio
- and assessing
heterogeneity in that odds ratio
- you hope to avoid this obvious
underestimate of sensitivity and specificity.

When you fit the regression model
- you are hoping is that the slope
term is zero. That tells you that the estimated intercept is a valid
estimate across the range of S values.

It's unclear whether to use a weighted regression model or an
unweighted regression model for these data.

`fn.adj <- pmax(fn,0.5)   tpr <- tp/(tp+fn.adj)   fpr <- fp/(tn+fp)   d <- logit(tpr)-logit(fpr)   s <- logit(tpr)+logit(fpr)   se.d <- sqrt(1/tp+1/fn.adj+1/tn+1/fp)   w <- 1/se.d^2   unweighted.regression <- lm(d~s)   weighted.regression <- lm(d~s,weights=w)   par(mar=c(5.1,4.1,0.6,0.6))   plot(s,d)   abline(unweighted.regression)   abline(weighted.regression,lty=2)`

For this data set
- it appears that there is a non-zero slope
- which
makes interpretation of the combined diagnostic odds ratio
problematic.

![](../01/images/diagno16.gif)

`deeks5.ma <- metagen(TE=d,seTE=se.d,studlab=study,sm="Log    Diagnostic Odds Ratio")   summary(deeks5.ma)      Number of trials combined: 20       Log Diagnostic Odds<U+FFFD> Ratio<U+FFFD><U+FFFD> 95%-CI<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD>    z<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> p.value   Fixed effects model<U+FFFD> 1.9772 [1.5400; 2.4145] 8.8633 < 0.0001   Random effects model 1.9732 [1.3618; 2.5847] 6.3249 < 0.0001      Quantifying heterogeneity:   tau^2 = 0.6555; H = 1.27 [1; 1.67]; I^2 = 38.4% [0%; 64%]      Test of heterogeneity: <U+FFFD><U+FFFD><U+FFFD> Q d.f. p.value   30.87<U+FFFD> 19<U+FFFD> 0.0418      Method: Inverse variance method `

**Additional reading**

-   **Reporting of measures of accuracy in systematic reviews of
    diagnostic literature.** Honest H
- Khan KS. BMC Health Serv Res
    2002: 2(1); 4.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11884248&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1472-6963/2/4/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1472-6963/2/4)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1472-6963-2-4.pdf)
-   **Conducting systematic reviews of diagnostic studies: didactic
    guidelines.** Deville WL
- Buntinx F
- Bouter LM
- Montori VM
- De Vet
    HC
- Van Der Windt DA
- Bezemer P. BMC Med Res Methodol 2002: 2(1); 9.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12097142&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1471-2288/2/9/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1471-2288/2/9)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2288-2-9.pdf)
-   **Systematic reviews in health care: Systematic reviews of
    evaluations of diagnostic and screening tests.** Deeks JJ. British
    Medical Journal 2001: 323(7305); 157-62.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11463691&dopt=Abstract)
    [\[Full
    text\]](http://bmj.bmjjournals.com/cgi/content/full/323/7305/157)
    [\[PDF\]](http://bmj.bmjjournals.com/cgi/reprint/323/7305/157.pdf)

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/metaanalysis.html
[sim2]: http://www.pmean.com/original_site.html
