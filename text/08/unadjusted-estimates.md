---
title: Presenting unadjusted and adjusted estimates side by side
author: Steve Simon
date: 2008-03-24
categories:
- Blog post
tags:
- Being updated
- Modeling issues
- Writing research papers
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

Someone on the [Medstats discussion
group](../category/InterestingWebsites.html#MeStXx) asked about
reporting the analysis of a model without adjustment for covariates
along with the analysis adjusted for covariates. What is the purpose of
reporting the unadjusted analysis?

I like to see both analyses because it lets you know whether the
adjustment for covariates has had any practical impact.

Also, there is a pragmatic consideration. The unadjusted analysis
represents a value that typically can be calculated by hand. In a
logistic regression model comparing two groups, for example, the
unadjusted odds ratio can be calculated directly from the 2 by 2 table.
I like to be able to double check a few of the numbers presented in a
paper just to get comfortable with the results.

Finally, the simplicity of the unadjusted estimate (if it is not
seriously biased) further reinforces the credibility of the research.
There's a general perception among some cynics that if you used a
complicated statistical model, it was only because the simple model did
not produce results you liked. When you show that the simple model
produces the same results, it takes that argument away from your
critics.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/UnadjustedEstimates.html
[sim2]: http://www.pmean.com/original_site.html
