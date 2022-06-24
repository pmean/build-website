---
title: "Interesting links from the UseR 2022 conference"
author: "Steve Simon"
source: new
date: "2022-06-21"
category: 
- Blog post
tags:
- Teaching resources
output: html_document
---

I am attending the UserR conference this week. It is a virtual format, which has its advantages and disadvantages. I want to track a variety of links that I found from the various speakers at this conference.

<!--more-->

### Henrik Begtsson: Futureverse: Parallelization in R

Abstract is available [here][begt0].

A great short course. While there have been several approaches in R to take advantage of parallelization, these are not standardized and easily extensible. There are a suite of packages, known as the futureverse, that provide a simple cross-platform approach to speeding up your program using multiple cores on your computer or using a distributed computing system. The [futureverse website][begt1] provides a good overview of this work.

[begt0]: https://user2022.r-project.org/program/tutorials/#futureverse-parallelization-in-r
[begt1]: https://www.futureverse.org/

### Paula Moraga - R for Geospatial Data Science and Public Health Surveillance

Abstract is available [here][mora0].

This was a wide ranging talk covering a variety of different tools.

+ [disaggregation package][disa1]
+ [flexdashboard][rstu1]
+ [leaflet][cheu1]
+ [R Epidemics Consortium][reco1]
+ [rspatialdata][rspa1]

Her book, [Geospatial Health Data][rout1], looks quite interesting.

[cheu1]: https://cran.r-project.org/package=leaflet
[disa1]: https://cran.r-project.org/web/packages/disaggregation/vignettes/disaggregation.html
[mora0]: https://user2022.r-project.org/program/talks/#tuesday-21-june-2022-9-00-10-15am-cdt-opening-remarks-and-paula-moraga
[reco1]: https://www.repidemicsconsortium.org/
[rout1]: https://www.routledge.com/Geospatial-Health-Data-Modeling-and-Visualization-with-R-INLA-and-Shiny/Moraga/p/book/9780367357955
[rspa1]: https://rspatialdata.github.io/
[rstu1]: https://pkgs.rstudio.com/flexdashboard/

## Session 5, Big Data Management (sponsored by Oracle)

Abstracts are available [here][user05]

[user05]: https://user2022.r-project.org/program/talks/#session-5-big-data-management-sponsored-by-oracle

### Will Landau - Data version control for reproducible analysis pipelines

Version control is commonly used to track changes in code. You can also use version control to track the data created by this code. The problem is that the data dependencies on code are not easy to track and the data (because of its large size) often cannot reside in the same repository.

This talk covered two packages, gittargets and targets.

+ [gittargets][land1]
+ [targets][land2]

[land1]: https://docs.ropensci.org/gittargets
[land2]: https://books.ropensci.org/targets/

### Ilias Moutsopoulos - `bulkAnalyseR`: An accessible, interactive pipeline for analysing and sharing bulk multi-modal sequencing data

I have difficulty following talks about genetics and this talk is no exception. This package appears to customize the workflow for RNASeq data and probably other genetic datasets as well.

The author used a term "bespoke" that I had not heard before. This is a synonym for custom built.

+ [github repository][mout1]
+ [CRAN package][mout2]

[mout1]: https://github.com/Core-Bioinformatics/bulkAnalyseR
[mout2]: https://cran.r-project.org/web/packages/bulkAnalyseR

### Oliver Reiter - Providing large trade datasets for research using Apache Arrow

This talk relies on several open source systems:

+ [Apache Arrow][apa1]
+ [Apache Parquet][apa2] 
  + [Using Parquet within R][gil1]
  
as well as an R package,

+ [rvest][tidy1],

for checking to see when the source files were updated.

[apac1]: https://arrow.apache.org/
[apac2]: https://arrow.apache.org/
[gil1]: https://www.jumpingrivers.com/blog/parquet-file-format-big-data-r/  
[tidy1]: https://rvest.tidyverse.org/

### Phuong Quan - `daiquiri`: Data quality reporting for temporal datasets

A nice package that standardizes the quality review of data that has a time component. Of particular concern are time periods where there is no data at all or a time point at which the data "jumps" to a different state.

+ [daiquiri][quan1]

[quan1]: https://rdrr.io/github/phuongquan/daiquiri/f/README.md

## Session 14, Learning ggplot2

Abstracts are available [here][user14].

[user14]: https://user2022.r-project.org/program/talks/#session-14-learning-ggplot2

### Jonathan Carroll - `ggeasy`: Easy access to `ggplot2` commands

To modify elements of a plot in ggplot2 such as the axes and legend, you have to use the theme function, which is very powerful, but also tedious and difficult to remember. The ggeasy provides simple and easy to remember functions to modify these elements.

Information about ggeasy is available on

+ [CRAN][carr1]
+ [github repository][carr2]
+ [github webpage][carr3]

Dr. Carroll included a minor modification of a cute xkcd cartoon. Here is the [original][munr1].

[carr1]: https://cran.r-project.org/package=ggeasy
[carr2]: https://github.com/jonocarroll/ggeasy
[carr3]: https://jonocarroll.github.io/ggeasy/

[munr1]: https://xkcd.com/1168/

### Nicola Rennie - Learning `ggplot2` with generative art

I learned from this talk what generative art is, art derived from a computer algorithm, often with a random component.  

She included links to three github repositories

+ [aRt][renn1]
+ [genuary][renn2]
+ [nrennie_aRt][renn3]

along with a [shiny app][renn4].

She talked about two ggplot2 geoms that are not that commonly used, but which lend themselves well to generative art:

+ [geom_path][geom1]
+ [geom_raster][geom2]

She also combined graphs with disparate scalues using the [patchwork][pede1] package.

Dr. Rennie works at [Jumping Rivers][jump1] which is an interesting company that does training and consulting in R, Python, Shiny, and Machine Learning.

Totally unrelated to this talk, but a [link][stat1] I found around the same time that uses Stata to draw "spirographs" using parametric functions and polar coordinates. 

[geom1]: https://ggplot2.tidyverse.org/reference/geom_path.html
[geom2]: https://ggplot2.tidyverse.org/reference/geom_tile.html
[jump1]: https://www.jumpingrivers.com/
[pede1]: https://patchwork.data-imaginist.com/
[renn1]: https://github.com/nrennie/aRt
[renn2]: https://github.com/nrennie/genuary
[renn3]: https://github.com/nrennie/nrennie_aRt
[renn4]: https://nrennie35.shinyapps.io/nrennie_aRt/
[stat1]: https://medium.com/the-stata-gallery/spirographs-and-parametric-plots-in-stata-960e332aa035

### James Otto - `ggdensity`: Improved bivariate density visualization in R

The default mode for displaying bivariate densities in ggplot uses level curves, which are difficult to interpret. This package calculates the minimal area which contains 50%, 80%, 90% and 95% of the estimated probabilities. It also offers alternative approaches for visualizing densities.

+ [github site][otto1]

[otto1]: https://github.com/jamesotto852/ggdensity

### June Choe - Stepping into `ggplot2` internals with `ggtrace`

The ggplot2 package hides most of the internal calculations from the user, which is mostly a good thing. But if you want to explore and tinker with these internal calculations, you will not find it easy. The ggtrace package allows you to interact with the internal structure and intercept and modify some of the internal arguments. It sounds dangerous and complicated, but it really is not that bad.

+ [github repository][choe1]
+ [github webpage][choe2]
+ [slides from this talk][choe3]

[choe1]: https://github.com/yjunechoe/ggtrace/
[choe2]: https://yjunechoe.github.io/ggtrace/
[choe3]: https://yjunechoe.github.io/ggtrace-user2022/

https://www.cararthompson.com/talks/user2022

Cara Thompson, One thing I would like to do with annotations is to tilt the text to match the slope of a trend line. Do you know an easy way to do this?

https://github.com/AllanCameron/geomtextpath

Tidy Modeling with R. Max Kuhn, Julia Slige. https://tmwr.org

RESTful API

https://github.com/MDRCNY/PUMP

Tidy Tuesday 2018-38

https://alexpghayes.github.io/distributions3/


Hayes A. Moller-Trane R, Jordan D. Northrop P. Lang MN. Zeileis A. et al. (2022). "distributions3: Probability Distributions as S3 Objects." R package version 0.2.0. https://alexpghayes.github.io/distributions3/
Lang MN, Zeileis A, Stauffer R, et al. (2022). "topmodels: Infrastructure for Inference and Forecasting in Probabilistic Models." R package version 0.2-0. https://topmodels.R-Forge.R-project.org/

Twitter: QAchimZeileis Web: https://uwu.zeileis.org/

https://www.zeileis.org/papers/useR-2022.pdf

cirls

Development version in GitHub

https://github.com/PierreMasselotycirls

Manuscript currently being written

Contact
Email: pierre.Masselot(a)lshtm.ac.uk

Twitter: @MasselotPierre

### Mine Dogucu - Teaching accessibly and teaching accessibility

https://mdogucu.github.io/user2022/#1

"As you read the book and put Bayesian methodology into practice will make mistakes. Many mistakes. Making and learning from mistakes is simply part of learning. We hope that you persist through the struggle of learning so that you can contribute your unique insights, perspectives, and experiences to the Bayesian community."

United Nations Covenant on the Rights of Persons with Disabilities.

Okabe-Ito palette for color-blind viewers.

https://medium.com/nightingale/writing-alt-text-for-data-visualization-2a218ef43f81

mdQgmLgithuiMQ/iiser2Q22
ft minedogueu.com
* MineDogucu
O mdogucu





