---
title: "What are the important packages for R"
author: "Steve Simon"
source: "http://blog.pmean.com/important-packages-for-r/"
date: "2017-07-27"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

I got a question from one of the students in my "Introduction to R" class asking what are the important packages for R. That's a hard question to answer, but if I got only easy questions, they wouldn't be paying me the big bucks. Here's what I think.

<!---More--->

The R packages often serve to meet specialized needs, and you'll know if you need a package only when you have that specialized need. Some people, for example, need to run something called IRT (Item Response Theory), and if you do, you'll need to download an IRT package like mirt. I am not an expert on IRT, so I can't say whether this is a good package or not.

If you want to find out what packages are available in a particular specialized area, you can use the [Search menu on the Comprehensive R Archive network][cran1]. There are also summaries of particular areas in R called [Task Views][cran2]. These are volunteer led efforts to summarize all of the packages in a certain area like Econometrics, Meta-analysis, or? Time Series Analysis.

There are also many R packages that exist to meet general needs. The ggplot2 library, for example, provides a different approach to graphical display and data.table provides an alternative to data frames that is faster and easier to use. There are several of these packages that I use regularly: dplyr, ggplot2, magrittr, and tidyr, and I am thinking about revising my Introduction to R class to rely more heavily on these packages.

There area a series of general use packages developed by Hadley Wickham and others called [the tidyverse][tidy1] that are worth considering. I have used some of these packages, but not all of them.

There are so many R packages out there, that it is tough to know which one to choose. I have an [earlier blog entry][sim3] that talks about how to decide which package is best among several competing packages.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/important-packages-for-r/
[sim2]: http://blog.pmean.com

[sim3]: http://new.pmean.com/which-r-package/index.html

[cran1]: https://cran.r-project.org/search.html
[cran2]: https://cran.r-project.org/web/views/

[tidy1]: http://tidyverse.org/
