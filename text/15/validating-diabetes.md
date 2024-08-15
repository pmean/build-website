---
title: "Validating a test of diabetes"
author: "Steve Simon"
source: "http://blog.pmean.com/validating-diabetes/"
date: "2015-05-11"
categories: 
- Blog post
tags:
- Diagnostic testing
- Sample size justification
output: html_document
page_update: complete
---

### Dear Professor Mean,

I have a simple algorithm that determines whether a person is diabetic or not. I am planning on validating this algorithm, and I need to know how many patients I need to sample. Is there a formula I could use?

<!---More--->

### Dear Reader,

There are many ways to validate. I'm guessing here, but I suspect that you want to compare your algorithm, which is simple, cheap, or fast, to a gold standard measure of diabetes. The gold standard is something that has been around for a while and is well trusted by doctors, but it may be a lot more expensive or time consuming that what you are proposing.

Establishing validity in this framework is typically done by establishing that your sensitivity and specificity are large enough. You want to select a sample size so that the confidence intervals for sensitivity and specificity are reasonably narrow. A key statistic here is the proportion of patients in your sample that will have diabetes according to your gold standard.

Psychologists use terms like "criterion validity" or "predictive validity" in this case, though I am always a bit unclear on their terminology. That's probably more of a limitation on my intellectual capacity than a criticism of their definitions.

Note that there is no "power" involved in this calculation. The reason for this is that validity is not something that is easily reduced to a simple hypothesis test.

If you want more details, I talk about sample sizes needed for a study of a diagnostic test on an [earlier web page][sim3]

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/validating-diabetes/
[sim2]: http://blog.pmean.com

[sim3]: http://www.pmean.com/04/SampleSizeDiagnostic.html



