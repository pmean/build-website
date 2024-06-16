---
title: Bonferroni correction
source: http://www.pmean.com/99/bonferroni.html
author: Steve Simon
date: 1999-09-03
categories:
- Blog post
tags:
- Being updated
- Multiple comparisons
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, I keep reading about something called a Bonferroni
correction. Somehow this method keeps researchers from going on a
fishing expedition. Could you explain what a Bonferroni correction is
and why we want to keep scientists from fishing? \-- Judicious John*

> A fishing expedition is when a scientist initiates a large number of
> investigations simultaneously on the same data set. A good conceptual
> example is a study of the effect of a certain environmental chemical
> on cancer. A researcher could look for an association with bladder
> cancer, brain cancer, colon cancer, liver cancer, lung cancer, ovarian
> cancer, prostate cancer, skin cancer, and "that funny little thing
> hanging in the back of your throat" cancer. With so many different
> cancers to look at, the scientist is bound to find something worth
> publishing, even if the chemical is as harmless as table salt. It's
> like placing a single bet at a casino, but getting to spin the
> roulette wheel a couple dozen times.

**Short answer**

> **The Bonferroni correction is a statistical adjustment for the
> multiple comparisons** that are made in a fishing expedition. It
> effectively raises the standard of proof needed when a scientist looks
> at a wide range of hypotheses simultaneously.
>
> The Bonferroni correction is quite simple. **If we are testing n
> outcomes instead of a single outcome, we divide our alpha level by
> n**. Suppose we were looking at the association of sodium chloride and
> 20 different types of cancers. Instead of testing at the tradition .05
> alpha level, we would test at alpha=.05/20=.0025 level. This would
> ensure that the overall chance of making a Type I error is still less
> than .05.
>
> You can also **apply the Bonferroni correction by adjusting the
> p-value**. A Bonferroni adjusted p-value would just be the normal
> p-value multiplied by the number of outcomes being tested. If the
> adjusted p-value ended up greater than 1.0, it would be rounded down
> to 1.0.
>
> Some scientists dislike the use of the Bonferroni correction; they
> prefer instead that researchers clearly label any results from a
> fishing expedition as preliminary and/or exploratory. Furthermore,
> **the Bonferroni correction can cause a substantial loss in the
> precision** of your research findings.

**The global null hypothesis**

> Your general perspective on hypothesis testing is important. One
> perspective that clearly calls for a Bonferroni adjustment is a global
> null hypothesis.
>
> Suppose that you are measuring a large number of outcome variables,
> and you will **conclude that a treatment is effective (or that an
> exposure is dangerous) if you find a statistically significant effect
> on ANY ONE one of your outcome variables**. So a new drug for asthma
> would be considered effective if it
>
> 1.  reduced the number of symptoms as measured by the number of
>     wheezing episodes
> 2.  OR the number of emergency room visits related to asthma OR
> 3.  the number of patients who no longer required steroid treatment OR
> 4.  if the average patient had an improvement in lung capacity as
>     measured by FEV1 OR
> 5.  as measured by the FVC vale OR
> 6.  as measured by the FEV1/FVC ratio OR
> 7.  as measured by the FEF25-75 value OR
> 8.  as measured by the PEFR value OR
> 9.  if the average patient had a better quality of life as measured by
>     the SF-36.
>
> When there is a clear global null hypothesis, then you should use a
> Bonferroni adjustment.
>
> Consider a restrictive hypothesis, a conceptual hypothesis at the
> other extreme. Suppose that you will consider a treatment as effective
> only if it shows a statistically significant improvement in all of
> those outcome variables.
>
> With a restrictive hypothesis, you might be justified in increasing
> your alpha level to .10 or .15 since your criteria for success is so
> stringent.
>
> In truth most studies do not gravitate to either extreme, making it
> difficult for you to decide whether to use the Bonferroni adjustment.

**Designating primary outcome variables**

> When you need to examine many different outcome measures in a single
> research study, you still may be able to keep a narrow focus by
> specifying a small number of your outcome measures as primary
> variables. Typically, a researcher might specify 3-5 variables as
> primary. The fewer primary outcome variables, the better. You would
> then label as secondary those variables not identified as primary
> outcome variables.
>
> When you designate a small number of primary variables, you are making
> an implicit decision. The success or failure of your intervention will
> be judged almost entirely by the primary variables. If you find that
> none of the primary variables are statistically significant, then you
> will conclude that the intervention was not successful. You would
> still discuss any significant findings among your secondary outcome
> variables, but these findings would be considered tentative and would
> require replication.

**Examining post hoc mechanisms**

> When some but not all of your outcome measures reach statistical
> significance, you should examine them for consistency with known
> mechanisms. In a study of male reproductive toxicology, some outcome
> measures are related to hormonal disruptions, others to incomplete
> sperm maturation, and still others to problems with the accessory sex
> glands.
>
> If the significant outcome variables all can be tied to a common
> mechanism, you have greater confidence in the research results. On the
> other hand, if each significant variable requires a different
> mechanistic explanation, you have less confidence. Also, if one
> outcome associated with a certain mechanism is significant and other
> outcomes associated with the same mechanism are not even approaching
> borderline significance, then you have less confidence in your
> findings.

**Other applications of the Bonferroni correction**

> Another area where the Bonferroni correction becomes useful is with
> comparisons across multiple groups of subjects. If you have four
> treatment groups (e.g., A, B, C, and D), then there are six possible
> pairwise comparisons among these groups (A vs B, A vs C, A vs D, B vs
> C, B vs D, C vs D). If you are interested in all possible pairwise
> comparisons, the Bonferroni correction provides a simple way to ensure
> that making these comparisons does not lead to some of the same
> problems as testing multiple outcome measures.
>
> There are other approaches that work more efficiently than Bonferroni.
> Tukey's Honestly Significant Difference is the approach I prefer. But
> you also need to be sure that you are truly interested in ALL possible
> pairwise comparisons.

**Statistical versus practical significance**

> Although all of the emphasis on this page has been on statistical
> significance, you should always evaluate practical significance as
> well. Suppose that among all your outcome measures, none shows an
> effect large enough to have any practical or clinical impact. In such
> a situation, discussion of whether to use a Bonferroni adjustment
> becomes meaningless.

**Loss of power**

> Too many studies have an inadequate sample size, and the Bonferroni
> correction will make this problem even worse. If you apply a
> Bonferroni correction with a data set that is already too small, you
> are implicitly stating that it is important only to control the
> probability of a Type I error (rejecting the null hypothesis when the
> null hypothesis is true), and that you don't care about limiting the
> probability of a Type II error (accepting the null hypothesis when the
> null hypothesis is false).

**Examples**

> In a study of Parkinson's disease ([Kaasinen
> 2001](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11687621&dopt=Abstract)),<U+FFFD>
> a group of 61 unmedicated Parkinson's disease patients and 45 healthy
> controls were compared on 22 separate personality scales. The was
> prior data to suggest that novelty seeking would be lower in patients
> with Parkinson's, so this comparison was made without any Bonferroni
> adjustments. The remaining personality scores, however, had no such
> prior information and a Bonferroni adjustment was used for these
> remaining scales. An additional analysis looked PET scans for a subset
> of 47 Parkinson's patients. The 18F-dopa uptake in 10 regions of the
> brain were correlated with the 22 personality traits. The correlations
> involving novelty seeking were not adjusted, but the remaining
> correlations were adjusted to account for the fact that 220 (10x22)
> correlations were being analyzed. A significant correlation was
> observed between harm avoidance and 18F-dopa uptake in the right
> caudate nucleus (r=0.53, corrected P = 0.04). Interestingly, there was
> not a statistically significant correlation in the left caudate
> nucleus (r=0.43, corrected P=0.88) even though the uncorrected p-value
> was less than 0.01.
>
> In a study of intraoperative hypothermia ([Janicki
> 2002](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12441007&dopt=Abstract)),
> 12 patients were randomized to a forced air warming system and 12 to a
> newly developed whole body water garment. The primary outcome, body
> core temperature, was measured at five times during the operation
> (incision; 1 hr after incision; placement of liver graft into the
> recipient; reperfusion; and closing) and at three times after the
> operation (T=0, 1, or 2 hours in the ICU). The comparisons were
> adjusted by dividing the alpha level by 5 (for the intraoperative
> measures) or by 3 (for the postoperative measures). It would have been
> possible to perform a single Bonferroni correction across all eight
> measures; perhaps the authors felt that intraoperative and
> postoperative measurement represented distinct and separate
> comparisons.

**Summary**

> A Bonferroni adjustment is used when there are multiple outcome
> measures, and there is concern about the possibility that the results
> might be perceived as being a fishing expedition. The Bonferroni
> comparison using an adjusted alpha level equal to the original alpha
> level (usually .05) divided by the number of outcome measures.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/bonferroni.html
[sim2]: http://www.pmean.com/original_site.html
