---
title: Sample size for a survival data model
author: Steve Simon
date: 2004-05-13
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: partial
---
I got an email from Japan recently with an interesting question. By the
way, one of the fun things about my web pages is that I get emails from
all over the world. I can only offer a bit of help by email, and it
can't really replace a face-to-face meeting. Still, I'm glad to spend
a few minutes trying discussing general principles and offering a
reference or two. People are very grateful for the time, and I've had
an offer for free room and board should I ever visit Rome. I also am
getting a copy of Opera News on CD in thanks for a bit of advice I
provided. **\[Conflict of interest alert: should I ever publish any
research on opera, I will have to disclose this non-monetary
compensation.\]**

The question was about an analysis of mortality for children under 5
years of age. There were 1992 patients and 272 of them died. I was asked
if this was an adequate sample size and whether there was a problem
because the median survival time was unavailable for some of the
subgroups.

The issue of median survival times is an easy one to discuss. A group
lacks a median survival time if the survival curve never dips below 50%.
So lack of a median is actually good news for that particular subgroup.
You can still have a lot of precision in a survival model even when you
cannot compute the median survival for some or all groups.

Sample size is a tricky problem, and it is especially tricky for
survival data models. As a rough rule, it is the number of deaths rather
than the number of patients being studied that is most important. But
patients who do not die will still contribute to precision, up to the
point at which they drop out of the study. The words "drop out" imply
that the person left the study, but it could also be someone who
switches to a different therapy that makes them ineligible for
continuing follow-up. Early dropouts are of very little use, then, and a
patient who drops out before the first death contributes absolutely
nothing to the precision of the findings. Patients who stay in the study
for a long time are very valuable.

A formal power calculation would have to look at how many patients start
the study at the very beginning, the rate at which additional patients
join during the study (accrual rate), the rate at which patients drop
out of the study (attrition rate), and the rate at which they die
(mortality rate). You can make some simplifying assumptions, but
generally, power calculations for a survival data model are a mess. Here
are some references.

1.  **Sample size calculations for the log rank test: a Gompertz model
    approach.** A. B. Cantor. J Clin Epidemiol 1992: 45(10); 1131-6.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=1474409&dopt=Abstract)
2.  **Planning the size and duration of a clinical trial studying the
    time to some critical event.** S. L. George, M. M. Desu. J Chronic
    Dis 1974: 27(1); 15-24.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=4592596&dopt=Abstract)
3.  **A simple method of sample size calculation for unequal-sample-size
    designs that use the logrank or t-test.** F. Y. Hsieh. Stat Med
    1987: 6(5); 577-81.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3659667&dopt=Abstract)
4.  **Sample-size calculations for the Cox proportional hazards
    regression model with nonbinary covariates.** F. Y. Hsieh, P. W.
    Lavori. Control Clin Trials 2000: 21(6); 552-60.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11146149&dopt=Abstract)
5.  **Sample Sizes Based on the Log-Rank Statistic in Complex Clinical
    Trials.** Edward Lakatos. Biometrics 1988: 44(1); 229-241.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3358991&dopt=Abstract)
6.  **Design and Analysis of Multiarm Clincial Trials with Survival
    Endpoints.** Ping-Yu Lin, Steve Dahlberg. Controlled Clinical Trials
    1995: 16(2); 119-130.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7789135&dopt=Abstract)
7.  **Sample size determination under an exponential model in the
    presence of a confounder and type I censoring.** K. J. Lui. Control
    Clin Trials 1992: 13(6); 446-58.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=1334817&dopt=Abstract)
8.  **Sample size requirements for comparing time-to-failure among k
    treatment groups.** R. W. Makuch, R. M. Simon. J Chronic Dis 1982:
    35(11); 861-7.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7142364&dopt=Abstract)
9.  **Sample size calculation for complex clinical trials with survival
    endpoints.** J. H. Shih. Control Clin Trials 1995: 16(6); 395-407.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8720017&dopt=Abstract)

You could also use the rule of 50 as a rough guide to whether the sample
size is adequate. It's a concept that I first learned about from the
Statistical Rules of Thumb web site <http://www.vanbelle.org/>.

Unfortunately, I can't find the details of the rule of 50 anymore. The
derivation is quite simple, and I have all the details at

-   [Stats: Quick sample size calculations (October
    11, 2001)](../size/quick.asp)

Would the rule of fifty apply to survival data? I think so, but I would
have to do the math.

Another rule to consider is that you want to have 10 to 15 observations
per independent variable. There's a couple of provisos to this
statement. For survival analysis or logistic regression it is probably
10 to 15 events (deaths). Also it is not the number of independent
variables in your final model, but the number that you examined along
the way to the final model.

This rule of 10 to 15 observations per variable is widely quoted, but as
far as I can tell, there is only one study which validated the rule.
Frank Harell showed that stepwise logistic regression provides unstable
and poorly reproduced findings when the number of independent variables
is more than 10% of the number of outcomes.

**Regression modeling strategies for improved prognostic prediction.**
Frank E. Harrell. Statistics in Medicine 1984: 3143-152.

You can find an [earlier version](http://www.pmean.com/04/survival.html) of this page on my [original website](http://www.pmean.com/original_site.html).

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/04/survival.html
[sim2]: http://www.pmean.com
