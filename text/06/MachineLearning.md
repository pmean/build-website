---
title: Machine Learning tools in R
author: Steve Simon
source: http://www.pmean.com/06/MachineLearning.html
date: 2006-01-24
categories:
- Blog post
tags:
- Data science
- R software 
output: html_document
page_update: partial
---

There are a variety of different models that perform supervised learning or classification problems

- Diagonal Linear Discriminant Analysis (DLDA)
- Neural Networks (NN)
- Support Vector Machines (SVM)
- k Nearest Neighbors (kNN)
- Bagging
- Boosting

R has a library, MLInterfaces, that puts a uniform interface in front of the input and output from all of these procedures. I could not load the MLInterfaces library directly, but could download and then install the package from

- http://www.bioconductor.org/packages/bioc/1.6/src/contrib/html/MLInterfaces.html

By the way, I am working with a wonderful book now,

- **Bioinformatics and Computational Biology Solutions Using R and Bioconductor.** Gentleman R, Huber W, Carey VJ, Irizarry RA, Dudoit S (2005) New York, New York: Springer. ISBN: 0387251464. [\[BookFinder4U link\]](http://www.bookfinder4u.com/detail/0387251464.html)

that offers a lot of valuable advice on how to use the many advanced features in R and Bioconductor.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/06/MachineLearning.html
[sim2]: http://www.pmean.com/original_site.html
