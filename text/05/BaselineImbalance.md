---
title: Testing baseline imbalance in a randomized study
author: Steve Simon
date: 2005-01-19
category:
- Blog post
tags:
- Covariate adjustment
output: html_document
---
Randomization will roughly balance out the covariates between the
treatment group and the control group because of the law of large
numbers. Once in a while, though, an important amount of covariate
imbalance will creep into a randomized study. Just as a flip of 100
coins will not always yield exactly 50 heads and 50 tails, a randomized
study will not always yield perfect covariate imbalance.

When such an imbalance occurs, it is called a chance bias or accidental
bias. It can seriously affect the quality of your analysis.

One reference,

-   **Properties of simple randomization in clinical trials.** Lachin
    JM. Control Clin Trials 1988: 9(4); 312-26.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3203523&dopt=Abstract)

argues that the likelihood of covariate imbalance is small if the total
sample size is 200 or more, while another,

-   **Methodological Contributions to Clinical Research: Random
    Sampling, Randomization, and Equivalence of Contrasted Groups in
    Psychotherapy Outcome Research.** Hsu LM. Journal of Consulting and
    Clinical Psychology 1989: 57(1); 131-137.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=2647799&dopt=Abstract)

argues that a total sample size of 20 provides inadequate protection
against even a single covariate imbalance, while a total sample size of
80 protects even against imbalance across multiple covariates.

It is always good to examine the covariates in a randomized study to
insure that you have reasonable balance. But most statisticians
recommend that you avoid a statistical test of significance for this
situation.

-   **Suspended judgment. Significance tests of covariate imbalance in
    clinical trials.** Begg CB. Control Clin Trials 1990: 11(4); 223-5.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=2171874&dopt=Abstract)
-   **Covariate imbalance and random allocation in clinical trials.**
    Senn SJ. Stat Med 1989: 8(4); 467-75.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=2727470&dopt=Abstract)

One reference,

-   **Baseline imbalance in randomised controlled trials.** Roberts C,
    Torgerson D. British Medical Journal 1999: 319(7203); 185.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10406763&dopt=Abstract)
    [\[Full text\]](http://bmj.com/cgi/content/full/319/7203/185)
    [\[PDF\]](http://bmj.com/cgi/reprint/319/7203/185.pdf)

makes the point that not only should you avoid a hypothesis test, but
that you should also avoid visual inspection of differences between
groups.

> *As the trial size increases the absolute size of imbalance in
> baseline characteristics will reduce owing to reduction in sampling
> error. Hence the absolute magnitude of any chance bias in outcome will
> tend to decrease with sample size. Nevertheless, the possible chance
> bias on a statistical test of an outcome measure does not change with
> sample size,5 so chance bias is as much of a possibility for large
> trials as for small. An imbalance of a given absolute size will have a
> greater effect on the statistical tests for larger sample sizes than
> for small. This means that inspection of the distribution of baseline
> variables between groups is also an inappropriate method on which to
> base the decision to adjust or not adjust a statistical test of a
> trial outcome.*

These authors recommend that you select baseline covariates prior to
data collection and adjust for them in an analysis of covariance model.

The reason to avoid a test of significance for baseline values in a
randomized trial is that such a test addresses only whether there was a
flaw in the randomization process. Perhaps the numbers that you thought
were random really weren\'t so random after all.

A more serious concern is subversion of randomization, where some of the
physicians recruiting patients for the study will try to steer certain
types of patients towards one treatment or away from the other
treatment. They could do this subconciously by applying the inclusion
and exclusion criteria more rigidly for certain types of patients if
they know that a certain treatment will be assigned. They could also
deliberately delay a patient\'s entry into a trial for a day or two so
that a different patient gets the less preferred treatment.

Physicians who deliberately tries to subvert the randomization process
are behaving unethically. They recognize that equipoise is not
applicable for this particular patient, so they should offer the patient
the preferred treatment outside of the randomized trial.

For this reason, the randomization list should be concealed from the
recruiting physicians, so they will not know what treatment is coming up
next. Concealing the randomization list is always possible, even when
the study is not blinded.

-   **Statistics notes: Concealing treatment allocation in randomised
    trials.** Altman DG, Schulz KF. British Medical Journal 2001:
    323(7310); 446-7.
-   **Empirical evidence of bias dimensions of methodological quality
    associated with estimates of treatment effects in controlled
    trials.** Schulz K, Chalmers I, Hayes R, Altman D. JAMA 1995:
    273(5); 408-12.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7823387&dopt=Abstract)
-   **Randomised trials, human nature, and reporting guidelines.**
    Schulz KF. Lancet 1996: 348(9027); 596-8.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8774577&dopt=Abstract)
-   **Bias in treatment assignment in controlled clinical trials.**
    Chalmers TC, Celano P, Sacks HS, Smith H, Jr. N Engl J Med 1983:
    309(22); 1358-61.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=6633598&dopt=Abstract)
-   **Comparing like with like: some historical milestones in the
    evolution of methods to create unbiased comparison groups in
    therapeutic experiments.** Chalmers I. Int J Epidemiol 2001: 30(5);
    1156-64.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11689539&dopt=Abstract)
-   **Amniotomy or oxytocin for induction of labor. Re-analysis of a
    randomized controlled trial.** Keirse MJ. Acta Obstet Gynecol Scand
    1988: 67(8); 731-5.
-   **Subversion of Allocation in a Randomised Controlled Trial.**
    Kennedy A, Grant A. Control Clinical Trials 1997: 18(suppl 3);
    S77-78.
-   **The unpredictability paradox: review of empirical comparisons of
    randomised and non-randomised clinical trials.** Kunz R, Oxman AD.
    British Medical Journal 1998: 317(7167); 1185-1190.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9794851&dopt=Abstract)
    [\[Abstract\]](http://bmj.com/cgi/content/abstract/317/7167/1185)
    [\[Full text\]](http://bmj.com/cgi/content/full/317/7167/1185)
    [\[PDF\]](http://bmj.com/cgi/reprint/317/7167/1185.pdf)
-   **Randomization in the Canadian National Breast Screening Study: a
    review for evidence of subversion.** Bailar JC, 3rd, MacMahon B.
    Cmaj 1997: 156(2); 193-9.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9012720&dopt=Abstract)
    [\[Abstract\]](http://www.cmaj.ca/cgi/content/abstract/156/2/193)
    [\[PDF\]](http://www.cmaj.ca/cgi/reprint/156/2/193.pdf)
-   **Assessing Allocation Concealment and Blinding in Randomised
    Controlled Trials: Why bother?** Schulz K. Evid Based Nurs 2001: 4;
    4 - 6.

So a test of significance is only appropriate if you think there was a
flaw with the randomization process, such as a physician\'s attempt to
subvert the randomization of the study.

You can find an [earlier version](http://www.pmean.com/05/BaselineImbalance.html) of this page on my [original website](http://www.pmean.com/original_site.html).
