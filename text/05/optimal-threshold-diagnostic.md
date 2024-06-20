---
title: Determining the optimal threshold for a diagnostic test
author: Steve Simon
source: http://www.pmean.com/05/OptimalThreshold.html
date: 2005-04-27
categories:
- Blog post
tags:
- Being updated
- Diagnostic tests
output: html_document
page_update: partial
---
**[StATS]: Determining the optimal threshold for a
diagnostic test (April 27, 2005)**

Someone asked me about how to design an experiment that would use the
ROC curve to determine an appropriate threshold for a diagnostic test.

The first thing to consider is how you would collect a sample of
patients. The simplest approach, but the weakest from an evidentiary
viewpoint, is to use a case-control design. A case-control design
selects patients on the basis of an outcome, such patients admitted to
a hospital for jaundice. These are the cases, and then a control group
(non-cases) is selected separately. The control group is similar in
all respects to the cases, except the controls do not have the
outcome.

The problem with a case control approach here is that this design
usually does not allow for the full spectrum of the disease (spectrum
bias). Instead, obvious cases are compared to obvious non-cases. This
type of design is well known to overstate sensitivity and specificity.

A second approach that works better is to select a cross-sectional
sample, and administer the diagnostic test and a gold standard at the
same time to each patient.

A third approach that also works well is to select a cohort of
patients, give all of them the test, and then watch over a period of
time to see which ones develop the outcome that the diagnostic test is
trying to assess.

The ROC curve will help you select an appropriate cut-off for your
test. But first you should ask the question whether a cut-off makes
sense or not. Will clinicians need a Black/White response or will they
tolerate shades of gray? Will they accept a test that provides a
continuum of values or will that be perceived as too complicated or
too messy? If they won't tolerate a continuum, maybe they will still
tolerate a test that has three or four levels rather than two.

Let's assume that the clinicians need a black/white response. A lot
of writing on the ROC curve suggests a rather simple choice: pick the
value where the ROC curve is closest to the upper left hand corner.
This approach is perhaps a bit too simplistic. You need to do a
serious assessment of the cost of a false positive result as well as
the cost of a false negative result. To do this, ask yourself, what is
the next step if the test is positive? if the test is negative? Think
about the consequences if we take either step inappropriately.

A good example of this is an assessment of whether the patient has
vertebral fractures. If the test is positive, you send the patient to
radiology for x-rays. If the test is negative, then you take off the
cervical collar and send the patient home. A false positive means an
unnecessary x-ray. This is not a trivial consideration, but it pales
in the face of sending a patient home with an undetected vertebral
fracture.

Since a false negative is far worse than a false positive, we want to
do the best possible job of ruling out a possible fracture. You want
sensitivity to be very high, even at the expense of specificity.
Recall the acronym SnNOut, that says that if sensitivity is high, a
negative test helps rule out the disease.

Contrast this with a diagnostic test where the next step, if the
patient tests positive, is surgery. I would be very nervous about a
false positive because it represents an unnecessary surgery.

There are ways to select points on the ROC curve that allow for
appropriate tradeoffs between false negatives and false positives, but
they are difficult to describe here. The important thing, though, is
to produce an honest assessment of the costs involved with both types
of errors.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/OptimalThreshold.md
[sim2]: http://www.pmean.com
