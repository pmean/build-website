---
title: Seminar notes. Working with molecular biologists
author: Steve Simon
source: http://www.pmean.com/06/MolecularBiologists.html
date: 2006-07-17
categories:
- Blog post
tags:
- Human side of statistics 
output: html_document
page_update: partial
---

One of the talks at the 18th Annual Applied Statistics in Agriculture Conference, sponsored by Kansas State University was "A visual aid to help a statistician work with a molecular biologist" by Debbie Boykin of the USDA Agricultural Research Service, coauthored by Earl Taliercio, also of the USDA Agricultural Research Service and Rowena Kelly from Mississippi State University. The original title of the talk was "Improving Power of Microarray Experiments by Adjusting Data so Fewer Differentially Expressed Genes are Overlooked" but Dr. Boykin reviewed the material and decided to change the focus.

Dr. Boykin's efforts to work with molecular biologists have not been easy. She warned us that these people speak a different language. The statistician needs to invest some time in learning about the technology in order to understand the problems. The scientists, on the other hand are not used to using a statistical model or experimental design to deal with variability.

She emphasized the use of simple graphical tools. Just plotting the data, and the residual deviations (there are several ways of defining deviation), can lead to some interesting and valuable insights.

She had some practical suggestions if there is a lot of problems with variation. If you remove a single spot for each gene that contributes the most variation, and re-analyze the data, then you could see if the ranking of the most important genes changes. A very interesting gene to look at carefully is one that was rated very poorly on the original data, but which is very important after removing a single data point. The thing to keep in mind is that in most microarray experiments, a Type II error is far more serious than a Type I error.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/MolecularBiologists.html
[sim2]: http://www.pmean.com