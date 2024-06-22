---
title: Accuracy of computations
author: Steve Simon
source: http://www.pmean.com/03/accuracy.html
date: 2003-11-26
categories:
- Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

#### Dear Professor Mean,

I've heard a lot about accuracy problems with Microsoft Excel, but I'd like to see an example where this really is a problem.

#### Dear Reader,

It takes a fairly extreme data set to show this, but Excel does indeed have some problems with numerical accuracy.

I designed a simple benchmark data set that tests the accuracy of Analysis of Variance calculations. Some software, including Microsoft Excel will have problems for data that is **almost perfectly constant**. The benchmark data set is computed as

![](http://www.pmean.com/new-images/03/accuracy1.gif){width="330" height="123"}

You can show through simple algebra that if I and J are both odd, this benchmark produces Mean Square Between Treatments (MSTR) of 0.01 J and Mean Square Within Treatments (MSE) of 0.01. But when gamma is large, the data becomes so nearly constant that many software programs will have trouble computing MSTR and MSE.

![](http://www.pmean.com/new-images/03/accuracy2.gif){width="551" height="328"}

Shown above is an example of the benchmark data set with I=5, J=7, and gamma=1,000. For these values, Excel produces very accurate results.

![](http://www.pmean.com/new-images/03/accuracy4.gif){width="587" height="479"}

Notice that MSTR (Between Groups) is 0.07 and MSE (Within Groups) is 0.01 (see above), as they should be.

![](http://www.pmean.com/new-images/03/accuracy3.gif){width="551" height="328"}

Shown above is the same benchmark data set with I=5, J=7 and gamma=1,000,000,000.

![](http://www.pmean.com/new-images/03/accuracy5.gif){width="587" height="479"}

With this extreme value, Excel produces a **negative value** for MSTR (see above), which is mathematically impossible. By examining values of gamma somewhere between these two extremes, you can start to see where Excel tends to degenerate.

#### Download the spreadsheet yourself.

You can [download the Excel spreadsheet][exc1] yourself. If you get different results using a different version of Excel, please let me know. These examples use Excel 2002.

#### Where the problem lies

This benchmark data set shows an example of **poor diagnostics**. When you encounter data that only varies in the 10th significant digit, you should either refuse to analyze the data or you should set both MSTR and MSE to zero. Unfortunately, though, Excel does not diagnose this extreme data set properly and produces a very bad result with no warning to the user.

Other software programs, like SAS and SPSS, have had problems with this benchmark back when this paper was published (1990), though I have not tested either program recently.

David Heiser was nice enough to point out that if you center the data, you get much better results. Centering is a commonly used approach where you subtract the overall mean (or something that you expect would be close to the overall mean) before analyzing the data. I've updated the Excel spreadsheet to show how much centering can help.

In an ideal world, Excel should center the data as part of its internal calculations. Although Excel doesn't center the data, a careful data analyst would still do this prior to any serious data computations.

#### Further reading

Stephen D Simon, James P Lesage. Assessing the accuracy of ANOVA calculations in statistical software. Computational Statistics and Data Analysis 1990: 8(3); 325-332.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/03/accuracy.html
[sim2]: http://www.pmean.com/original_site.html

[exc1]: http://www.pmean.com/new-images/03/anova%20benchmark.xls
