---
title: Using APR-DRGs for risk adjustment
author: Steve Simon
source: http://www.pmean.com/06/APRDRGs.html
date: 2006-05-24
categories:
- Blog post
tags:
- Covariate adjustment
output: html_document
page_update: partial
---

The 3M company, famous for Post-It notes, among other things, has a
division for health information systems. One of their products is
software that produces classifications called "All patient Refined
Diagnosis Related Groups" or APR-DRGs. These APR-DRGs are computed from
information typically collected as part of the billing process. Patients
in a common APR-DRG represent a reasonably homogenous set of patients
with respect to type of condition and severity of disease.

This product has both financial and research applications. In the
research realm, you might want to define a narrow group of patients with
a reasonably homogenous risk profile. This would allow you to use
stratification or matching on the APR-DRG so as to improve the precision
of the findings.

You might also have an observational study where you know that there are
some imbalances with respect to prognostic factors. You could use the
APR-DRG as a covariate to insure that any differences in risk are
adjusted for in the analysis.

There is an increasing demand for "report cards" for physicians and
hospitals that will allow patients to make informed decisions about
where they get their health care from. These report cards need careful
adjustment for risk levels, because there is a well established tendency
for the better individuals and groups to get referrals for the more
complex and difficult patients. If you don't perform an appropriate
risk adjustment, you end up seeing the worst outcomes among the very
best groups and individuals.

I hesitate to recommend commercial products, because most researchers
are starving for funding, but this product looks pretty good. I had to
use it for a research study a while back, and may end up using it again.

The 3M Health Information System group has a web page at

-   [www.3mhis.com](http://www.3mhis.com)

and the description of the APR-DRG system is at

-   [www.3m.com/us/healthcare/his/products/coding/refined\_drg.jhtml](http://www.3m.com/us/healthcare/his/products/coding/refined_drg.jhtml)

Here's an example of a publication that examines APR-DRGs and shows
that this grouping can account for about 16% of the variation in length
of stay.

-   [www.pubmedcentral.gov/articlerender.fcgi?tool=pubmed&pubmedid=8885854](http://www.pubmedcentral.gov/articlerender.fcgi?tool=pubmed&pubmedid=8885854)

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/APRDRGs.html
[sim2]: http://www.pmean.com