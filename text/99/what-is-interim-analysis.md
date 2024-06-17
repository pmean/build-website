---
title: Interim analysis
source: http://www.pmean.com/99/interim.html
author: Steve Simon
date: 1999-09-13
categories:
- Blog post
tags:
- Being updated
- Early stopping
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, I'm going on a job interview and I know one of
the questions they will ask me is about interim analysis. What should I
tell them? \-- Harried Howard*

Dear Harried, Tell them that you rely on Professor Mean for all your
statistical advice. That will clinch the job for you. What? They've
never heard of Professor Mean? Are you sure you really want to work
there?

**Short answer**

Interim analysis is **analysis of the data at one or more time points
prior to the official close of the study** with the intention of
possibly terminating the study early. There are several things to keep
in mind with an interim analysis.

1.  You might want to continue a trial, even after you have accumulated
    substantial evidence that the new therapy is superior, because you
    need the extra data to accurately characterize side effects.
2.  The details of the interim analysis should always be specified prior
    to data collection.
3.  The level of evidence that you need to stop a study early is higher
    than what is needed at the end of the study.

**More details**

In a study where you expect the new therapy to be better than placebo,
for example, you might want to **stop the study as soon as you have
enough evidence that the new therapy is better**. There are **ethical
reasons** (you want to minimize the number of subjects getting the
placebo) and **economic reasons** (you don't to spend extra money after
enough evidence has been accumulated).

Stopping because the new therapy is better is the most common reason for
interim analysis, though there are others. Sometimes you might want to
end a study early **if a substantial number of patients experience
serious side effects**. Other times, you may want to end a study early
because the evidence clearly shows that **the results at the end of the
trial are likely to be negative**. This approach is sometimes called
futility analysis.

If you want to run one or more interim analyses, you need to realize
that **there is no free lunch**. If you apply the traditional test at
both the middle and the end of the study, you increase the chance of
Type I error (a false positive finding). You can (and should) make
adjustments to prevent this, but then you end up requiring a greater
amount of evidence, both at the middle and at the end of the study.

The two classic approaches to interim analysis are the **Pocock** method
and the **O'Brien-Fleming** method. **Both approaches require equally
spaced intervals**. This means that if two interim and one final
analyses are planned, then the first interim analysis occurs after
exactly one third of the data has been collected and the second interim
analysis occurs after exactly two thirds of the data have been
collected. Recently, a more flexible approach, the alpha spending
function, has been developed for unequally spaced intervals.

**Example**

A standard study would wait until all the data was collected and would
declare the new therapy to be effective if the p-value were less than
.05. Let's assume that we want **two interim and one final analysis**.

The **Pocock** procedure uses the **same cut-off** for both the interim
and final analyses. With two interim and one final analysis, we would
declare the new therapy to be effective **if the p-value is less than
0.022** at any of the analysis times.

The **O'Brien-Fleming** method uses a **very strict cut-off at first**,
then **relaxes this cut-off over time**. At the first interim analysis,
you would conclude that the new therapy is effective **if the p-value is
less than 0.005**. At the second interim analysis, you would **compare
the p-value to 0.014**. At the end of the study, you would **compare the
p-value to 0.045**.

Both approaches pay a penalty at the final analysis, but notice that
**the O'Brien-Fleming method, which has stricter standards earlier, has
much less of a penalty at the planned conclusion of the study**.

**Summary**

Harried Howard wants to make an impression during his job interview by
giving **a simple explanation of what interim analysis (or a group
sequential trial) is**. Professor Mean explains the interim analysis is
a **statistical analysis at one or more time points prior to the
official end of the study with the intention of ending the study early
if there is sufficient evidence of efficacy**. He explains that you have
to pay a price with an interim analysis, by living with a smaller alpha
level at the end of your study. He then characterizes two simple
approaches to interim analysis by Pocock and O'Brien-Fleming.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/interim.html
[sim2]: http://www.pmean.com/original_site.html
