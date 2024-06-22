---
title: "Sample chapter, the first three steps in selecting an appropriate sample size"
author: Steve Simon
date: 2010-07-24
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: partial
---

As I mentioned in an [earlier webpage](SecondBook.html), I am talking to
some publishers about writing a second book. The working title is
\"Jumpstart Statistics: How to Restart Your Stalled Research Project.\"
Here\'s a tentative chapter from that book. It is an early draft and I
do not have all the references in place yet. It should be enough,
though, to give you a sense of what I want to write about.

One of your most critical choices in designing a research study is
selecting an appropriate sample size. A sample size that is either too
small or too large will be wasteful of resources and will raise ethical
concerns.

Here\'s a story (not true, but it should be) that I tell to people who
come asking about sample size issues. A researcher is finishing up a six
year, ten million dollar NIH grant and writes up in the final report
\"This is a new and innovative surgical procedure and we are 95%
confident that the cure rate is somewhere between 3% and 96%.\"

This story illustrates that the heart and soul of all sample size
calculations is economic. You want to insure that your research dollars
are well spent, that you are getting something of value for your
investment. Spending ten million dollars and only having a 3% to 96%
confidence interval to show for it is a poor use of limited economic
resources.

There\'s also an ethical component to most sample size calculations.
People volunteer for research studies for three reasons. Some are in it
for the money, and others are curious about the research process. The
biggest reason, though, for many people to volunteer is that they want
to help other people. They are hoping that the research will help and if
your sample size is too small, your failure to produce a reasonable
level of precision has betrayed their hopes.

Too large a sample size is also an ethical problem. Research volunteers
often suffer during a clinical trial. They may experience pain. They may
endure a risky procedure. They may forgo an appropriate medical
treatment (if there is a placebo arm) or endure an inferior treatment
(if there is an active control). You do all that you can to minimize
these problems, of course, but most research requires some type of
sacrifice to the volunteers. An excessive sample size, a sample size far
beyond the needs of the research creates needless suffering among
research volunteers.

You commonly justify the sample size of a study through a power
calculation. Power is the probability that you will successfully reject
the null hypothesis when there is a clinically important difference
between your treatment and control group. Power an be defined for more
complex data analyses, such as comparisons involving multiple treatment
groups, or assessing the strength of association between two variables.
Calculations in these settings are a bit more complex than the example
discussed below, but the general steps are similar.

Selecting an appropriate sample size is one of the most important
choices you will have to make in planning your research study. There are
three basic steps in determining an appropriate sample size: specifying
a research hypothesis, identifying the variation in your outcome, and
determining the minimum clinically important difference

**Step 1: Specify a research hypothesis.**

Not all research can or should have a research hypothesis. But for those
studies that do have a research hypothesis, this needs to be shared with
your consulting statistician. This will help him/her identify the
appropriate research design, and test statistic

As mentioned in the previous chapter, I like to use the PICO format
(Patient, Intervention, Control, Outcome) described in Evidence-Based
Medicine to help people formulate a good research hypothesis. The PICO
format is also helpful in understanding the steps you need to select an
appropriate sample size.

When I find the O (outcome) in the research hypothesis, I can begin to
visualize the statistical approach to analyzing the data. You can\'t
justify a sample size, of course, if you haven\'t settled on a specific
statistical approach. If the outcome is continuous, for example, you
might consider t-tests, ANOVA or linear regression models. If the
outcome is categorical, you might plan for a logistic regression model
instead.

The C (control) is also important in visualizing the statistical
approach. Are controls selected through randomization? Are they matched
one-to-one with patients in the treatment group? These will also help in
deciding your statistical approach?

So why didn\'t I just be direct about it and ask you what statistical
approach you were planning? Well that\'s something that you might not
have considered just yet or maybe you were considering several different
approaches. Maybe the thought of specifying a statistical approach
terrifies you.

Most people are not afraid of telling me what their research hypothesis
is. If they don\'t have a research hypothesis yet, I can usually work
them through the process (see the previous chapter). Finally, all the
details of the statistical approach don\'t need to be nailed down in
order for you to start working on justifying the sample size. Often,
just knowing the O (outcome) is enough to start making some progress.

**Example**: In a study, I helped with at Children\'s Mercy Hospital,
the researchers were interested in the following hypothesis.

-   P: infants with burns
-   I: treated with an artificial skin protection membrane
-   C: similar infants treated with an alternative membrane
-   O: pain as measured by the Oucher scale

Additional outcome measures included healing time and total costs of
treatment.

**Step 2: Identify the variation in your outcome measure.**

You\'ve already done a literature review haven\'t you? If so, search
through the papers in your review that used the same outcome measure
that you are proposing in your study (the O in PICO). Ideally, the
outcome measure will be examined in a group of patients that is close to
the types of patients that you are studying (the P in PICO, or possibly
the C in PICO). This is not always easy, and you will sometimes be
forced to use a study where the patients are quite different from your
patients. Don\'t fret too much about this, but make a good faith effort
to find the most representative population that you can.

Some clients will raise an objection here and say that their research is
unique, so it is impossible to find a comparable paper. It is true that
most research is unique (otherwise it wouldn\'t be research). But what
these people are worried about is that their intervention (the I in
PICO) is unique. In these situations, the remainder of the hypothesis is
usually quite mundane: the patients, the comparison group, and the
outcome (P, C, and O in PICO) are all well studied. If you find a study
where the P, C, and O match reasonably well, but the I doesn\'t, then
you are probably going to get a good estimate of variation.

If there are major dissimilarities because this patient population (P) 
is very different than any previously studied patient population, or
because the outcome measure (O) is newly developed by the researcher,
then perhaps a pilot study would be needed to establish a reasonable
estimate of variation.

Sometimes you can infer a standard deviation through general principles.
If a variable is constrained to be between 0 and 100, it would be
impossible, for example, for the standard deviation to be five thousand.
There are approximate formulas relating the range of a distribution to
the standard deviation. Divide the range by four or six to get an
approximate standard deviation. There are also formulas that allow you
calculate a standard deviation from a coefficient of variation, a
confidence interval, or a standard error. Just about any measure of
variation can be converted into a standard deviation.

If your outcome measure is a proportion, then the variation is related
to the estimated proportion. Similarly, the variation in a count
variable is related to the mean of the counts. Find a paper that
establishes a proportion or average count in a control group similar to
your control group and any competent statistician will be able to get an
estimate of variation.

In some situations, the amount of variation in a proportion or count is
larger than would be expected by the statistical distributions (binomial
and Poisson)  traditionally associated with these measures. Still, a
calculation based on binomial or Poisson assumptions is a reasonable
starting point for further calculations.

If you have multiple outcome measures, pick the one that is most
critical. If you are indecisive, pick two or three. But don\'t try to
justify your sample size for ten or twenty different outcome measures
(but do adjust for multiple comparisons). There\'s a general presumption
in the research community that if you have an adequate sample size for
one of your outcome measures that the sample size is probably reasonable
for any other closely related outcome measure. In my experience, this is
generally true, but do include a separate sample size justification for
an outcome that is substantially different in nature. So, for example,
if most of your outcome measures involve quality of life measures but
one of them is mortality, then perform a separate sample size
justification for mortality because it is discrete rather than
continuous and because it uses a substantially different form of data
analysis.

**Example:** The researchers examining infants with burns could easily
find a standard deviation for the Oucher scale, 1.5, from previous
literature. This number seemed a bit high to me, because the range of
the Oucher scale they were using was 1 to 5. Typically, the standard
deviation is 1/4 to 1/6 the range, so I would have been happier with a
standard deviation of 0.67 to 1.0. But 1.5 wasn\'t outrageously too
large.

Healing time is a more difficult endpoint to assess. Medical textbooks
cite that the healing time for second degree burns has a range of 4 days
(minimum 10, maximum 14). A study of healing times for a glove made from
one of the skin barriers showed a healing time range of 6 (minimum 2 and
maximum 8 days). Note that the average healing time is quite different
from the two sources, with the minimum healing time in the first study
being 2 days longer than the maximum healing time in the second study.
But the ranges are quite similar, and this is reassuring.

Since the standard deviation is approximately 1/4 to 1/6 of the range,
it\'s possible that the standard deviation for healing time could be as
small as 0.5 or as large as 1.5.

For one type of skin barrier, a study of costs showed a range of \$4.00
(\$5.50 to \$9.50). Thus, a standard deviation of 0.67 to 1 would be
reasonable.

**Step 3: Determine the minimum clinically important difference**

Determining the minimum clincally (or scientifically) important
difference is the most difficult step so far, but you need to do this if
you want any hope of determining an appropriate sample size. The minimum
clinically significant difference (MCID) is the boundary between two
important regions. The first region is the land of yawns. This region is
all the differences so small that all your colleagues say \"so what?\"
These are trivial differences, differences that no one would adopt the
new intervention on the basis of such a meager change. The second region
is the land of wow. This region is all the differences large enough that
people sit up and take notice. These are large changes, changes large
enough to justify changing how you might act.

Establishing the MCID is a tricky task, but it is something that should
be done prior to any research study. You might start by asking yourself
\"How much of an improvement would I have to see before I would adopt a
new treatment?\" or \"How severe would the side effects have to be
before I would abanadon a treatment.\"

For binary outcomes, the choice is not too difficult in theory. Suppose
that an intervention \"costs\" X dollars in the sense that it produces
that much pain, discomfort, and inconvenience, in addition to any direct
monetary costs. Suppose the value of a cure is kX where k is a number
greater than 1. A number less than 1, of course, means that even if you
could cure everyone, the costs outweigh the benefits of the cure.

For k\>1, the minimum clinically significant difference in proportions
is 1/k. So if the cure is 10 times more valuable than the costs, then
you need to show at least a 10% better cure rate (in absolute terms)
than no treatment or the current standard of treatment. Otherwise, the
cure is worse than the disease.

It helps to visualize this with certain types of alternative medicine.
If your treatment is aromatherapy, there is almost no cost involved, so
even a very slight probability of improvement might be worth it. But
Gerson therapy, which involves, among other things, coffee enemas, is a
different story. An enema is reasonably safe, but is not totally risk
free. And it involves a substantially greater level of inconvenience
than aromatherapy. So you\'d only adopt Gerson therapy if it helped a
substantial fraction of patients. Exactly how many depends on the dollar
value that you place on having to endure a coffee enema, a task that I
will leave for someone else to quantify.

For continuous variables, the minimum clinically significant difference
could be defined as above. Define a threshold that represents \"better\"
versus \"not better\" and then try to shift the entire distribution so
that the fraction \"better\" under the new treatment is at least 1/k.
There have also been efforts to elucidate, through experiments,
interviews, and other approaches, what the average person considers an
important shift to be. For the visual analog scale of pain, for example,
a shift of at least 15 mm is considered the smallest value that is
noticeable to the average patient.

There are some informal rules of thumb. Generally, a change that
represents a doubling of a halving is pretty important. So if you cut
the length of stay in a hospital in half, from 4 days on average to 2,
that\'s pretty big. A side effect that occurs 8% of the time rather than
4% of the time is pretty large. Rules of thumb are not perfect, though.
A 25% shortening in length of stay, from 4 days on average to 3 would
probably also be clinically important. And, depending on the type of
side effect, we might not get too worried unless we saw a tripling of
side effect rates, from 4% to 12%. So use this rule of thumb to
establish a starting point for further discussion.

If you\'re totally stumped, try talking about what\'s clinically
important with some of your colleagues. In a pinch, you can also look at
the size of improvements for other successful treatments. This is an
example, though, of the lemming school of research (If all you your
friends jumped off a cliff would you jump off also?). As a last resort,
you can try inverting the calculations. Specify the largest sample size
that you could collect without killing yourself in the process and then
back calculate what the minimum clinically important difference might
be.

I often get told \"you tell me what the minimum clinically important
difference is.\" I can\'t do it, because of that adjective
\"clinically.\" I do not exercise good clinical judgment, as I do not
work in a clinic. I\'d also have trouble if it were the minimum
scientifically important difference, as my scientific judgment stopped
developing when I skipped all those high school biology labs involving
dissection (it was more a weak stomach than a strong ethical objection).
I\'m sometimes willing to venture an opinion, but mostly just to start
the discussion and get a reaction. If pressed, I will often state a
number that I know they will say is way too big or way too small. Once I
get them to commit to such a judgment, then it is only a few short steps
to arriving at a reasonable number for the MCID.

**Example:** The researchers said that a shift of 1 unit in the Oucher
scale was the smallest value that would be important from a clinical
perspective. That seemed reasonable to me. It would be hard to argue
that a change much smaller than the finest unit of measurement for the
scale would be important from a clinical perspective. An average shift
of one day in healing time was also considered clinically significant.
Finally, a difference in average costs of \$0.50 would be considered
clinically significant.

Here\'s an example of how the sample size calculations worked out, using
a sample size calculation package, PiFace, that is freely available on
the web. The steps shown here would be similar if you used a different
program.

![](images/Sample1.jpg){width="484" height="364"}

With the Oucher scale, a sample of 36 patients per group would provide
80% power for detecting a difference of 1 unit, assuming the standard
deviation of the Oucher is 1.5 units. This was well within the
researchers budget, so this was welcome news. Also reassuring was that I
had thought that the standard deviation was a bit big. You can check
easily that a smaller standard deviation would leave to a smaller sample
size.

![](images/Sample2.jpg){width="484" height="364"}

For the healing time, a standard deviation of 0.5 leads to a
ridiculously small sample size (5 or 6 per group).

![](images/Sample3.jpg){width="484" height="364"}

A standard deviation of 1.5 leads to the exact same sample size, which
is not surprising.

![](images/Sample4.jpg){width="484" height="364"}

For total costs, a standard deviation of 0.67 and a MCID of \$0.50 leads
to a sample size of 29 per group. That\'s reassuring, but the standard
deviation could possibly be as large as 1.0.

![](images/Sample5.jpg){width="484" height="364"}

In this case, the sample size would be 64 per group, which would bust
the budget. I asked if they could live with a study that could detect a
\$1.00 difference in costs. That seemed reasonable to them.

![](images/Sample6.jpg){width="484" height="364"}

A study that would try to detect a difference of \$1.00 would need 17
patients per group, assuming the standard deviation that was also
\$1.00. Looking at all the calculations, it appears that a sample of 36
patients per group is a reasonable choice. It fits within the research
budget. It provides 80% for detecting a shift of one unit in the Oucher
scale. The same sample size provides 80% power for healing time using
the worst case scenario of a standard deviation of 1.5. It\'s not quite
adequate for detecting a shift of \$0.50 in costs, depending on what the
standard deviation is, but more than adequate for detecting a shift of
\$1.00 in costs.

**The fly in the ointment: research without a research hypothesis.**

What do you do if you don\'t have a research hypothesis? This is a
situation where you need to discuss things in more detail with your
statistical consultant.

In some research studies, the goal is exploratory. You don\'t have a
formal hypothesis at the start of the study, but rather you are hoping
that the data you collect will generate hypotheses for future studies.
The path to selecting a sample size in these settings is quite
different. Often you want to establish that the confidence intervals for
some of the key descriptive statistics in these studies has a reasonable
amount of precision.

Pilot studies also do not normally have a research hypothesis. It is
tricky to determine the appropriate sample size for a pilot study. This
will be dealt with in the next chapter.

If your study involves assessing validity or reliability, then you could
force your research goal into a formal hypothesis, but I don\'t
recommend it. Most efforts to establish reliability and/or validitiy
involve estimation of a correlation (for example, a correlation between
two different observers or a correlation of your measure and a gold
standard). If this is the case, simply calculate how wide you would
expect your confidence interval for the correlation to be. Specify a
sample size and a target for your correlation. Then your sample size is
adequate if the confidence interval is sufficiently narrow.