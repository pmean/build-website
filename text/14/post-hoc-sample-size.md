---
title: "Post hoc sample size calculations"
author: "Steve Simon"
source: "http://blog.pmean.com/post-hoc-sample-size/"
date: "2014-04-10"
categories: Blog post
tags:
- Post hoc power
output: html_document
page_update: partial
---

Someone asked about references on post hoc power calculation on the
MEDSTATS email discussion group and, as we all know, this is a very bad
idea. But someone offered a setting where a post hoc power calculation
might make sense. It's worth discussing, because what you really would
want in that setting is a post hoc sample size calculation.

<!---More--->

The scenario presented was one that occurs often. A researcher
calculates power prior to data collection, using a minimum clinically
important difference of 8, and estimate of the standard deviation of the
outcome measure of 20, which based on previously published research of a
similar nature. It leads to a sample size of 100 per group, which
provides 80% power. But when the actual data was collected, the standard
deviation was 60, which was three times bigger. So why not, under this
scenario, show that the post hoc power was 16% instead of 80%?

The problem is that the 16% is too easily misinterpreted.

I suggested a subtle twist on this. If your standard deviation during
the planning phase were known to be three times larger, you'd use a
sample of 900 per group instead of 100 per group (a three fold increase
in the standard deviation leads to a nine fold increase in the sample
size). It's much harder to misinterpret that 900 versus 100 and it
serves as a warning to anyone trying to replicate your work.

Note that you keep the minimum clinically important difference at 8
here, rather than change it based on the means observed in the study.
What is clinically important does not get changed by any data that you
collect.

At the same time, be sure to present the confidence interval, as the
very large width (plus/minus 17) is an even better indicator of the
inadequacy of the sample size.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/post-hoc-sample-size/
[sim2]: http://blog.pmean.com
