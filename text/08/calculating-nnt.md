---
title: Calculating NNT for observational studies
author: Steve Simon
date: 2008-03-03
categories:
- Blog post
tags:
- Being updated
- Measuring benefit and risk
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

Recent discussion at the [Evidence Based health
list](../category/InterestingWebsites.html#EvBaHe) centered on the
calculation of NNT in a case-control study. While it is indeed possible
to do so, I have always been a bit curious why NNT and NNH are computed
almost exclusively for randomized studies and why they are rarely used
for observational studies. No one says this explicitly, but I suspect
that the reason is that the NNT and NNH lead to problematic
interpretations in observational studies.

For example, I use a data set on mortality onboard the Titanic to
illustrate the concept of odds ratios and relative risks, but it is
possible to compute a NNT for this data set as well. Among the Titanic
passengers, the mortality rate was 83% for men and 33% for women. The
NNT is 2. What does this mean?

It produces a counterfactual statement. If you could change someone's
gender from male to female, then for every two gender changes, there
would be one additional life saved on average. It is not realistic to
change genders, but there are stories of some men who dressed up in
women's clothes in order to be part of the "women and children first"
ethic that existed at the time of the Titanic. So perhaps the NNT should
really be called the NNCD (Number Needed to Cross-Dress).\
\
In a study looking at age groups (you obviously can't randomly assign
people to age groups unless you have access to the carousel ride in Ray
Bradbury's Something Wicked This Way Comes), the NNT calculation might
be more accurately called the NNA (Number Needed to Age).\
\
If the groups being studied in an observational design involve weight,
then NNT might better be called NNS (Number Needed to Shink). If the
groups included psychiatrists and non-psychiatrics, then NNT might also
be called the NNS.\
\
I'm thinking that an article along these lines might be good for the
holiday issue of BMJ.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/CalculatingNnt.html
[sim2]: http://www.pmean.com/original_site.html

Also see [this page][sim3].

[sim3]: http://www.pmean.com/08a/CalculatingNnt.html
