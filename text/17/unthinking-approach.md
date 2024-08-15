---
title: "The unthinking approach to borderline p-values"
author: "Steve Simon"
source: "http://blog.pmean.com/unthinking-approach/"
date: "2017-10-19"
categories: 
- Blog post
tags:
- Hypothesis testing
- Writing research papers
output: html_document
page_update: partial
---

I ran across a nice discussion of [how to write the results section of a
research
paper](https://jphmpdirect.com/2017/08/11/writing-discussion-section-manuscript-journal-public-health-management-practice/),
but it has one comment about the phrase "trend towards significance"
that I had to disagree with. So I wrote a comment that they may or may
not end up publishing (note: it did look like the published my comment,
but it's a bit tricky to find).

Here's what I submitted.

<!---More--->

I have to disagree with one comment. "Never attempt to describe results
that fail to achieve significance at the a priori threshold for
statistical significance, such as suggesting that the results
'approached significance' or displayed a 'trend towards significance.'"
There is a belief in some circles that a p-value of 0.04 tells you
something that is radically different than a p-value of 0.06. Both
represent findings that should be reported, but treated with caution. I
would much rather put my faith in a p-value of 0.06 that has a solid
mechanistic explanation than one of 0.04 that appears to defy any
scientific rationale. Similarly, I would trust a p-value of 0.06 that
was associated with other closely related outcome measures that did
achieve statistical significance than a p-value of 0.04 that was
surrounded by other similar outcome measures that failed to achieve
statistical significance.

Context is critical in interpretation of p-values. Unfortunately most
scientists do not allow the context of a finding to enter into the
discussion of borderline p-values (either the 0.06 p-value or the 0.04
p-value) out of a fear of violating some sacrosanct edict of research
conduct.

It seems that every scientist has a p-value receptor in their brain. It
stimulates the pleasure center when it encounters a p-value less than
0.05 and it stimulates the pain center when it encounters a p-value
greater than 0.05. But no matter what the value, the p-value receptor
also shuts down all other areas of the scientist's brain once it
encounters a p-value of any size. And arguing that p-values on the
"wrong" side of an arbitrary Type I error rate of 0.05 should be
discussed only as a negative result encourages this sort of unthinking
approach to p-values.

At a minimum, look at the confidence interval for a "negative" finding.
If it includes the null value but also includes values that are
considered clinically important, then you should describe the result as
being one that warrants further study with a larger sample size.

Other than this one complaint, I think it is a very good article.


