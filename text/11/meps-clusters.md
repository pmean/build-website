---
title: I can't get SAS to model the cluster effects in the MEPS data set
author: Steve Simon
date: 2011-09-02
categories:
- Blog post
tags:
- Complex surveys
output: html_document
page_update: complete
---

### Dear Professor Mean,

I'm trying to use SAS to analyze data from the Medical Expenditure Panel Survey (MEPS) but when I try to model the cluster effect using proc glimmix, I get an error message. What am I doing wrong?

<!---More--->

### Dear reader,

MEPS is a complicated data set that uses stratification, clustering, multiple stages of selection, and disproportionate sampling. Furthermore, the MEPS sampling weights reflect adjustments for survey nonresponse and adjustments to population control totals from the Current Population Survey, as noted [here][mep1].

While proc glimmix does work for clustering, it doesn't take all the other factors into consideration. I pretty sure that glimmix, even with weights, won't produce meaningful results. The SAS examples at the website noted above all use proc surveymeans. You can also use SUDAAN (which was built with this type of survey in mind), Stata (with the svy commands), or SPSS (only with the complex survey add-on).

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/meps.html
[sim2]: http://www.pmean.com/original_site.html 

[mep1]: http://www.meps.ahrq.gov/mepsweb/survey_comp/standard_errors.jsp