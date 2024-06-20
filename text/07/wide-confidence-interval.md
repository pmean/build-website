---
title: Is my confidence interval wide?
author: Steve Simon
source: http://www.pmean.com/07/WideConfidenceInterval.html
date: 2007-09-11
categories:
- Blog post
tags:
- Confidence intervals
output: html_document
page_update: complete
---

### Dear Professor Mean,

Dear Professor Mean, I have a case-control design. Among the cases, 271 were exposed and 317 were unexposed. Among the controls, 125 were exposed and 976 were unexposed. After adjustments for covariates, this produced an odds ratio of 7.4 with a 95% confidence interval of 5.7 to 9.5. Is this a wide interval?

### Dear Reader,

You have a confidence interval that shows a positive result and the standards for what is wide are different than the standards for what is wide for a confidence interval that shows a negative result.

Actually this interval is quite good. While I have talked about what a wide interval means, the true test of a confidence interval in a positive study is how close it comes to the null value. In this situation, the lower limit is the one closer to the null value, but it is still well bounded away from 1.0. After allowing for sampling error, you are still confident that the odds ratio is larger than 5. So pat yourself on the back for a job well done.

In contrast, a confidence interval where the lower limit comes within “kissing distance” of the null value is evidence of a borderline effect. So if your interval went from 1.08 to 2.52, then I would characterize it as wide, even though the length of this interval is less than the length of your interval.

With a different type of research design, you might want to look at an absolute measure of risk rather than a relative measure of risk, but that is not possible in a case-control design.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/WideConfidenceInterval.html
[sim2]: http://www.pmean.com
