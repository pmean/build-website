---
title: The paired availability design
author: Steve Simon
source: http://www.pmean.com/05/PairedAvailability.html
date: 2005-05-31
categories:
- Blog post
tags:
- Being updated
- Observational studies
output: html_document
page_update: partial
---
**[StATS]:** **The paired availability design (May
31, 2005)**

In the quest to finish my book on Statistical Evidence, I had to leave
some material on the cutting room floor. One of the nicer descriptions
was about the paired availability design. Here's what I had written.

If you have a large group of hospitals, each of which has seen a
change over time in the availability of a new therapy, then you can
pool the effects in these hospitals in a way that avoids some of the
biases in a simpler historical controls study. The trick is that your
*before* group were all patients when availability was low,
recognizing that some of these patients will still be lucky enough to
get the new therapy. The *after* group were all patients when
availability was high, again recognizing that some of these patients
will be unlucky and will be stuck with the old therapy. This dilutes
the estimates of effectiveness, but you can adjust directly for this
dilution effect. By comparing all patients when availability was low
to all patients when availability was high, you can avoid some of the
covariate imbalance that occurs due the differing demographic
characteristics of those patients who seek out the new therapy versus
those that stay with the old therapy.

This pooled analysis is known as a paired availability study ([Baker
2001](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11602018&dopt=Abstract)).
You have to assume that the population being studied, the concurrent
treatments being given, and the evaluation of the outcome is stable
over time. You also have to assume that patient preferences do not
change over time. This means that no widely publicized media reports
change the dynamics of patient demand for the new therapy. Finally,
you have to assume that the intervention itself does not become more
or less effective when it becomes more readily available.

**Example**: In a study of breast cancer mortality ([Baker
2004](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15149551&dopt=Abstract)),
deaths due to breast cancer were compared in six counties in Sweden
over a time range when mammography became more readily available.
Adjusting for the limited screening done early and the missed
opportunities for screening later, the researchers estimated that 9
fewer women per 100,000 died when mammography screening was used (95%
CI, 4 to 14 per 100,000).

The other design that I didn't have room to discuss was a patient
preference trial where patients who consent to be randomized are
compared to patients who prefer a particular treatment. I'll try to
describe the patient preference trial and give an example in a future
weblog entry.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/PairedAvailability.html
[sim2]: http://www.pmean.com
