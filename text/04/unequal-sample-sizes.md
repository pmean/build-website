---
title: Unequal sample sizes
author: Steve Simon
date: 2004-11-24
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: partial
---
For some reasons, it seems to unnerve people when the sample size in the
treatment and control group are not the same. They worry about whether
the tests that they would run on the data would be valid or not. As a
general rule, there is no reason that you cannot analyze data with
unequal sample sizes. There are a few procedures, such as the Tukey
follow-up test in Analysis of Variance, that require some adaptations.
You also may not have as much precision as you'd like to have. The rule
of thumb is that precision is determined predominantly by the group with
the smaller sample size. Finally, some violations of assumptions (such
as unequal variances) may be more serious when the samples sizes are
unequal.

There are some situations where you might deliberately recruit unequal
sample sizes. This occurs most commonly when it costs much less to
recruit patients from one group than from another. Suppose the treatment
group requires ten thousand dollars worth of therapy and the control
group only requires a hundred dollars worth of therapy. For a fixed
budget, you would be better off recruiting more control patients. With a
bit of calculus you can show that the optimal degree of unbalancedness
is related to the square root of the ratio of costs.

You can find an [earlier version](http://www.pmean.com/04/UnequalSampleSizes.html) of this page on my [original website](http://www.pmean.com/original_site.html).

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/04/UnequalSampleSizes.html
[sim2]: http://www.pmean.com
