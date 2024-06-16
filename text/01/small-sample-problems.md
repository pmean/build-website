---
title: Problems with a very small sample
author: Steve Simon
date: 2001-10-11
categories:
- Blog post
tags:
- Being updated
- Small sample size issues
output: html_document
page_update: partial
---
*Dear Professor Mean, Are there problems with a very small sample? Can
the t-test be used with a sample of just three subjects? -- Anxious
Abdelwahab*

Dear Anxious,

It sounds like you got your funding from the Jack Benny Research
Foundation.

You can use the t-test, but the question is should you? If you want your
power to be 80%, a sample size of 3 is only capable of detecting a 2.3
standard deviation difference (paired test). The situation is even worse
for the two-sample t-test. To give some perspective, most effect sizes
seen in published research range from 0.2 to 0.8 standard deviations.

Unless you know for a fact that the differences you are likely to see
are huge (and I mean Godzilla sized differences), then you should not
run the experiment. You will almost certainly accept the null
hypothesis, and you won't know if it is because of your small sample
size or the fact that there really is no difference. In other words, the
experiment will not provide any useful information.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/01/small.html
[sim2]: http://www.pmean.com/original_site.html
