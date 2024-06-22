---
title: Accounting for clusters in an individually randomized clinical trial
author: Steve Simon
date: 2009-10-13
categories:
- Blog post
tags:
- Randomization in research
output: html_document
page_update: no
---

#### Dear Professor Mean,

I have a clinical trial with clusters (the clusters are medical practice), but unlike a cluster randomized trial, I am able to randomize within each cluster. From what I've read about this, I can provide an estimate for the Intraclass Correlation Coefficient (ICC) that will decrease my sample size. But I'm uncomfortable doing this. Can you help?

<!---more--->

#### Dear Reader,

A while back I took a course on this topic and the instructor said something very profound. He said that if you have a random effect and fail to account for it, your standard errors will be incorrect. That I already knew, but he took it a bit further. He said that the standard errors for between cluster comparisons would be too big and the standard errors for within cluster comparisons would be too small. That's very logical if you think about it for a while, but it had never occurred to me to think of it in that way before.

Here's another bit of intuition that might help. Randomizing within each center will effectively make the treatment effect and the center effect orthogonal to one another. If you account for and remove a source of uncertainty due to the center effect, that reduces your noise. Since it is orthogonal, you don't have to worry about any collinearity effects mucking things up.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/09/AccountingForClusters.html
[sim2]: http://www.pmean.com/original_site.html
