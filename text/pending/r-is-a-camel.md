---
title: R is a camel designed by committee
source: "New"
author: Steve Simon
date: 2025-02-27
categories: Blog post
tags:
- R programming
output: html_document
page_update: no
---

There's an old joke reminds me about the R programming language. The quip is that a camel is a horse designed by a committee. It means that when a group of people design something, they all use a slightly different approach and the net result is something quite different and distorted from what would have happened if a single person with a consistent vision were in charge. A similar quote might be "Too many cooks spoil the broth".

<!---more--->

R is a program designed by many different individuals and even though they try to develop it with a consistent vision, in many ways it fall maddeningly short. It gets worse when you start mixing in some of the many libraries in R. There have been some efforts to bring consistency back, most notably with the programming team in the [tidyverse][ref01]. But even within the tidyverse, there are maddening inconsistencies.

[ref01]: https://www.tidyverse.org/

My joke about this is that R isn't a horse designed by a committee. It is a **camel** designed by committee.

This is something that you don't see as often in commercial programs like SAS or Stata. The companies that produce these programs have a hierarchy that can enforce consistency. There are a few inconsistencies but not nearly as many as you find in R. I am not too familiar with Python, but I suspect it has many of the same issues as R.

So here is my attempt to document some of the many ways that R is maddeningly inconsistent.

## The readr and readxl libraries

Both the [readr][ref02] and [readxl][ref03] libraries are part of the tidyverse. But in readr, you specify the filename with the argument `file=` while in readxl, you use `path=` instead. 

[ref02]: https://readr.tidyverse.org/
[ref03]: https://readxl.tidyverse.org/

With the readr library, you can use abbreviations like "n" for "numeric" in the `col_types` argument but with readxl, you need to spell it out.

## Inconsistent capitalization

The missing value code in R is `NA` but most functions that identify or manipulate missing values use `na` (all lowercase) in the function name. The most common example is the `is.na` function. The `na.rm` argument in statistical functions like `mean` is another example.

The function that gives you the date uses two capital letters (`Sys.Date`) but the function that gives you the date and the time uses one capital letter (`Sys.time`) instead.

The function to give you the version of R (`R.Version`) differs from the internal list that gives you the R version (`R.version`). Maybe this is done to avoid using the exact same name for a function and a list, but it begs the question. Why do you really need to have both a function and an internal list that do the exact same thing?

## Use of delimiters

Many times in R you want to use two or more words in a name. It could be a name for a vector or a data frame or a function. An example might be using the words `birth` and  `weight` in the name of a variable representing the weight of an infant at birth.

If a variable name includes two or more words, you have several options for delimiting those names. You can't use a space, of course, because then it looks like two separate variables (`birth weight`). You have the option of smashing the two words together (`birthweight`) but this is sometimes hard to read because you are not sure where one word ends and the next word starts.

You can use capital letters to mark the boundary. This is known as CamelCase and would look like `BirthWeight` in our example. There is some debate about whether to capitalize the first word and you might see `birthWeight` instead.

You can also separate the words using a delimiter, a special symbol that visually separates the two words. My favorite delimiter is the dash (-) but this does not work in R or any other programming language because `birth-weight` looks like a subtraction involving the variables `birth` and `weight`.

The two most common delimiters that work in R and most other programming languages are the dot (`birth.weight`) and the underscore (`birth_weight`). The latter is also known as snake_case. You should be careful about the dot as a delimiter in other languages, as it often serves a different purpose. It is definitely an issue with SQL and Python but there may be other languages where a dot cannot be uses as a delimiter.

It's nice that R allows you the freedom to use CamelCase or to use dots and underscore as delimiters. The problem is that there is no consistency within the R language on this. It gets worse as you add in the various libraries. The tidyverse programmers try to use underscore delimiters for the most part but even within the tidyverse there are inconsistencies.
