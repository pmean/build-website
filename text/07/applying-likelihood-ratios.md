---
title: Applying likelihood ratios in your head
author: Steve Simon
source: http://www.pmean.com/07/ApplyingLikelihoodRatios.html
date: 2007-06-01
categories:
- Blog post
tags:
- Diagnostic testing
output: html_document
page_update: complete
---
Someone sent me a nice email complimenting my likelihood ratio slide rule.

[Stats: Likelihood ratio slide rule][sim3]

He/she also pointed out a simple way to apply likelihood ratios in your head.

In your example 10% pretest, LR 4, I just say 10 with disease, 90 without it. Multiply the 10 by 4. Now 40 have it, and 90 don't have it...simple enough to say that's about a 1 to 2 ratio for 30% roughly.

That does indeed work, and I checked it out for some other examples. Suppose the pretest probability is 50%. Thus one person has the disease and one does not. A likelihood ratio of 4 changes this to four people with the disease and one without or a probability of 80%.

You can also do this with a likelihood ratio for a negative test. Suppose the pretest probability is 40% (4 with and 6 without the disease). A negative result with a likelihood ratio of 0.25 (1/4) changes this to 4 with and 24 without the disease. The probability changes to 4/28 or 1/7 which is about 14%.

I appreciate feedback like this, as it reminds me that there are several ways to tackle a problem.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/ApplyingLikelihodRatios.html
[sim2]: http://www.pmean.com

[sim3]: http://www.pmean.com/08/sliderule.html
