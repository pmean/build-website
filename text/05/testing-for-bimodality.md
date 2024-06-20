---
title: Testing for bimodality
author: Steve Simon
date: 2005-09-15
categories:
- Blog post
tags:
- R software
- Stata software
output: html_document
page_update: partial
---

Testing for bimodality is a rather tricky thing. A recent discussion of tests of bimodality on edstat-l, though, yielded a few promising leads relating to the Dip test.

<!---More--->

This test was first describe in

- J. A. Hartigan, P. M. Hartigan. The Dip Test of Unimodality. The Annals of Statistics. 1985;13(1):70-84. 

- P. M. Hartigan. Algorithm AS 217: Computation of the Dip Statistic to Test for Unimodality. Journal of the Royal Statistical Society. Series C (Applied Statistics). 1985;34(3):320-325. Article is [behind a paywall][har1].

[har1]: https://www.jstor.org/stable/2347485

There is software to run the dip test in [R][mae1], [Stata][cox1], and [FORTRAN][app1].

[mae1]: http://cran.r-project.org/web/packages/diptest/diptest.pdf (R)
[cox1]: http://ideas.repec.org/c/boc/bocode/s456998.html (Stata)
[app1]: http://lib.stat.cmu.edu/apstat/217 (FORTRAN)

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/Bimodality.html
[sim2]: http://www.pmean.com/original_site.html
