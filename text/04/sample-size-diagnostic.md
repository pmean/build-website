---
title: Sample size for a diagnostic test
author: Steve Simon
date: 2004-07-05
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: partial
---
Someone asked me how to determine the sample size for a study involving
a diagnostic test. It seems like a tricky thing, because most studies of
diagnostic tests don't have a formal hypothesis. What you need to do
instead is to specify a particular statistic that you are interested in
estimating and then selecting a sample size so that the confidence
interval for this estimate is reasonably precise.

For example, suppose you want to estimate the
[sensitivity](www.childrensmercy.org/definitions/sensitivity.htm) (Sn)
and [specificity](www.childrensmercy.org/definitions/specificity.htm)
(Sp) of a diagnostic test. Your best guess is that sensitivity will be
at least 75% and specificity will be at least 90%. The formula for a
confidence interval for Sn or Sp would be

![diagnostic00.gif not found.](http://www.pmean.com/new-images/04/SampleSizeDiagnostic01.png)

where n~a~ and n~n~ are the number of abnormal (diseased) and normal
(healthy) patients in the study.

A sample of size 50 abnormal and 50 normal patients would give a95%
confidence interval of plus/minus 0.12 for Sn and plus/minus 0.083 for
Sp. This seems like a reasonable amount of precision. A sample of size
75 in each group would provide slightly narrower confidence intervals
(plus/minus 0.098 and plus/minus 0.068 respectively). Your choice of the
sample size depends in large part on the number of patients you can
recruit from and also a balance between maximizing precision and
minimizing the amount of time you spend on this project.

Suppose instead that you wanted to estimate the area under the curve
(AUC) for a [Received Operating Characteristic Curve](../ask/roc.asp)
(ROC curve). The formula for a standard error here is a bit messier. The
web page

<http://www.anaesthetist.com/mnm/stats/roc/>

offers a JAVAScript calculator for the standard error of the AUC. Let's
suppose that the AUC is going to be around 0.8. With the same 50
abnormal and normal patients, the standard error would be 0.044, which
is reasonably small. With 75 in each group, the standard error would be
0.036.

I have a whole section on my web for [determining the appropriate sample
size](../category/SampleSizeJustification.html), including a page on
[sample size for a diagnostic tests](../size/diag.asp), which I have
just updated to include the above example.

You can find an [earlier version](http://www.pmean.com/04/SampleSizeDiagnostic.html) of this page on my [original website](http://www.pmean.com/original_site.html).
