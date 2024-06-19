---
title: Testing baseline imbalance in a randomized study
author: Steve Simon
date: 2005-01-19
categories:
- Blog post
tags:
- Covariate adjustment
output: html_document
page_update: partial
---

Randomization will roughly balance out the covariates between the treatment group and the control group because of the law of large numbers. Once in a while, though, an important amount of covariate imbalance will creep into a randomized study. Just as a flip of 100 coins will not always yield exactly 50 heads and 50 tails, a randomized study will not always yield perfect covariate imbalance.

<!--more-->

When such an imbalance occurs, it is called a chance bias or accidental bias. It can seriously affect the quality of your analysis.

One reference,

- Lachin JM. Properties of simple randomization in clinical trials. Control Clin Trials 1988: 9(4); 312-26. Article is [behind a paywall][lac1].

[lac1]: https://www.sciencedirect.com/science/article/abs/pii/0197245688900463

argues that the likelihood of covariate imbalance is small if the total sample size is 200 or more, while another,

- Hsu LM. Methodological Contributions to Clinical Research: Random Sampling, Randomization, and Equivalence of Contrasted Groups in Psychotherapy Outcome Research. Journal of Consulting and Clinical Psychology 1989: 57(1); 131-137. Article is [behind a paywall][hsu1].

[hsu1]: https://psycnet.apa.org/record/1989-26784-001

argues that a total sample size of 20 provides inadequate protection against even a single covariate imbalance, while a total sample size of 80 protects even against imbalance across multiple covariates.

It is always good to examine the covariates in a randomized study to insure that you have reasonable balance. But most statisticians recommend that you avoid a statistical test of significance for this situation.

- Begg CB. Suspended judgment. Significance tests of covariate imbalance in clinical trials. Control Clin Trials 1990: 11(4); 223-5. Article is [behind a paywall][beg1].

[beg1]: https://www.sciencedirect.com/science/article/abs/pii/0197245690900373

- Senn SJ. Covariate imbalance and random allocation in clinical trials. Stat Med 1989: 8(4); 467-75. Article is [behind a paywall][sen1].

[sen1]: https://onlinelibrary.wiley.com/doi/10.1002/sim.4780080410

One reference,

- Roberts C, Torgerson D. Baseline imbalance in randomised controlled trials. British Medical Journal 1999: 319(7203); 185. Available in [html format][rob1] or [pdf format][rob2].

[rob1]: http://bmj.com/cgi/content/full/319/7203/185
[rob2]: http://bmj.com/cgi/reprint/319/7203/185.pdf

makes the point that not only should you avoid a hypothesis test, but that you should also avoid visual inspection of differences between groups.

+ "As the trial size increases the absolute size of imbalance in baseline characteristics will reduce owing to reduction in sampling error. Hence the absolute magnitude of any chance bias in outcome will tend to decrease with sample size. Nevertheless, the possible chance bias on a statistical test of an outcome measure does not change with sample size, so chance bias is as much of a possibility for large trials as for small. An imbalance of a given absolute size will have a greater effect on the statistical tests for larger sample sizes than for small. This means that inspection of the distribution of baseline variables between groups is also an inappropriate method on which to base the decision to adjust or not adjust a statistical test of a trial outcome."

These authors recommend that you select baseline covariates prior to data collection and adjust for them in an analysis of covariance model.

The reason to avoid a test of significance for baseline values in a randomized trial is that such a test addresses only whether there was a flaw in the randomization process. Perhaps the numbers that you thought were random really weren't so random after all.

A more serious concern is subversion of randomization, where some of the physicians recruiting patients for the study will try to steer certain types of patients towards one treatment or away from the other treatment. They could do this subconciously by applying the inclusion and exclusion criteria more rigidly for certain types of patients if they know that a certain treatment will be assigned. They could also deliberately delay a patient's entry into a trial for a day or two so that a different patient gets the less preferred treatment.

Physicians who deliberately tries to subvert the randomization process are behaving unethically. They recognize that equipoise is not applicable for this particular patient, so they should offer the patient the preferred treatment outside of the randomized trial.

For this reason, the randomization list should be concealed from the recruiting physicians, so they will not know what treatment is coming up next. Concealing the randomization list is always possible, even when the study is not blinded.

- Altman DG, Schulz KF. Statistics notes: Concealing treatment allocation in randomised trials. British Medical Journal 2001: 323(7310); 446-7.
- Schulz K, Chalmers I, Hayes R, Altman D. Empirical evidence of bias dimensions of methodological quality associated with estimates of treatment effects in controlled trials. JAMA 1995: 273(5); 408-12. Article is [behind a paywall][sch1].

[sch1]: https://jamanetwork.com/journals/jama/article-abstract/386770

- Schulz KF. Randomised trials, human nature, and reporting guidelines. Lancet 1996: 348(9027); 596-8. Article is [behind a paywall][sch2].

[sch2]: https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(96)01201-9/fulltext

- Chalmers TC, Celano P, Sacks HS, Smith H, Jr. Bias in treatment assignment in controlled clinical trials. N Engl J Med 1983: 309(22); 1358-61. Artilce is [behind a paywall][cha1].

[cha1]: https://www.nejm.org/doi/10.1056/NEJM198312013092204

- Chalmers I. Comparing like with like: some historical milestones in the evolution of methods to create unbiased comparison groups in therapeutic experiments. Int J Epidemiol 2001: 30(5); 1156-64. Available in [pdf format][cha2].

[cha2]: https://academic.oup.com/ije/article/30/5/1156/724200

- Keirse MJ. Amniotomy or oxytocin for induction of labor. Re-analysis of a randomized controlled trial. Acta Obstet Gynecol Scand 1988: 67(8); 731-5.

- Kennedy A, Grant A. Subversion of Allocation in a Randomised Controlled Trial. Control Clinical Trials 1997: 18(suppl 3); S77-78.

- Kunz R, Oxman AD. The unpredictability paradox: review of empirical comparisons of randomised and non-randomised clinical trials. British Medical Journal 1998: 317(7167); 1185-1190. Available in [html format][kun1] or [pdf format][kun2].

[kun1]: http://bmj.com/cgi/content/full/317/7167/1185
[kun2]: http://bmj.com/cgi/reprint/317/7167/1185.pdf

- Bailar JC, 3rd, MacMahon B. Randomization in the Canadian National Breast Screening Study: a review for evidence of subversion. Cmaj 1997: 156(2); 193-9. Available in [pdf format][bai1].

[bai1]: http://www.cmaj.ca/cgi/reprint/156/2/193.pdf

- Schulz K. Assessing Allocation Concealment and Blinding in Randomised Controlled Trials: Why bother? Evid Based Nurs 2001: 4; 4-6.

So a test of significance is only appropriate if you think there was a flaw with the randomization process, such as a physician's attempt to subvert the randomization of the study.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/BaselineImbalance.html
[sim2]: http://www.pmean.com/original_site.html
