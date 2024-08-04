---
title: "History of R"
author: "Steve Simon"
source: "http://blog.pmean.com/history-of-r/"
date: "2014-05-30"
categories:
- Blog post
tags:
- R software
output: html_document
page_update: partial
---

### R sprouted from S

![Figure 1. Book cover](http://www.pmean.com/new-images/14/history-of-r-book-cover-1988.jpg)

<div class="notes">

I'm helping to put together three separate classes, Basic data management and analysis with R, SAS, SPSS. As part of these classes, I need to discuss the history of these programs, because understanding that history will help you better understand the strengths and weaknesses of each statistical package. Here's a brief history of R.

R has its roots in a program called S. S was developed in a time when single letters were in vogue (as in the C programming language).

Image source: Amazon

</div>

<!---More--->

### John Chambers

![Figure 2. Photo of John Chambers](http://www.pmean.com/new-image/14/history-of-r-chambers-pic.jpg)

<div class="notes">

The primary author of the S language was John Chambers. Often he gets sole credit, there were two other major contributors.

Image source: [AT&T][att1]

</div>

### Richard Becker

![Figure 3. Photo of Richard Becker](http://www.pmean.com/new-images/14/history-of-r-becker-pic.jpg)

<div class="notes">

Also involved with S, is another statistician, Richard Becker.

Image source: [AT&T][att1]

</div>

### Allan Wilks

![Figure 4. Photo of Allan Wilks](http://www.pmean.com/new-images/14/history-of-r-wilks-pic.jpg)

<div class="notes">

A third author was Allan Wilks.

Image source: [AT&T][att1]

[att1]:http://stats.research.att.com/pics/jmc2.jpg, http://stats.research.att.com/history.php


</div>

### Bell Labs

![Figure 5. Aerial photograph of Bell Laboratories](http://www.pmean.com/new-images/14/history-of-r-bell-labs.png)


<div class="notes">

All three statisticians worked at Bell Labs. Bell Labs was a research division of AT&T (affectionately known as Ma Bell), back when Ma Bell held a monopoly over telephone service.

Image source: Wikipedia

</div>

### Features of S.

+ Intended for internal use.
+ Freely available to anyone.
+ Interactive
+ Unique capabilities
  + Emphasis on functions
  + Object-oriented features

<div class="notes">

The author of S, John Chambers, was a statistician at Bell Laboratories wrote several versions in the 1970s through the 1990s. This packages was intended for internal research use, but the code was freely available to anyone who was interested.

S was an interactive programming language, which made it quite different from other statistical software systems of the times, like SAS and SPSS.

Two unique features of the S programming language were the use of functions rather than macros for extending the language and the introduction of object oriented features (classes, objects, and methods).

</div>

### S-plus

![Figure 6. Venables and Ripley book cover](http://www.pmean.com/new-images/14/history-of-r-book-cover-2001.jpg)

<div class="notes">

A commercial adaptation of S was introduced by Statistical Sciences Corporation in the 1990s and became very popular. Through various mergers and buyouts, S+ has been marketed by Mathsoft, Insightful Software, and more recently Tibco Corporation.

Image source: Amazon

</div>

### Beginnings of R (1/2)

![Figure 7. Excerpt from research paper](http://www.pmean.com/new-images/14/history-of-r-ihaka-1996.png)

<div class="notes">

About the same time, Ross Ihaka and Robert Gentleman started an effort to produce an open source and freely distributed version of S, called R. Their publication:

Ross Ihaka and Robert Gentleman. R: A language for data analysis and graphics. Journal of Computational and Graphical Statistics, 5(3):299-314, 1996. Available in [pdf format][iha1].

[iha1]: https://www.stat.auckland.ac.nz/~ihaka/downloads/R-paper.pdf

outlined the features of the R programming language. 

</div>

### Beginnings of R (2/2)

![Figure 8. CD of release 1.0 of R](http://www.pmean.com/new-images/14/history-of-r-cd.png)

<div class="notes">

The first major release of R (version 1.0.0) appeared in 2000.

</div>

### Growth in popularity

![Figure 9. Excerpt from New York Times article](http://www.pmean.com/new-images/14/history-of-r-nytimes-2009.png)

<div class="notes">

Soon R eclipsed S+ in popularity. One measure of the breadth of R's impact was a New York Times article published in 2009.

Ashlee Vance. Data Analysts Captivated by R's Power. The New York Times, 2009-01-06. Available in [html format][van1].

[van1]: http://www.nytimes.com/2009/01/07/technology/business-computing/07program.html

</div>

### R Foundation

![Figure 10. Excerpt from website](http://www.pmean.com/new-images/14/history-of-r-foundation-page.png)

<div class="notes">

There is a non-profit group, the R Foundation for Statistical Computing, that coordinates many of the efforts in the maintenance and development of the R programming language.

</div>

### Revolution Analytics

![Figure 11. Excerpt from article](http://www.pmean.com/new-images/14/history-of-r-revolution-analytics.png)

<div class="notes">

Several commercial companies have piggybacked on R, including Revolution Analytics, which sells an enhanced version of R with capabilities for handling very large data sets.

Image source: Dataversity

https://www.dataversity.net/microsoft-set-acquire-revolution-analytics/

</div>

### R packages

![Figure 12. Excerpt from website](http://www.pmean.com/new-images/14/history-of-r-packages.png)

<div class="notes">

One of the most popular features of R is the ease with which outside developers can extend the R language through libraries. Most of these libraries are available for free under and open source license at the [Comprehensive R Archive Network][cra1].

[cra1]: http://cran.us.r-project.org/

</div>

### Bioconductor

![Figure 13. Excerpt from website](http://www.pmean.com/new-images/14/history-of-r-bioconductor)

<div class="notes">

You can also find a major effort to develop freely available libraries for statistical analysis of genetic data through the [Bioconductor project][bio1].

[bio1]: http://www.bioconductor.org/

</div>

### BUGS

![Figure 14. Excerpt from website](http://www.pmean.com/new-images/14/history-of-r-bugs)

<div class="notes">

A lot of stand-along programs have leaned heavily on R to provide an interface to run their programs and process their outputs. Notable among these are a series of programs for Bayesian analysis, starting with BUGS. BUGS is an acronym for Bayes Using Gibbs Sampling. While it can be run by itself, it is a lot easier and more convenient to run it from inside R, and most applications of BUGS appear to use R. Other packages, jags (Just Another Gibbls Sampler), and Stan (named after the famous mathematician, Stan Ulam), also rely on R. It is worth noting that these programs are also easily run from Python.

</div>

### Menu driven version of R

![Figure 15. Excerpt from website](http://www.pmean.com/new-images/14/history-of-r-rcommander.png)

<div class="notes">

R is an interactive programming language, but menu driven versions of R are available. The most notable of these is [R Commander][rco1]

[rco1]: http://socserv.mcmaster.ca/jfox/Misc/Rcmdr/

</div>

### RStudio

![Figure 16. Excerpt from website](http://www.pmean.com/new-images/14/history-of-r-rstudio.png)

<div class="notes">

RStudio is an integrated development environment for R. The company that produces RStudio offers both free and commercial versions. They also employ many of the people listed below who have made major contributions to R.

</div>

### Recent major contributions: Frank Harrell

![Figure 17. Title slide from Frank Harrell talk](http://www.pmean.com/new-images/14/history-of-r-harrell.png)

<div class="notes">

Frank Harrell has produced a lot of advanced statistical models for R. This includes some extremely useful spline tools. His book, Regression Modeling Strategies, a classic text, uses R code throughout.

Image source: [R-bloggers][rbl1]

[rbl1]: https://www.r-bloggers.com/2020/11/frank-harrell-controversies-in-predictive-modeling-and-machine-learning-2/

</div>

### Recent major contributions: Hadley Wickham

![Figure 18. Title slide from presentation](http://www.pmean.com/new-images/14/history-of-r-wickham.png)

<div class="notes">

Hadley Wickham has written or co-written a large number of libraries in R that have refashioned R into almost a completely new programming language.

</div>

### The tidyverse library

![Figure 19. Hex sticker for tidyverse](https://github.com/rstudio/hex-stickers/raw/master/PNG/tidyverse.png)

<div class="notes">

Originally, these packages were referred to collectively as the "Hadleyverse." But Hadley Wickham discouraged that in favor of the name "tidyverse."

The tidyverse package is a collection of several different packages which provide enhancements to the R programming language. These libraries share a common programming philosophy. There are several dozen libraries in  total, but only a core set of libraries are loaded with the library(tidyverse) function. Other tidyverse packages must be loaded separately.

The tidyverse is a collection of packages for the R programming language developed by Hadley Wickham and others. I single out Hadley Wickham because he has been a major force behind the programming philosophy of the tidyverse and the lead author for many of the most important packages in the tidyverse.

The tidyverse packages embrace some guiding principles described in the [tidyverse manifesto][tid1]. The packages in the tidyverse encourage the use of tidy data. Tidy data is related to the database concept of normalization, though it is described from a statistical perspective (which means that an idiot like me can still understand it). The general concepts behind tidy data are described in a [vignette][tid2] and in a [2014 publication][tid3] in the Journal of Statistical Software. The tidyverse research team has published a detailed guides on [coding practices][tid4] and [program style][tid5] that are consistent with their principles.

[tid1]: https://tidyverse.tidyverse.org/articles/manifesto.html
[tid2]: https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html
[tid3]: https://www.jstatsoft.org/article/view/v059i10
[tid4]: https://design.tidyverse.org/
[tid5]: https://style.tidyverse.org/

Here are some of the libraries in core set of libraries.

</div>

### dplyr

![Figure 20. Hex sticker for dplyr](https://github.com/rstudio/hex-stickers/raw/master/PNG/dplyr.png)


<div class="notes">

dplyr provides a set of functions for data manipulation.

</div>

### ggplot2

![Figure 21. Hex sticker for ggplot2](https://github.com/rstudio/hex-stickers/raw/master/PNG/ggplot2.png)

<div class="notes">

While R has some excellent graphics capabilities built in, they are somewhat difficult to use. The ggplot2 library simplifies the process of graphing by separating the parts of a graph into different layers. It is based on a conceptual framework developed by Leland Wilkinson in his book, The Grammar of Graphics.

</div>

### magrittr

![Figure 22. Hex sticker for magrittr](https://github.com/rstudio/hex-stickers/raw/master/PNG/pipe.png)

<div class="notes">

magrittr provides a pipe operator. The concept of the pipe was developed first in Unix systems almost 50 years ago. The pipe operator (percent-greater than-percent) takes input from the left side of the operator and feeds it to a function listed on the right side of the operator. Pipes can be chained together. They make your code simpler and more readable.

We may or may not cover pipes in this class.

</div>

### readr

![Figure 23. Hex sticker for readr](https://github.com/rstudio/hex-stickers/raw/master/PNG/readr.png)

<div class="notes">

While R has many functions for reading text data, they are slow for very large files. The readr library reads text files much faster, offers some enhancements, and provides a simpler syntax.

</div>

### stringr

![Figure 24. Hex sticker for stingr](https://github.com/rstudio/hex-stickers/raw/master/PNG/stringr.png)

<div class="notes">

stringr simplifies the manipulation of string or text data.

</div>


### tibble

![Figure 25. Hex sticker for tibble](https://github.com/rstudio/hex-stickers/raw/master/PNG/tibble.png)

<div class="notes">

R has a variety of internal storage formats: arrays, lists, matrices, and data frames. We will focus mostly on data frames in this class. The tibble package offers an internal storage format, a tibble, that is very similar to a data frame, but it offers some extra features for convenience and simplicity.

</div>

### tidyr

![Figure 26. Hex sticker for tidyr](https://github.com/rstudio/hex-stickers/raw/master/PNG/tidyr.png)

<div class="notes">

tidyr provides a series of functions that help with data manipulation, especially for longitudinal data.

</div>

### Other packages in the tidyverse

+ In the core package
  + forcats
  + purr
+ Outside the core package
  + broom
  + lubridate
  + readxl
  + many others
  
<div class="notes">

Two other packages in the tidyverse core, forcats and purr, are for advanced applications.

Outside of the core package, some of the packages that I like are broom (which simplifies and standardizes the output from different data analysis functions)  lubridate (which simplifies the manipulaton of dates), and readxl (which reads Microsoft Excel files). There are quite a few others.

</div>


### Recent major contributions: Yihui Xie

![Figure 27. Exceprt from github site](http://www.pmean.com/new-images/14/history-of-r-xie.png)

<div class="notes">

Another prolific contributor to R is Yihui Xie.

</div>

### knitr

![Figure 28. Hex sticker for knitr](https://github.com/rstudio/hex-stickers/raw/master/PNG/knitr.png)

<div class="notes">

He wrote the package knitr back in 2012 that has revolutionized the field of reproducible research. knitr is an improvement on the package sweave. It takes R code, runs it and creates documents in a variety of formats using Pandoc.

</div>

### bookdown

![Figure 29. Hex sticker for bookdown](https://github.com/rstudio/hex-stickers/raw/master/PNG/bookdown.png)

<div class="notes">

He wrote also wrote a package, bookdown, that has revolutionized the book publishing world. You can now write an entire book in R with the help of this package. It has publication ready graphics, tables, and formulas. It produces the table of contents, and an index. Over a thousand books have been produced using bookdown, including the definitive guide to bookdown itself, bookdown: Authoring Books and Technical Documents with R Markdown by Yihui Xie.

</div>

### Other works by Yihui Xie

+ blogdown
+ tinytex
+ xaringan

<div class="notes">

There are a lot more works by Yihui Xie that are worth discussing. blogdown uses R Markdown code to create a blog site. It is based on an open source web development system called Hugo. I am currently trying to convert my website (over 1,800 pages) to blogdown.

tinytex is an attempt to develop a minimal package for producing LaTex documents. It has all the features that you need to work with R Markdown, but does not include some of the extra features found in other versions of LaTex, that needlessly (in his opinion) add to the complexity of using LaTeX as part of R Markdown.

xaringan is a presentation format using html that offers an alternative to beamer and slidy.

</div>


### If you want to learn more: Rickert 2014

![Figure 30. Excerpt from blog post](http://www.pmean.com/new-images/14/history-of-r-rickert-blog.png)

<div class="notes">

The Revolutions Analytic blog posted a [nice summary of a [John Chambers talk][cha2] on the history of S at the Use R! 2014 conference

[cha2]: http://blog.revolutionanalytics.com/2014/07/reflections-on-john-chambers-userr-2014-keynote-address.html

</div>

### If you want to learn more: Chambers 2006

![Figure 31. Title slide from presentation](http://www.pmean.com/new-images/14/history-of-r-chambers-2006.png)

<div class="notes">

That article has links to the [slides (PDF format)][cha3] of a 2006 talk (again on the history of S) by John Chambers.

[cha3]: http://www.r-project.org/user-2006/Slides/Chambers.pdf

</div>

### If you want to learn more: Hastie 2014

![Figure 32. Excerpt from blog post](http://www.pmean.com/new-images/14/history-of-r-hastie-interview.png)

<div class="notes">

as well as a [video interview of John Chambers by Trevor Hastie][has1].

[has1]: http://blog.revolutionanalytics.com/2014/01/john-chambers-recounts-the-history-of-s-and-r.html

</div>

### If you want to learn more: Ihaka 1998

![Figure 33. Excerpt from research paper](http://www.pmean.com/new-images/14/history-of-r-ihaka-1998.png)

<div class="notes">

and a [1998 paper (PDF format)][iha2] by Ross Ihaka on the past (!) and future of R presented at the Interface conference.

[iha2]: https://www.stat.auckland.ac.nz/~ihaka/downloads/Interface98.pdf

</div>

### If you want to learn more: Becker (no date)

![Figure 34. Excerpt from paper](http://www.pmean.com/new-images/14/history-of-r-becker.png)

<div class="notes">

Richard Beckman. A Brief History of S. Available in [pdf format][bec1]

[bec1]: https://www.math.uwaterloo.ca/~rwoldfor/software/R-code/historyOfS.pdf

</div>

### If you want to learn more: Smith 2020

![Figure 35. Excerpt from website](http://www.pmean.com/new-images/14/history-of-r-smith-video.png)

<div class="notes">

David Smith, 20 years of R, presented at DC satRdays. Available as a [YouTube video][smi1]

[smi1]: https://www.youtube.com/watch?v=iq_biXEIx-U

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/history-of-r/
[sim2]: http://blog.pmean.com

</div>
