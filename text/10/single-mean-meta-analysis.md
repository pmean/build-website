---
title: "Meta-analysis for a single mean estimate"
author: Steve Simon
source: http://www.pmean.com/10/SingleMean.html
date: 2010-02-11
categories:
- Blog post
tags:
- Systematic overview
output: html_document
page_update: partial
---

Someone noted that the usual meta analysis is carried out for the study on two treatment groups, usually for a difference in means. What if you had several studies estimating not a difference in means, but just estimates of a single mean. Could you conduct a meta-analysis in this situation?

<!---More--->

Yes, you can do this. The statistics change slightly, but in a predictable and logical way. The general concept and the general procedures stay the same.

It gets a bit trickier when the statistic of interest is a single proportion (e.g., sensitivity/specificity), especially when there are some publications where the proportion equals 1.0. If you try to weight by the inverse variance, these studies get infinite weight.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/10/SingleMean.html
[sim2]: http://www.pmean.com/original_site.html
