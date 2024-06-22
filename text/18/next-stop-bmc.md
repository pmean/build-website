---
title: "Next stop
- BMC Medical Informatics and Decision Making"
author: "Steve Simon"
source: "http://blog.pmean.com/next-stop-bmc/"
date: "2018-03-27"
categories:
- Blog post
tags:
- Informatics
- Professional details
output: html_document
page_update: partial
---

I'm working part-time on a research grant and I want to publish some of
the work I've done on this grant. The title of the paper tentatively is
"Validating elastic net generated electronic health record breast cancer
phenotypes against hospital tumor registries: a case control study." My
co-authors are Dan Connolly and Russ Waitman. I want to summarize the
history of the effort so far and why I am considering the BMC Medical
Informatics and Decision Making as the next place to submit the
article.

<!---More--->

I started this work back in February 2016
- and was only able to work on
this part-time. I got some results that looked publishable by September
2016. Based on the recommendation of my Russ Waitman
- I [submitted
this](../skin-of-my-teeth/index.html) for the AMIA 2017 Joint Summit on
Translational Research. AMIA stands for the American Medical Informatics
Association.<U+FFFD> I was all for this. I'd get to see what others were doing
in the work of Informatics
- get some feedback about my work
- and best of
all get to say hello to all the sea lions at Pier 39 in San Francisco.
You had to submit pretty much a complete research paper for
consideration.

This paper didn't make the cut
- but I got some nice feedback. Some of
the feedback won't make sense unless you have the paper in front of you,
but i wanted to include it here anyway.

1: This paper develops a predictive regression model to determine if a
patient has breast cancer based on structured data in the electronic
health record. Training and test sets are membership in the breast
cancer registry.

The paper is a promising approach to selecting patients with a disease
with high confidence. However
- the argument that this approach can be
used for clinical trial recruiting is rather weak. Most clinical trials
include many complex criteria
- many of which are not included at all in
structured data. For the paper to discuss clinical trial recruitment,
this complexity would need to be dealt with. Furthermore
- a real trial
from ClinicalTrials.gov would be essential as a use case. This reviewer
suggests focusing the paper only on disease determination
- which is
still an important topic.

The format of this paper is incorrect
- no abstract is included
- and
references are lacking.

Additional comments -

\* The details of building the consensus model (i.e. run the regression
on control and test sets and then remove the indicators from the control
sets) should be included in the methods instead of the discussion.

\* Please include more technical details in addition to the statistical
models (e.g.
- details of the data model and platform used).

\* Table 1 -- this table seems unnecessary. There are only two
exclusions and the paper only discusses the breast cancer cohort. Also,
"belong to second group" is never defined.

\* Table 2 -- some examples of the metadata are helpful
- but table 3
covers this well. This table also seems unnecessary. It is interesting
that note titles are included in this table as example -were these
included as input to the regression model?

Table 3 -- The contents of this table is good but the formatting could
use some work to highlight that these are elements in an ascending tree
hierarchy. Also
- the font should be smaller.

\* Why does "malignant neoplasm of upper outer quadrant of female
breast" have an odds ratio of only 1.06? P

\* Please include a figure with ROC curves. Including all of the
consensus models including the final one would be very helpful. Also
- a
comparison with the hand constructed model would be very helpful to
motivate the informatics work in this paper. E.g.
- what is gained from
using a regression model on all data in the warehouse verses only (for
example) "malignant neoplasm of breast".

\* "HER"-\> EHR

\* Erroneous "I" at end

2: The research describes an approach to matching patients to clinical
trials using EHR data. Clinical trial recruitment is an important
problem
- especially as eligibility criteria become more specific. The
authors describe an approach that creates a model using elastic net
regression to predict which patients are likely to be enrolled in a
clinical trial.

The methods section describes how models were built to predict which
patients would be in a breast cancer tumor registry. The authors are
using the registry as a proxy for which patients should be enrolled in
the trial. But this seems like a poor indicator of who is eligible. The
authors need to do a better job of defending the use of the registry.
Why wouldn't you just us a rules-based approach that compared the EHR
data to the eligibility criteria for the clinical trial? Are the
patients in the tumor registry only participating in one clinical trial?
Maybe you could show that elastic net models are easier to build and
just as predictive of a rules based model to justify your approach.

The description of how each of the consensus models was built was
detailed
- but you need to include some description of how all the models
eventually come together to predict likelihood of inclusion in a trial.
The last paragraph of the methods section should be part of the
discussion section.

In the discussion section
- you state "The size and complexity of the
EHR
- however
- makes it difficult for human review". But it is easy for a
computer to do the matching
- so
- again
- this is where you need to
justify why a rules based approach to matching patients to clinical
trials won't work.

You also state that "A physician who has to rely on memory to identify
patients is likely to identify patients who are "memorable."" This is
not supported in your methods or results section. I think you just want
to discuss how an algorithmic approach is potentially unbiased.

The paragraph that starts "There are two important extensions of this
work." describes exactly the approach that I believe your research
should really take. At the very least
- you have to do a better job of
showing how your elastic net model approach is a step in that direction.

I think this research is very timely and useful and I would encourage
you to address these issues to improve this paper.

3: The authors discuss an analysis that utilizes ICD9/ICD10 from their
clinical data warehouse to predict whether a patient would eventually be
diagnosed with breast cancer (and reported in the SEER registry). Codes
were categorized into different events (e.g.
- diagnosis
- medication,
etc)
- and the presence/absence of a code was used to train a elastic
regression model. While the authors provide an organized
- systematic
presentation of how their model was developed
- the overall premise for
the model
- and the model performance are not clearly described. At the
outset
- the authors frame the problem of recruiting patients to clinical
trials. However
- the link between the question being answered by the
model (predicting patients who would have breast cancer) and clinical
trial recruitment is not explicit and could be made clearer. The authors
also do not cite the large body of work in this area. In the evaluation,
the authors should consider performing a cross validation study.
Additional metrics about the model performance (e.g.
- true positive
rate/false positive rate for each predicted class) would be helpful when
interpreting the AUC value (e.g.
- does a class imbalance in the data
exist?). Please also note for future reference that the AMIA template
should be used for the submission and that the submission is missing an
abstract.

4: This is an interesting paper. Authors might also want to address
insufficient granularity of EMR diagnoses for oncology trials
- as well
as inherent "dirtiness" of EMR diagnostic data compared with cancer
registry data.

5: As noted by reviewers
- the goal and methods of the paper need to be
more clearly aligned.

That feedback arrived quickly (December 2016) and we decided to shoot
for a journal publication. The length of the article was brief enough
that we could submit it as a brief communication to the Journal of the
American Medical Informatics Association. This is the same group that
sponsored the San Francisco conference. The paper was sent out<U+FFFD> August
2017.

A month later
- I got a rejection letter with this very terse comment:

While it is important to gain new insights into inconsistency and
incompleteness of information in the EHR
- this paper examines a single
condition (breast cancer) using data from a single EHR (Univ of Kansas).
It is therefore limited in the extent to which we can draw generalizable
conclusions about the quality of EHR data.

We decided to resubmit
- and there was no point making major revisions,
because we didn't get any helpful feedback. Because of a hiccup in
funding
- I lost several months at this point.

But now I'm back on task. I got several good suggestions
- and decided to
try for a journal published by Biomed Central. My original plan was to
send it to BMC Bioinformatics
- and formatted everything to their
specifications. But I got cold feet because most of the articles in BMC
Bioinformatics were targeted towards genetics. Thankfully
- there is
another journal
- BMC Medical Informatics and Decision Making
- that had
at least two very recent articles dealing with the Electronic Health
Record.

Here's what they say about themselves on their website:

BMC Medical Informatics and Decision Making is an open access journal
publishing original peer-reviewed research articles in relation to the
design
- development
- implementation
- use
- and evaluation of health
information technologies and decision-making within the healthcare
setting.

This journal
- like all BMC Journals
- is open source. I am a big
proponent of open source publication
- and while I have been forced at
times to publish in journals that are trapped behind pay walls
- I don't
like it.

The other interesting thing about BMC Medical Informatics and Decision
Making is that they have an open peer review process. That means that
the original manuscript and the peer review comments appear on the
website in addition to the final manuscript (assuming it gets published,
of course).

There are some minor reformatting issues
- but it should not take too
long to get those changes ready and get the article shipped off.

Wish me luck!


