---
title: EM Algorithm
author: Steve Simon
date: 2004-03-15
categories:
- Blog post
tags:
- Statistical computing
output: html_document
page_update: partial
---
I received an email question about the EM Algorithm. This is a
computational approach that works well for missing data problems and
data models with latent (unobserved) variabels. The basic approach is to
estimate the missing or latent data (E-step), compute maximum likelihood
estimates that incorporates the missing/latent estimates (M-step), then
update the missing or latent data (E-step) and so forth. There's a book
by McLachlan and Krishnan, The EM Algorithm and Extensions, that I have
not seen, but which sounds pretty good. There are also a few good web
sites about this algorithm.

**[The Expectation Maximization Algorithm
\[pdf\]](http://www.cc.gatech.edu/~dellaert/em-paper.pdf)**. Dellaert F,
Georgia Institute of Technology. Accessed on 2004-03-15.
www.cc.gatech.edu/\~dellaert/em-paper.pdf

**[The EM Algorithm and its
Extensions](http://cm.bell-labs.com/cm/ms/departments/sia/project/em/)**.
Bell Laboratories. Accessed on 2004-03-15.
cm.bell-labs.com/cm/ms/departments/sia/project/em/

**[A Gentle Tutorial of the EM Algorithm and its Application to
Parameter Estimation for Gaussian Mixture and Hidden Markov Models
\[pdf\]](http://www.vision.ethz.ch/ml/slides/em_tutorial.pdf)**. Bilmes
JA, U.C. Berkeley. Accessed on 2004-03-15.
www.vision.ethz.ch/ml/slides/em\_tutorial.pdf

If I get some time, I will show a simple example on my web pages.

You can find an [earlier version](http://www.pmean.com/04/em.html) of this page on my [original website](http://www.pmean.com/original_site.html).
