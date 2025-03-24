---
title: "Cleaning height and weight measurements"
source: "New"
author: Steve Simon
date: "2025-03-22"
categories: Recommendation
tags:
- R programming
output: html_document
page_update: no
---

![](http://www.pmean.com/new-images/25/cleaning-measurements-01.png "Excerpt from recommended website")

::: notes

The R package growthcleanr will review longitudinal data (including data unevenly spaced over time) on heights and weights for children to find individual observations that do not fit reasonable patterns of growth relative to the other longitudinal measurements. You can also use this package with adult data (up to 65 years of age). This is especially useful for electronic health record data, which can often have stray bad values.

Carrie Daymont, Robert Grundmeier, Jeffrey Miller, Diego Campos. grwothcleanr. Available as a [github repository][ref-daymont-nodate].

Carrie Daymont, Michelle E Ross, A Russell Localio, Alexander G Fiks, Richard C Wasserman, Robert W Grundmeier, Automated identification of implausible values in growth data from pediatric electronic health records, Journal of the American Medical Informatics Association, Volume 24, Issue 6, November 2017, Pages 1080–1087, DOI: [10.1093/jamia/ocx037][ref-daymont-2017]

[ref-daymont-nodate]: https://carriedaymont.github.io/growthcleanr/index.html
[ref-daymont-2017]: https://doi.org/10.1093/jamia/ocx037

:::
