---
title: "McNemar's test"
source: "New"
author: Steve Simon
date: 2023-10-31
categories:
- Blog post
tags:
- Measuring benefit and risk
output: html_document
---

I mentioned McNemar's test in a [short article][sim3] for my [Monthly Mean newsletter][sim4]. Here are more details about this test.

<!---more--->

Everytbody who knows anything about Statistics knows about the paired t-test. You have measurements done in pairs. The most common setting with paired data is a before and after measurement on the same subject. Other pairs may arise if you take measurements on a patient treated with a new therapy along with measurements on a control patient matched on age, sex, and race. Still other pairs might result from measurements on the left arm of a patient, treated with a new topical agent, and the right arm, treated with a standard topical agent.

When you have data in pairs, you calculate the difference. Then you compute the sample average of these differences as well as the standard deviation of the differences. Then you construct a test statistic, the sample average difference divided by the standard error (the standard deviation divided by the square root of the number of pairs). If this statistic is close to zero, you accept the null hypothesis, which states that the average difference in the population is equal to zero.

The paired t-test requires several assumptions. 

The first assumption is that the data from one pair of measurements is independent of the data from another pair of measurements. Be careful with this assumption. You know that withing a pair, the first measurement and the second measurement are correlated. A subject who has a high "before" measurement is likely to have a high "after" measurement. Not always, but often enough to induce a correlation.

In fact, you rely on this. A positive correlation will produce a difference that is less variable than when the two measurements are uncorrelated. Pairing is a great tool for improving the precision in a research study.

The second assumption is that the difference in measurements is normally distributed. Again, be careful with this assumption. If the first measurement is non-normal and the second measurement has a similar type of non-normality, sometimes taking the difference will cancel out the non-normality. So normality of the first measurement or the second measurement is not what you need to check. Only check the normality assumption in the difference.

So what do you do if the difference in measurements is not normal? A slight deviation from normality is not a problem, especially with a large sample size. But suppose the non-normality arises because your "before" and "after" measurements are binary. There's no way that a difference in binary measurements can come close to normal.

Quinn McNemar came to the rescue in 1947 in a publication 

Quinn McNemar, "Note on the sampling error of the difference between correlated proportions or percentages". Psychometrika, 1947-06-18, 12(2), 153–157, doi: [10.1007/BF02295996][mcn1], pmid: [20254758][mcn2]. Please note that this article is behind a paywall.

[mcn1]: https://doi.org/10.1007%2FBF02295996
[mcn2]: https://pubmed.ncbi.nlm.nih.gov/20254758

that described a test that now bears his name, the McNemar test.

To compute McNemar's test, you first need to calculate the two by two crosstabulation of the "before" and "after" measurements. 

$\begin{matrix} a & b \\ c & d \end{matrix}$

it is arbitrary whether the rows represent the "before" measurements and the columns represent the "after" measurements or the reverse.

$\begin{matrix} a & b & a+b \\ c & d & c+d \\ a+c & b+d & n \end{matrix}$

Thanks are due to Wikipedia for helping me identify the statistician behind the test and the original publication associated with the test.

[sim3]: http://www.pmean.com/news/201105.html#3

[sim4]: http://www.pmean.com/news/Archive.html

