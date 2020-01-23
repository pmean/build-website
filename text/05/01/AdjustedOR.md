---
title: Adjusted odds ratios
author: Steve Simon
source: http://www.pmean.com/05/AdjustedOR.html
date: 2005-01-20
category: Blog post
tags: Covariate adjustment
output: html_document
---
**[StATS]:** **Adjusted odds ratios (January 20,
2005)**.

Someone asked me today how to compute an adjusted odds ratio. He has a
case control study where cases represent cancer patients. He also has
various [Single Nucleotide
Polymorphisms](http://en.wikipedia.org/wiki/Single_nucleotide_polymorphism)
(SNPs). These would be coded as 0-1 depending on whether the SNP was
present or absent. He also has demographic information, such as age,
sex, smoking status, and so forth.

To compute an adjusted odds ratio, simply fit a logistic regression
model. The outcome variable is the 0-1 variable which represents case or
control status. The independent variables include a particular SNP
variable, as well as all the demographic variable. The odds ratio that
you get for the SNP variable shows the effect of that SNP on cancer
status, after adjusting for all the demographic variables.

Make sure you have enough data before you do these adjustments. The rule
of thumb is that you need 10 to 15 observations per outcome (here,
either the number of cases or the number of controls, whichever is
smaller). So if you have 60 cases and 120 controls, then you can fit a
logistic model with about 4 to 6 independent variables.

For further details and a simple example, check out

-   [Stats: Guidelines for logistic regression
    models](../model/logistic.asp)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Covariate
adjustment](../category/CovariateAdjustment.html).
<!---More--->
adjustment](../category/CovariateAdjustment.html).
for pages similar to this one at [Category: Covariate
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Adjusted odds ratios (January 20,
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Covariate
adjustment](../category/CovariateAdjustment.html).
--->

