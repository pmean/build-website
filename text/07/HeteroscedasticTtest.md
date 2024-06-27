---
title: Should I use the heteroscedastic t-test?
author: Steve Simon
source: http://www.pmean.com/07/HeteroscedasticTtest.html
date: 2007-07-26
categories:
- Blog post
tags:
- Hypothesis testing
output: html_document
page_update: complete
---

### Dear Professor Mean,

I am using Excel to do a t-test to see if there is a difference between blood glucose levels in babies who received 2 different treatments. I want to know if the new treatment increased blood glucose levels. When I use the t-test function in Excel, it asks me homoscedastic or heteroscedastic? Can you help?*

### Dear Reader,

I'm going to provide a good news/bad news answer to your question. The bad news is that there is no consensus on this in the research community. You will get **different opinions about which test to use depending on which statistician you ask**. The good news is that no matter which choice you make, I can find an expert who will tell you that you made the right choice.

My current recommendation is to use the homoscedastic test unless you have a strong a priori reason to believe that the data come from two populations with markedly different standard deviations. For what it's worth, I have made a variety of different recommendations in the past as my thinking on this issue has evolved.

First, let's take a look at the Excel help file.

![](http://www.pmean.com/new-images/07/HeteroscedasticTtest01.gif)

The choice that you are asking about, of course, is between type=2 and type=3. **This function produces a p-value** for testing the hypothesis that the two data sets come from populations with the same population mean. Unfortunately, **Excel doesn't produce a confidence interval for the difference between the two means**, which is usually of more interest to researchers. So you would be better off using SPSS.

But in SPSS you would still have the same dilemma. SPSS doesn't make you chose when you select the dialog box for the t-test. It presents both versions of the test.

The **homoscedastic test** (note other terms/spelling, such as equal variances, homoscedasticity, homoskedastic, homoskedasticity) **places an extra assumption on your back**. It requires that the two populations that I just referred to have to have the same population standard deviation. This is in addition to the assumption that all the data values are independent and the assumption that the data follow a normal distribution (the classic bell shaped curve).

The **heteroscedastic test** (note other terms/spelling, such as unequal variances, heteroscedasticity, heteroskedastic, heteroskedasticity) **saves you having to make that assumption**. The individual data values still have to be independent and they still have to come from normal distributions, but with the heteroscedastic test, the two populations could have different population standard deviations and the test would still be valid. Sometimes statisticians call this the Behrens-Fisher problem. Sometimes they call the test the Satterthwaite approximation and sometimes the Welch-Satterthwaite approximation. That's just because we like to honor some of the people who've made contributions in this area.

There are **two competing issues** here, **validity and power**. If the test is invalid that means that the sampling distribution that we have proposed for the test statistic is not the correct one and the alpha level of the test may be different that what you intended it to be. But when both tests are valid, the homoscedastic test will have more precision and power because it uses a larger value for the degrees of freedom.

So no strategy is risk free. The **conservative position is to always use the heteroscedastic test**. This approach makes the implicit assumption that protecting the alpha level of the test is always more important than protecting the power of the test. It is also a very simple approach, and because of this simplicity, I have advocated the conservative position from time to time.

The **liberal position is to use the homoscedastic test unless circumstances demand otherwise**. There are three different ways of assessing when the circumstances are severe.

Some people **use the homoscedastic test unless a particular test of homoscedasticity, such as Levene's test is rejected**. This is the approach that SPSS implicitly encourages, because it presents Levene's test right next to the choices for homoscedastic and heteroscedastic tests. I dislike this approach because Levene's test is sensitive to the sample size and may reject too often for large samples sizes and too infrequently for small sample size. There is no evidence that the validity of the homoscedastic test is affected by sample size.

Another way to assess the circumstances is to use a cut-off that is independent of the sample size. In the past, I have recommended that you examine the ratio of the two sample standard deviations and **only switch to the heteroscedastic test if the two sample standard deviations differ by a factor of 3 or more**. I don't have any empirical evidence for this approach, but I suspect it would work better than the above approach.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/HeteroscedasticTtest.html
[sim2]: http://www.pmean.com
