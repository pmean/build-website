---
title: "Case for omitting tied observations in the two-sample t-test and the Wilcoxon-Mann-Whitney Test"
author: "Steve Simon"
source: "http://blog.pmean.com/tied-ranks/"
date: "2019-04-04"
categories:
- Recommendation
tags:
- Nonparametric tests
output: html_document
page_update: complete
---

![](http://www.pmean.com/new-images/19/tied-ranks01.png)

<div class="notes">

When you are running a non-parametric test, like the Wilcoxon-Mann-Whitney test, you can only be 100% certain of the properties of that test (including Type I and Type II error rates) if the data are continuous. If there are ties in the data, the properties of the test are unknown. This paper shows four commonly used approaches for settings where values might be tied and runs simulations to measure Type I and Type II error rates for both the two-sample t-test and the Wilcoxon-Mann-Whitney test under a range of tied values and a range of distributions. The results are, at least to me, quite surprising.

<!---More--->

McGee M (2018) Case for omitting tied observations in the two-sample t-test and the Wilcoxon-Mann-Whitney Test. PLoS ONE 13(7): e0200837. DOI: 10.1371/journal.pone.0200837. Available in [html format][mcg1]  or [PDF format][mcg2].

[mcg1]: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0200837
[mcg2]: https://journals.plos.org/plosone/article/file?id=10.1371/journal.pone.0200837&type=printable

</div>



