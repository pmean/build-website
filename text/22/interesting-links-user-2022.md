---
title: "Interesting links from the UseR 2022 conference"
author: "Steve Simon"
source: new
date: "2022-06-21"
categories: 
- Blog post
tags:
- Teaching resources
output: html_document
page_update: complete
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

### Cara Thompson - Level up your labels: Tips and tricks for annotating plots

Cara Thompson illustrates some simple annotation methods that can greatly improve your talk. Her slides are [here][thom1].

I asked a question: 

Cara Thompson, One thing I would like to do with annotations is to tilt the text to match the slope of a trend line. Do you know an easy way to do this?

She suggested the geom_textpath function, which looks like it is exactly what I want. There is a [vignette][geom3] and a [github repository][came1].

[came1]: https://github.com/AllanCameron/geomtextpath
[geom3]: https://cran.r-project.org/web/packages/geomtextpath/vignettes/geomtextpath.html
[thom1]: https://www.cararthompson.com/talks/user2022

### Yihui Xie

https://slides.yihui.org/2022-useR-blogdown.html

### Julia Silge - Applied machine learning with tidymodels

Julia Silge is co-author of a book, Tidy Modeling with R, with a [free version][silg1] on the web.

She stressed the need for a "data budget" where you allocate data into various parts of the analysis, most notably testing and training.

She also talked about deployment of models, which uses something I have heard a little bit about, the RESTful API. Here is a [technical description][rest1], but there are probably resources out there that are more accessible to a beginner like me.

[rest1]: https://restfulapi.net/
[silg1]: https://tmwr.org

### Kristen Hunter - Power Under Multiplicity Project (PUMP): Estimating power, minimum detectable effect size, and sample size when adjusting for multiple outcomes

I missed this talk but it is something I am very interested in. The software is available on the [author's github site][hunt1] and you can find the slides for this talk in [PDF format][hunt2].

[hunt1]: https://github.com/MDRCNY/PUMP
[hunt2]: https://github.com/MDRCNY/PUMP/blob/main/useR2022.pdf

### Achim Zeileis - `distributions3`: From basic probability to probabilistic regression

The author prepared some wrappers that make it more convenient to use various probability functions in R. Here are a couple of references.

Hayes A. Moller-Trane R, Jordan D. Northrop P. Lang MN. Zeileis A. et al. (2022). "distributions3: Probability Distributions as S3 Objects." R package version 0.2.0. Available in [html format][haye1].

[haye1]: https://alexpghayes.github.io/distributions3/

Lang MN, Zeileis A, Stauffer R, et al. (2022). "topmodels: Infrastructure for Inference and Forecasting in Probabilistic Models." R package version 0.2-0. Available on [R-Forge][haye2].

[haye2]: https://topmodels.R-Forge.R-project.org/

The author used a data example from something called [Tidy Tuesday][tues1], which is a repository updated weekly with interesting datasets useful to learning more about R and the tidyverse.

[tues1]: https://github.com/rfordatascience/tidytuesday


### Pierre Masselot - The R package `cirls`: Constrained estimation in generalized linear models

A useful tool for putting constraints on a wide range of models. More information is at the [author's github site][mass1].

[mass1]: https://github.com/PierreMasselot

### Hannah Frick - `censored`: A tidymodels package for survival analysis

The functions to do survival analysis in R have an unusual syntax that differs from most other statistical models. This paper shows a new package, [censored][cens1], that makes accessing survival models much simpler and consistent with a general framework, tidymodels. It relies heavily on the [parsnip package][pars1].

[cens1]: https://censored.tidymodels.org/
[pars1]: https://parsnip.tidymodels.org/

The authors deserve an award for the most interesting hex sticker. Here is the hex sticker for parsnip

![Hex sticker for parsnip](https://parsnip.tidymodels.org/logo.png)

and here is the hex sticker for censored.

![Hex sticker for censored](https://censored.tidymodels.org/logo.png)

This appears to be a parsnip that has been nibbled on in several places.

### Mine Dogucu - Teaching accessibly and teaching accessibility

The final keynote talk. The slides are available [here][dogu1]. The author developed a book for Bayesian methodology and used it as an example of how to address a variety of accessibility issues.

[dogu1]: https://mdogucu.github.io/user2022/#1

The slides used a tone each time a slide changed, with the tone increasing in pitch. This makes it easier to follow which slide the speaker is on. It uses a function, xaringanExtra::use_slide_tone().

There was a great quote on one of the slides.

"As you read the book and put Bayesian methodology into practice you will make mistakes. Many mistakes. Making and learning from mistakes is simply part of learning. We hope that you persist through the struggle of learning so that you can contribute your unique insights, perspectives, and experiences to the Bayesian community."

She cited the Americans With Disabilities Act, of course, but also provided an international perspective with a reference to the United Nations Covenant on the Rights of Persons with Disabilities. She mentioned the Okabe-Ito palette for color-blind viewers. She also stressed the importance of using alt text for images and relied on some suggestions in an [article by Amy Cesal][cesa1]. She mentioned the [SAS site on accessibility][sas1] as an excellent resource.

[cesa1]: https://medium.com/nightingale/writing-alt-text-for-data-visualization-2a218ef43f81

[sas1]: https://support.sas.com/accessibility/

### Other odds and ends

I don't know which talks mentioned these, but want to list some more links here so I don't lose them.

There are a variety of regular expression libraries out there. One of them is [tre][tre1].

[tre1]: https://laurikari.net/tre/

A simple function for coding numbers into symbols, [symnum][symn1].

[symn1]: https://stat.ethz.ch/R-manual/R-devel/library/stats/html/symnum.html

A special article on research into [software engineering][rjou1].

[rjou1]: https://journal.r-project.org/archive/2021/RJ-2021-108/index.html

An example of [R release notes][rnot1].

[rnot1]: https://stat.ethz.ch/pipermail/r-announce/2022/000685.html

The [scoringRules package][scor1].

[scor1]: https://github.com/FK83/scoringRules

An overview of [knitr engines][cder1]

[cder1]: https://github.com/cderv/user2022-knitr-engines
