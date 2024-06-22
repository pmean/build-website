---
title: "How to run SAS inside an RMarkdown file"
source: new
date: "2021-01-23"
categories:
- Blog post
tags:
- R software
output: html_document
page_update: complete
---

I create a lot of teaching resources using R Markdown. A question arises about how to incorporate SAS code and output into these teaching resources. I had written earlier about SASWeave, and that is one possible solution. There are other solutions as well.

<!--more-->

There is a SAS engine that you can call. Details are found in [section 15.7](https://bookdown.org/yihui/rmarkdown-cookbook/eng-sas.html) of the R Markdown Cookbook. An interesting alternative is the [SASMarkdown package](https://CRAN.R-project.org/package=SASmarkdown). A couple of nice descriptions of both appear on a blog post [by Melinda Higgins](https://www.r-bloggers.com/2019/09/create-rmarkdown-document-with-sas-code-and-output-sas-engine/) and another by [Ken](http://ritsokiguess.site/docs/2018/08/20/sas-in-r-markdown/).
