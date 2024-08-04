---
title: "Cases and cohorts and controls, oh my!"
author: "Steve Simon"
source: "http://blog.pmean.com/cases-and-cohorts/"
date: "2017-02-17"
categories: Blog post
tags:
- Observational studies
output: html_document
page_update: complete
---

Some asked a question about a retrospective study where you have a control cohort matched to a case cohort so the cohorts are similar on important (potentially confounding) variables. I pointed out that the two consecutive words "case cohort" are ambiguous and tried to explain? how I define a retrospective cohort design versus a (retrospective) case-control design.

<!---More--->

As I understand it, a cohort is a group of patients defined by an exposure. A case is a patient who has a particular outcome. So the phrase "case cohort" is ambiguous. If you are mining the electronic health records and select every child who received aspirin to control a fever and compare them to a control group of children who received acetaminophen to control a fever with the hypothesis that Reye's syndrome is more likely in the aspirin cohort, that's a retrospective cohort design. If you are mining the same electronic health records and select every child who came down with Reye's syndrome and compare them to a control group of children who did not experience Reye's syndrome with the hypothesis that aspirin was taken more often among the Reye's syndrome group, that's a case control design.

It gets a little bit tricky because context is important. Low birth weight is an outcome to an obstetrician, but it is an exposure to a neonatologist. But if there is a temporal order where A precedes B in time and A is thought to be a cause of B, then defining your controls as not A makes it a cohort study and defining your controls as not B makes is a case control study.

I suspect you are using the word "cohort" in its generic sense meaning a group of people who share something in common. Or maybe you are using the word "case" in its generic sense meaning an instance. But if you are defining a case cohort from an Epidemiologic perspective, I would argue that it represents the intersection of A and B (all children who take aspirin AND develop Reye's syndrome). If you think about this long enough, you realize that a "case cohort" makes no sense from a statistical perspective because no matter how you choose your controls, you're going to end up missing one of the four cells in the two by two classification of A and B.

Another way of thinking about it is the direction of travel. If you retrospectively select on B and not B and go further back in time to see who does or does not have A, you have a case control design. If you retrospectively select on A and not A and then move forward in time (but not all the way back to the present) to see who does or does not have B, you have a retrospective cohort design.

Now there's such a thing as a nested case control design. So you study a cohort versus a control (usually prospectively) and you find that some of your cohort develop your outcome and some do not. You'd like to run some additional tests (e.g., genetics) on all of the cases within your cohort, but it's too expensive to run the tests on all the non-cases within your cohort. So you get a subset of non-cases from your cohort and because your sample size is smaller, you do some matching. So you have a case control design nested within a cohort design. Your hypothesis is that a positive result on the expensive test is more likely among cases than controls. Note that both cases and controls are drawn from the exposed cohort--the unexposed control cohort patients do not participate in a nested case-control study.

It's also possible to nest a case control design within a randomized trial. Select all of the patients randomized to the active arm AND who experience the outcome of interest. Run a super expensive test on these patients. Now pick a small but carefully matched set of patients in the active arm who did not experience the outcome of interest and run those same tests.

To make things even more complicated, there is a case-cohort design and a case-crossover design. See [7.2 -- Advanced Case-Control Designs \| STAT 507][psu1] for details. I think I'll stop here before my head explodes.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/cases-and-cohorts/
[sim2]: http://blog.pmean.com

[psu1]: https://onlinecourses.science.psu.edu/stat507/node/49
