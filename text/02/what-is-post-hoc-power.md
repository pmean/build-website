---
title: Post hoc power
author: Steve Simon
date: 2002-11-01
categories:
- Blog post
tags:
- Post hoc power
output: html_document
page_update: partial
---
*Dear Professor Mean, The results of my study were negative, and the
journal reviewer insists that I perform a post hoc power calculation.
How do I do this?<U+00A0> -Jittery Jerry*

Dear Jittery, Post hoc power calculations are very bad. If it's the
only way you can get the paper published, we can do this calculation,
but a confidence interval calculation is far better.

**What the confidence interval tells you**

Compare the width of the confidence interval to the range of clinical
indifference.

When a confidence interval is very narrow then a negative finding is
impressive. You have a large enough sample size to rule out the
possibility of any large and clinically relevant difference. This is
especially true if your confidence interval lies entirely inside a range
of clinical indifference.

A wide confidence interval, on the other hand, is an indication of an
inadequate sample size. This is especially true if your confidence
interval includes vales that might be considered clinically relevant.

**Post hoc power as an update of a priori calculations**

The one approach to post hoc power that is somewhat defensible is an
update of your a priori power calculation. You did do a power
calculation prior to collecting your data, didn't you?

Great! Remember that in that calculation, you used an estimate of
variability from a pilot study or from previous research. Sometimes,
your data has a lot more variability or a lot less variability than you
thought it would. Look at variability of your data and use that rather
than the a priori estimate of variability.

Keep the estimate of the clinically relevant difference the same. This
is very important. Report both the a priori and the post hoc power
calculations.

**Post hoc power using observed effects**

Sometimes people will update both the estimate of variability and the
clinically relevant difference. They mistakenly call the difference
actually observed in the data set the clinically relevant difference and
use that in the power calculation.

This is a serious mistake. Clinical relevance requires clinical
judgment, and the mindless substitution of the value you observed in
your study abandons any intelligent consideration of this issue.

Unfortunately, the problem is worse than this. When you use the
estimated variability and combine it with the observed effects, you get
a value which marches in lock step with the p-value of the study. When
the p-value is small, the post hoc power using observed effects is
large. When the p-value is large, the post hoc power is small.

Thus, the post hoc power becomes a self-fulfilling prophecy. When the
p-value is small enough to reject the null hypothesis, you congratulate
yourself on your intelligence and good planning because the post hoc
power is large. When the p-value is large enough to accept the null
hypothesis, you notice a small post hoc power, and congratulate yourself
on studying an area that merits further research, if only someone would
give you a big fat research grant.

Never will a post hoc power based on observed effects tell you that a
negative finding is truly negative. So its calculation is pretty much
pointless.

**Further reading**

1.  **Negative results of randomized clinical trials published in the
    surgical literature: equivalency or error?** J. B. Dimick, M.
    Diener-West, P. A. Lipsett. Arch Surg 2001: 136(7); 796-800.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11448393&dopt=Abstract)
2.  **Post hoc power analysis--another view.** J. Fogel.
    Pharmacotherapy 2001: 21(9); 1150.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11560206&dopt=Abstract)
    [[Full text]](http://www.medscape.com/viewarticle/409791)
3.  **Post hoc power analysis: an idea whose time has passed?** M.
    Levine, M. H. Ensom. Pharmacotherapy 2001: 21(4); 405-9.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11310512&dopt=Abstract)
    [[Abstract]](http://www.atypon-link.com/PPI/doi/abs/10.1592/phco.21.5.405.34503)
    **(Sample Size, Post Hoc Power)**
4.  **The use of predicted confidence intervals when planning
    experiments and the misuse of power when interpreting results.**
    Steven Goodman. Annals of Internal Medicine 1994: 121(3); 200-206.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8017747&dopt=Abstract)
5.  **Resolving discrepancies among studies: the influence of dose on
    effect size.** I. Hertz-Picciotto, R. R. Neutra. Epidemiology 1994:
    5(2); 156-63.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8172990&dopt=Abstract)
6.  **The Abuse of Power: The Pervasive Fallacy of Power Calculations
    for Data Analysis.** John M. Hoenig, Dennis M. Heisey. The American
    Statistician 2001: 55(1); 19-24.
7.  **The Overemphasis On Power Analysis.** Thomas Knapp. Nursing
    Research 1996: 45(6); 379.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8941316&dopt=Abstract)
8.  **Some Practical Guidelines for Effective Sample Size
    Determination.** R.V. Lenth. The American Statistician 2001: 55(3);
    187-193. [[PDF]](http://www.stat.uiowa.edu/techrep/tr303.pdf)
9.  **Confidence limit analyses should replace power calculations in the
    interpretation of epidemiologic studies.** A. H. Smith, M. N. Bates.
    Epidemiology 1992: 3(5); 449-52.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=1391138&dopt=Abstract)

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/posthoc.html
[sim2]: http://www.pmean.com/original_site.html
