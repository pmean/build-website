---
title: Retrospective chart reviews and IRB approval
author: Steve Simon
date: 2004-07-21
categories:
- Blog post
tags:
- Privacy in research
output: html_document
page_update: partial
---
Someone stopped by today with a question about getting IRB approval for
a retrospective chart review. They were interested in examining the
efficacy of a certain drug that was recommended as part of a clinical
pathway. They would measure efficacy by looking at whether the lab
results (if there were any) showed that the organisms being cultured
were indeed susceptible (not resistant) to this drug. If lab results
were not available, then they would make an assessment of efficacy based
on information in the medical record like length of stay in the
hospital.

The first question you might ask is why is IRB approval needed. The role
of the IRB is to

-   manage the risks that research subjects endure,
-   insure that these risks are fully disclosed, and
-   balance these risks against the benefits of the research.

There is no intervention here, because the only way you can intervene in
a retrospective study is if you own a time machine. So no intervention
equals no risk, right?

Unfortunately, a single dimension of risk remains in a retrospective
chart review, a confidentiality risk. This is not a trivial risk either.
Some research subjects have lost insurance coverage or been fired from a
job when information about their illnesses fell into the wrong hands.
There's also a risk of personal embarrassment if certain medical
conditions become public knowledge. The recently passed [HIPAA
regulations](http://www.hhs.gov/ocr/hipaa/) offer very harsh penalties
to medical professionals who divulge private health information.

So you do need to get IRB approval in most cases. Often the study will
be exempt, but the IRB will have to make that determination, not you.
The one exception would be the use of publicly available records.

I do not serve on an IRB, but I suspect that the IRB will look for three
things when reviewing a proposal for retrospective chart reviews:
confidentiality assurances, scientific merit, and justification for your
sample size.

**Confidentiality assurances**. To what extent can you reassure the IRB
that you will not allow the data to fall into the wrong hands? First,
show that you will extract only the data that is needed for the study.
If this data is limited to information that is not of a sensitive
nature, and if the data in any single record could not be traced back to
an individual name, all the better. Keep in mind that certain
combinations of categories can uniquely identify an individual. I have
been told that if you know both the birth date of a person and the five
digit zip code of their home address, that will often uniquely identify
a person. Even though there are thousands of persons with the same
birthdate and thousands with the same zip code, the intersection of
these two groups is often very small.

If your data is sensitive (such as diagnosis of sexually transmitted
diseases) and/or you need some personal identifiers, then you have to
offer greater levels of assurance of confidentiality. Storing the
personal identifiers in a separate location offers greater
confidentiality. Destroying any data that links records to personally
identified data at the earliest opportunity also helps. Rather than
keeping your data on a floppy disk, require that it be stored on a
network folder, which requires password access. Keeping part or all of
the data within your institution provides further assurance.

**Scientific merit**. Some of your patients will not relish the idea
that someone is rummaging around in their medical records, so don't do
this unless you have a good scientific reason. This retrospective chart
review has to provide meaningful information that can help guide your
clinical practice or that can help you better plan a prospective
intervention.

The very nature of a retrospective chart review will limit the
scientific merit of your study. Retrospective studies, for example, can
almost never use randomization (see my comments on [temporality of
causes](temporality.html) for one notable exception). These studies also
cannot be blinded and will often have incomplete information.

Acknowledge the weaknesses of retrospective reviews openly. You don't
want to leave the impression that you are naive. But do stress that even
with these limitations, the information will be valuable.

**Justification for your sample size**. Often, a retrospective chart
review will not have a formal hypothesis. The goal instead is to
characterize a group of patients in your practice. For example, in a
study of shaken baby syndrome, 364 cases were identified in 11 tertiary
care hospitals in Canada. The study noted that

> *The median age of subjects was 4.6 months (range 7 days to 58
> months), and 56% were boys. Presenting complaints for the 364 children
> identified as having shaken baby syndrome were nonspecific
> (seizure-like episode \[45%\], decreased level of consciousness
> \[43%\] and respiratory difficulty \[34%\]), though bruising was noted
> on examination in 46%. A history and/or clinical evidence of previous
> maltreatment was noted in 220 children (60%), and 80 families (22%)
> had had previous involvement with child welfare authorities. As a
> direct result of the shaking, 69 children died (19%) and, of those who
> survived, 162 (55%) had ongoing neurological injury and 192 (65%) had
> visual impairment. Only 65 (22%) of those who survived were considered
> to show no signs of health or developmental impairment at the time of
> discharge.*
> [www.cmaj.ca/cgi/content/full/168/2/155](http://www.cmaj.ca/cgi/content/full/168/2/155)

How do you justify the sample size in study like this? You can't
perform a power calculation because this requires a formal hypothesis.
What you can do instead is to show that the various estimates in your
study have reasonable precision.

For example, using the
[SingleProportionCI.xls](../00files/ConfidenceIntervalForSingleProportion.xls)
spreadsheet, you can show that the 95% confidence interval for a
proportion will have a width of no more than plus or minus 5%. You have
to know that the "worst case" scenario for these confidence intervals
is when the estimated proportion is 50%. For smaller or larger
proportions the confidence interval will be a bit narrower. For example,
if the proportion were actually around 80% then the width of the
interval would be plus or minus 4% (that is, 76% to 84%).

Retrospective reviews do differ in one important way from a prospective
intervention. For prospective interventions, you have to worry about
recruiting too many patients, because that will increase the number of
patients who will be exposed to the pains and risks of the intervention
and it will increase the number who have to endure the inferior
treatment. You don't know which of the treatments will end up being
inferior, but you want to wrap up the study as soon as you can so that
everyone after that can have the benefit of the therapy which ends up
working better.

In contrast, it's hard to imagine a retrospective study being too
large. The confidentiality risk does not increase with sample size,
since a data file with 20,000 patients is stored just as securely as a
data file with 200 patients. If your budget allows it, there is no
ethical constraint on including thousands or tens of thousands of
records in your study.

The only ethical problem occurs when your sample size is so small as to
produce a confidence interval that is so wide as to be essentially
non-informative. The example, I always cite is that of a doctor who runs
a ten thousand dollar battery of tests on a patient to give him an idea
of his prognosis. After all the test, the doctor announces "*we're 95%
confident that your probability of surviving this operation is somewhere
between 3% and 98%.*"

**Further reading**

-   [Stats: Sample size for a confidence interval
    calculation](../size/confid.asp)
-   [Stats: Getting IRB approval for your research](../plan/irb.asp)

You can find an [earlier version](http://www.pmean.com/04/retrospective.html) of this page on my [original website](http://www.pmean.com/original_site.html).
