---
title: "Data masking in R"
source: "New"
author: Steve Simon
date: "2024-10-05"
categories: Recommendation
tags:
- R programming
output: html_document
page_update: no
---

![](http://www.pmean.com/new-images/24/data-masking-in-r-01.png "Excerpt from recommended website")

::: notes

One major innovation of tidyverse is the use of non-standard evaluation. It allows you to avoid a lot of repetition of dataframe names in R code. I wrote a [page about non-standard evaluation][sim3] about a year ago, and referenced some key website that explain things. It was not a very good explanation, and the references that I included, although a bit better, were still difficult.

I ran across this page, which tries to clarify things. It uses a simpler term, data masking, instead of non-standard evaluation and it explains how distinguishing between programming variables (env-variables) and statistical variables (data-variables) is difficult inside of R functions and loops.

The topic is still not easy to follow, but this page seems to be better than my descriptions and earlier resources about this topic.

Lionel Henry, Hadley Wickham. Argument type: data-masking. Available in [html format][hen1].

[hen1]: https://rlang.r-lib.org/reference/args_data_masking.html
[sim3]: http://new.pmean.com/non-standard-evaluation/

:::
