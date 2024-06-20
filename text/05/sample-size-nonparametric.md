---
title: Sample size calculation for a nonparametric test
author: Steve Simon
source: http://www.pmean.com/05/SampleSizeA.html
date: 2005-03-08
categories:
- Blog post
tags:
- Being updated
- Sample size justification
output: html_document
page_update: partial
---
**[StATS]:** **Sample size calculation for a
nonparametric test (March 8, 2005)**

I got an email inquiry about how to calculate power for a Wilcoxon
signed ranks test. I don't have a perfect reference for this, but I do
have a [brief discussion on sample size calculations for the Mann
Whitney U](../size/mann.asp) test as part of my pages on [selecting an
appropriate sample size](../size.asp). The same considerations would
apply for the Wilcoxon test. In response, the email author sent me a
link to

- **[Computing sample size for data to be analyzed with nonparametric
tests.](http://www.graphpad.com/library/BiostatsSpecial/article_154.htm%20)**.
GraphPad Software. Accessed on 2005-03-08.
www.graphpad.com/library/BiostatsSpecial/article\_154.htm

which offers the following advice:

*If you plan to use a nonparametric test, compute the sample size
required for a t test and add 15%.*

This assumes a reasonably high number of subjects (at least a few dozen)
and a distribution which is not really unusual. I had not heard this
rule; the author cites pages 76-81 of Lehmann, Nonparametrics:
Statistical Methods Based on Ranks [\[BookFinder4U
link\]](http://www.bookfinder4u.com/detail/013997735X.html). I don't
have this book, so I can only guess as to the basis for this formula.

This rule could be based, I suppose, on the lower bound for the
Asymptotic Relative Efficiency (ARE) of the Mann Whitney U test versus
the t-test, which is 0.864. This says that no matter what the
distribution, the ARE of the Mann Whitney U test can never be worse than
0.864 for a reasonably broad class of probability distributions.
Inverting that gives you an increase in the sample size by a factor of
1.157. The same statement would also apply for the Wilcoxon Signed Ranks
test, which can never have an ARE less than 0.864 compared to the paired
t-test.

You can also browse
for pages similar to this one at [Category: Sample size
justification](../category/SampleSizeJustification.html).

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/SampleSizeA.html
[sim2]: http://www.pmean.com
