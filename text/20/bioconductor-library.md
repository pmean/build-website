---
title: "The Bioconductor library of packages for R"
author: "Steve Simon"
source: new
date: "2020-05-12"
categories:
- Blog post
tags:
- R software
output: html_document
page_update: complete
---

Back in the previous decade, I spent a lot of time working on the various statistical methods required for genetics studies. It was difficult, but fun. For a variety of reasons, I did not get a chance to explore further, until just recently. It turns out that if you want to do good work in this area, you should look at a group of packages in R collectively known as Bioconductor. Here is a brief explanation of what Bioconductor is.

<!---More--->

The work on Bioconductor started in 2002 at the Fred Hutchinson Cancer Center, but it has expanded to an international effort. The [Wikipedia page](https://en.wikipedia.org/wiki/Bioconductor) on Bioconductor shows the progress of this project from 15 packages in 2002, to almost two thousand in 2020.

The Bioconductor packages should work on any computer system able to run R. There are applications that make it (relatively) easy to set up a working system of Bioconductor and R on the cloud. The programmers who have developed the Bioconductor packages have tried to maintain a high level of good quality documentation including [vignettes](http://www.bioconductor.org/help/package-vignettes/), short examples of how to use each package along with the code.

You download the Bioconductor packages through a special interface, [BiocManager](https://cran.r-project.org/web/packages/BiocManager/vignettes/BiocManager.html). You download BiocManager just like any other R package, but then this interface controls the access to all other Bioconductor packages.

Bioconductor maintains a helpful and detailed [website](https://www.bioconductor.org/) with installation instructions, a variety of teaching resources, and information for developers who want to join the effort to improve Bioconductor.
