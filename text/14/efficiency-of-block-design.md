---
title: "Estimating the efficiency of a completely randomized block design"
author: "Steve Simon"
source: "http://blog.pmean.com/efficiency-of-block-design/"
date: "2014-03-12"
categories:
- Blog post
tags:
- Analysis of variance
output: html_document
page_update: complete
---

I needed to look up a formula for the estimating the relative efficiency
to a completely randomized block design to a design without blocking.


<!---More--->

A quick search on Google revealed the formula:

![](http://www.pmean.com/new-images/14/efficiency-of-block-design01.png)



Here's where I needed the formula. I was running a Monte Carlo
simulation of three different statistical estimators. Each replication
of the simulation required you to generate a binomial random variable
with 100 trials and a probability of success of 0.5. You could just
generate these values on the fly, but it makes sense to save the
binomials that you used for one estimator and re-use the same ones for
the other two estimators. This makes each replication in the Monte Carlo
simulation a block, and you can estimate the precision that you have
gained by the careful re-use of these binomials by fitting a completely
randomized block design.

     > tst.m1 <- lm(bb~trt+blk,data=mcd)
     > anova(tst.m1)
     Analysis of Variance Table
     Response: bb
                 Df<U+00A0> Sum Sq Mean Sq<U+00A0><U+00A0> F value<U+00A0><U+00A0><U+00A0> Pr(>F)
     trt<U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0> 2 11.5617<U+00A0> 5.7809 35659.326 < 2.2e-16 ***
     blk<U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0> 999<U+00A0> 2.2959<U+00A0> 0.0023<U+00A0><U+00A0><U+00A0> 14.176 < 2.2e-16 ***
     Residuals 1998<U+00A0> 0.3239<U+00A0> 0.0002
     ---
     Signif. codes:<U+00A0> 0 <U+0091>***<U+0092> 0.001 <U+0091>**<U+0092> 0.01 <U+0091>*<U+0092> 0.05 <U+0091>.<U+0092> 0.1 <U+0091> <U+0092> 1
     > (999*0.0023+2000*0.0002)/(2999*0.0002)
     [1] 4.497666

The re-use of the binomials has resulted in a 4.5 fold improvement in
precision.

This formula was published in *Experimental Design and Data Analysis for
Biologists* by Gerald Peter Quinn, Michael J. Keough, (ISBN:
9780521009768) and digitized by Google. There is a huge controversy over
the<U+00A0> Google project to digitize a whole bunch of books and make them
accessible through their search engine. But I have to admit that I'm
glad to have access to all those books for finding a formula like this.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/efficiency-of-block-design/
[sim2]: http://blog.pmean.com