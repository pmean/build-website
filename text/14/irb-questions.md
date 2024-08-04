---
title: "Pmean: The IRB questions my sample size calculation"
author: "Steve Simon"
source: "http://blog.pmean.com/irb-questions/"
date: "2014-04-30"
categories: Blog post
tags:
- Sample size justification
output: html_document
page_update: partial
---

I got a question today from someone submitting a research protocol to
the Institutional Review Board (IRB). The IRB had some concerns about
the power calculation. In particular, they said "The IRB would like to
know, how you set the parameters for the power calculation, such as
effect size, alpha level. For effect size, you need to have some data to
justify or should choose a conservative one."

Part of this was due to an error in the submission of the protocol. We
had specified a paired t-test rather than an independent samples t-test,
which is a major gaffe on my part. But they were pushing into some
tricky territory and I wanted to clear things up. Here is the response
that I suggested that we share with the IRB.

<!---More--->



First, you need to correct the protocol. We are using "an independent
samples t-test" and not a "paired t-test". It sounds like a
technicality, but the wording is indeed important here. I'm not sure how
that error got in there, but I will try to proofread better in the
future.

It may be that this is all that the IRB is concerned about. But I'm not
so sure. So add the following information.

The Type I error rate (alpha) and the Type II error rate (or
equivalently the power) were set to commonly used values in the medical
research community. Surely the IRB does not have concerns over the use
of 0.05 for a Type I error rate. If they do, then they are arguing for a
Type I error rate that deviates from the norm of almost all published
medical research. Similarly, a power of approximately 90% (corresponding
to a Type II error rate of about 10%) is fairly common. Some researchers
believe that a slightly larger Type II error rate (approximately 20%) is
also acceptable. If the IRB wishes to set a standard for research that
all of its studies should have a specific Type II error rate, they
should publicize this broadly so that researchers can prepare their
research protocols accordingly.

In my 30 plus years of statistical consulting, I have never had anyone
question the choice of Type I and Type II error rates. That being said,
I am certainly appreciative of any collective guidance that particular
values are warranted by ethical considerations of the protocol.

Perhaps the IRB is concerned about the minimum clinically important
difference (which they incorrectly label as the effect size). A
clarification of the difference appears in Lenth (2001).

There are indeed cases where the minimum clinically important difference
is set incorrectly, and I have commented on this in a peer-reviewed
publication (Portnoy and Simon 2003). Also notice a recent entry on my
website

--\> <http://www.pmean.com/11/unrealistic.html>

In general, however, I show strong deference to the principal
investigator in setting this value. I do not have any clinical
expertise, and this is what is needed in setting the minimum CLINICALLY
important difference. In general, unless the value suggested is grossly
unrealistic (as it was in the case discussed in Portnoy and Simon 2003),
I do not demand too much documentation of this value.

It is often difficult or impossible to generate data that supports the
use of a particular minimum clinically important difference. When you do
find a good example, it is worth remembering, as I did in the following
webpage:

--\> <http://www.pmean.com/05/ClinicalImportance.html>

Usually, however, the minimum clinically important difference represents
a subjective opinion of the researcher.<U+00A0> I am reluctant, to substitute
my own subjective opinion for that of the researcher. The IRB, which
typically has a much stronger background in medicine than I have, is
welcome to substitute its own judgment. To ask for more documentation,
however, is inappropriate, as often there is no stronger justification
than the opinion of the researcher. We'd like to believe that the
research process is objective and based on evidence, but many of the
decisions that we make during the design of a research study represent
nothing more than subjective impressions of the research team.

In fact, you can do a lot worse than subjective opinions. Some people
will use the effect size that is observed in a previous study. This
sounds like a good idea on the face of it, but using observed effect
sizes can lead to lots of problems, especially if the value is pulled
from a "negative" study. The point is still being debated in the
research community, but I've seen too many examples where researchers
have replaced a carefully thought out subjective number with a seemingly
objective but clearly inappropriate number.

Finally, the IRB suggests that you should use a "conservative" effect
size. The parameters chosen for Type I and Type II error rates are
already conservative in that they use a Type I error rate that is half
the size of the Type II error rate.

So the use of the word "conservative" here is clearly intended to mean
something else. I'm guessing that they want the minimum clinically
important difference to be set at a value that makes the sample size
that, if it has to err, errs on the side of being a bit too large. This
implies that the IRB would prefer a minimum clinically important
difference that, if it had to err, would err on the side of being a bit
too small.

Perhaps this is a philosophy of "erring on the side of caution" but
quite honestly, there are problems with caution on both ends of the
spectrum. A sample size that is too small represents an ethical problem
and a sample size that is too large also represents an ethical problem.
Surely the IRB knows this better than I do. So why would they demand a
one-sided perspective for this particular research study? There is
nothing in this particular research problem that seems to indicate that
a sample size that is a bit too small raises a more critical question
about the ethical conduct of the study than a sample size that is a bit
too large.

I have written a lot about these issues, and I'm giving an invited talk
in Miami next month that will discuss precisely these issues for people
who are writing research grants. As such, I have VERY strong opinions
about this topic. That being said, I am certainly willing to listen to a
different perspective. If the members of the IRB read this material and
they find that my arguments are unpersuasive, I would love to meet with
them and discuss this in greater detail. It's in my best interest to
understand the IRB's perspective on sample size calculations so that I
can insure that any future protocols that I help with are sent to the
IRB with the appropriate documentation and justification.

Bibliography

Lenth RV. Some Practical Guidelines for Effective Sample Size
Determination. The American Statistician 2001 (August), 55(3); 187-193.

Portnoy JM, Simon SD. Is 3-mm less drowsiness important?. Ann Allergy
Asthma Immunol. 2003 Oct;91(4):324-5. Available at:
<http://www.ncbi.nlm.nih.gov/pubmed/14582809>

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/irb-questions/
[sim2]: http://blog.pmean.com
