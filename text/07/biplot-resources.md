---
title: Resources describing biplots
author: Steve Simon
source: http://www.pmean.com/07/BiplotResources.html
date: 2007-01-15
categories:
- Blog post
tags:
- Categorical data 
output: html_document
page_update: complete
---

I've written some code in R to present a graphical summary of a complex data set using biplots. I write most of the code myself using the singular value decomposition function (svd) in R. There are a wide range of techniques that can be loosely classified as biplots, such as principal components analysis, multidimensional scaling, correspondence analysis, and canonical variate analysis.

You might consider using a biplot if you have data in a matrix with rows (observations) and columns (variables) and you want to examine relationships between observations and/or between variables. Often the size of the problem (the number of observations and/or the number of variables) does not allow a simple direct examination of the data set. The singular value decomposition produces linear combinations of observations and linear combinations of columns that represent dimensions of maximal variation (a formal definition of "maximal variation" would require matrix algebra). The biplot is a simple graphical display these linear combinations. The first two or three dimensions of maximal variation often (but not always) capture interesting relationships among the observations and variables in a data set.

A biplot is an exploratory approach that the data mining experts would classify as "unsupervised learning."

A nice book that describes the biplot in its many forms is:

+ **Biplots (Monographs on Statistics and Applied Probability)**. J.C. Gower and David J. Hand (1995). Chapman & Hall/CRC. ISBN: 0412716305.

I don't have this book (yet), but a quick glance using the "Search Inside" feature of Amazon indicates that there is a wealth of information about the interrelationships among the various methods.

Two other books which discuss biplots in a lesser amount of detail are

+ **A handbook of Statistical Analyses Using R**. Brian S. Everitt, Torsten Hothorn (2006). Chapman & Hall/CRC. ISBN: 1584885394, and
+ **Visualizing Categorical Data**. Michael Friendly (2000). SAS Publishing. ISBN: 1580256600.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/BiplotResources.html
[sim2]: http://www.pmean.com