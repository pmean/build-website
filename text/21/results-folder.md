---
title: "How to save RMarkdown output in the results folder"
source: new
date: "2021-01-23"
categories:
- Blog post
tags:
- R software
output: html_document
page_update: complete
---

I have a directory structure for most projects that is based on the recommendations in [Wilson et al](https://doi.org/10.1371/journal.pcbi.1005510). In particular, I store program code in the src folder and output in the results folder. R Markdown programs, however, present a bit of a challenge in that the output, by default, is stored in the same folder that the R Markdown code came from. It's possible to fix this by modifying the way the knit button works in R Studio.

<!--more-->

Yihui Xie explains the general approach to modifying how this works [here](https://bookdown.org/yihui/rmarkdown-cookbook/custom-knit.html), but cautions against doing anything too complex this way, as it makes your code difficult to maintain.

To achieve my goal of storing output in the results folder, you need to add the following lines to your yaml header.

```
knit: (function(inputFile, encoding) {
  rmarkdown::render(inputFile, encoding = encoding,
  output_dir = "../results", output_format = "all") })  
```
I forgot where I first saw this, and Google is not helping, but for the record, I did borrow this code from somewhere else. The only good thing from my Google search is that I discovered some alternate solutions that I might want to explore when I have time.

One example is the R package, [ezknitr](https://cran.r-project.org/web/packages/ezknitr/README.html), which uses a wrapper function around the knit function in knitr. I have not tried this package yet, but it looks interesting.

There is some [additional commentary about this](https://github.com/rstudio/rmarkdown/issues/587) on the RStudio github site and [here](https://community.rstudio.com/t/is-it-possible-to-save-the-html-output-in-a-directory-which-is-not-the-one-where-the-rmd-file-resides/3588) on the RStudio community webpage.
