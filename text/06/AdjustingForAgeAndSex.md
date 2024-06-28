---
title: Adjusting a variable for age and sex
author: Steve Simon
source: http://www.pmean.com/06/AdjustingForAgeAndSex.html
date: 2006-10-26
categories:
- Blog post
tags:
- Covariate adjustment
output: html_document
page_update: partial
---

Someone asked me how to adjust bone mineral density (BMD) for age and
sex. I presume that BMD changes as children grow (or as adults age) and
that BMD is different for men and women. If you did not adjust for age
and sex, then are statistical comparison that you make between a
treatment group and control group could be biased by a differential in
the sex ratio and/or average age between the two groups.

The best thing is to see if there are any published norms for bone
mineral density. I know that there are norms for other measures that are
age and sex adjusted. Typically these norms will produce z-scores and/or
percentiles. You would then do the analysis on the z-score or percentile
rather than the raw score.

If norms are not available, then you do an internal adjustment. If you
have an obvious control group and an obvious treatment group then
compare the age and gender distribution of the two groups. If the
distributions are identical then there is no need to do any adjustment,
except, perhaps, to add a bit of precision to your model or to produce a
result that is more easily interpretable. If there is a small or
moderate discrepancy, then you can use age and sex as covariates in the
model that compares the control group to the treatment group. If there
is a large discrepancy\--large enough so there is little or no overlap
in the demographics of the two groups, then no adjustment is possible.

There are other approaches\--matching, stratification, and propensity
scores, that also work well if you need to make an internal adjustment.
Just keep in mind that the internal adjustment is never as good as using
a published norm.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/AdjustingForAgeAndSex.html
[sim2]: http://www.pmean.com