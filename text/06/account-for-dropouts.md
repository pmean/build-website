---
title: Be sure to account for dropouts in your sample size calculation
author: Steve Simon
source: http://www.pmean.com/06/AccountForDropouts.html
date: 2006-12-29
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: complete
---

I helped out a colleague with an NIH grant, and when the critique came back, it mentioned two issues that I should have been aware of. First, they pointed out the need for an intention-to-treat analysis strategy. Second, they noted the long duration of the study, with a full year of evaluations on any particular patient, and seemed bothered that we presumed that 100% of the patients would complete the full study. This is indeed naive on my part, and the calculation of a revised sample size is quite simple. If you believe that a proportion P less than 1 of the patients will complete the study, take your sample size from the power calculation and divide by P to get a revised sample size that allows for dropouts.

For example, if your sample size calculation indicates that a total of 40 patients are needed, and you expect only 80% of your patients will complete the full study, then plan to enroll 40 / 0.8 = 50 patients.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/06/AccountForDropouts.html
[sim2]: http://www.pmean.com

<p>This page has moved to <a href="http://new.pmean.com//">a new website</a>.</p>