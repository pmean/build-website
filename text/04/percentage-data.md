---
title: Analyzing percentage data
author: Steve Simon
date: 2004-05-24
categories:
- Blog post
tags:
- Unusual data
output: html_document
page_update: partial
---
I received one of those difficult to answer questions: how do I analyze
my data when the outcome variable is a percentage. That depends a lot on
the context of the problem.

The first thing to look at is whether the percentage involves counts of
some type, and if so, do you know the numerator and denominator.
Instead, the percentage might be the ratio of two continuous
measurements.

In a study of medical awareness among pregnant women, you can see that
the percentage is a ratio of counts:

> *BACKGROUND: In the Confidential Enquiry into Maternal Deaths (CEMD)
> Report, the very high risk of mortality in women who refuse blood
> transfusions is highlighted. The objectives were to establish current
> knowledge about, and views of transfusion in our pregnant population
> and to establish the level of compliance with the set audit standard.
> METHOD: Questionnaire survey of 228 women, including both high and low
> risk pregnancies, attending ante-natal clinic between 2-9 May 2000 at
> the North Staffordshire Maternity Hospital, Stoke on Trent. RESULTS:
> The response rate was 100%. Only 43% were aware of the possible need
> for blood transfusion in pregnancy. If a blood transfusion was
> required, 92% stated that they would accept a blood transfusion in
> pregnancy. Four percent stated that they would not accept a
> transfusion because of religious reasons and risk of infection and the
> remaining four percent did not declare a reason. CONCLUSIONS: This
> short survey identified that 57% of women were not aware of the
> possible need for blood transfusion during pregnancy. There is a need
> for more information to be shared on this subject with all antenatal
> women. Women who would refuse a transfusion need to be identified at
> booking and be referred for counselling and a management plan made for
> pregnancy, labour and delivery.*
> [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=12323080)

In a study of flow-mediated dilation and vascular tone, you can see that
the percentage is a ratio of two continuous measurements:

> *Flow-mediated dilation (FMD) measures the ability of an artery to
> relax in response to increases in blood velocity. FMD, primarily of
> the brachial artery, has been used as a noninvasive method of
> assessing vascular health. The purpose of this study was to assess FMD
> in the lower legs of humans. Six healthy subjects (27 PlusMinus; 6
> yrs) were tested. Doppler ultrasound images of the posterior tibial
> artery were taken before, during, and after 5 minutes of proximal cuff
> occlusion. FMD was measured as the percent increase in diameter after
> cuff release. Vascular tone was calculated using the resting diameter
> as a percentage of the vessel's vasoactive range. Minimum diameter
> occurred during ischemia and maximal diameter occurred following
> reactive hyperemia with local heating. The lower leg was heated with
> 10 minutes of immersion in 44 degrees C water. Mean diameters at rest,
> cuff, and during release were 0.267 PlusMinus; 0.062, 0.162 PlusMinus;
> 0.036, 0.302 PlusMinus; 0.058 cm, respectively. FMD was 13.5
> PlusMinus; 6.6 % and vascular tone was 29 PlusMinus; 16.3%. We also
> found that retesting on a second day produced mean diameter values
> within 8% of the first day. Larger resting diameter (decreased tone)
> correlated with decreased FMD (r2 = 0.73). These results suggest that
> FMD and vascular tone can be measured in the posterior tibial artery.
> This is a potentially powerful tool to non-invasively measure vascular
> health in the lower legs of people at risk for vascular disease.*
> [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=12628021)

When your percentage involves counts, then typically a [logistic
regression model](../model/logistic.asp), a [Poisson regression
model](../model/poisson.asp), or some closely related model works well.
When the percentage involves continuous measures, then a [linear
regression model](../model/linear.asp) usually works well, though you
should consider a [log transformation](../model/log.asp) of the data. If
you think the data involves counts, but you can't get the numbers for
the numerator or the denominator, then you are probably forced to use
linear regression.

You can find an [earlier version](http://www.pmean.com/04/percentage.html) of this page on my [original website](http://www.pmean.com/original_site.html).
