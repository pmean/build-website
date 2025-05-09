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

The min and max functions use the na.rm argument to tell R how to handle missing values. The slice_min and slice_max functions use the na_rm argument.

## Pipes

There are two different pipes in R (actually more, as discussed later). The first pipe, %>%, is part of the [magrittr][ref04] library. This was developed in [2014][ref05], though other versions were circulating a year or two earlier.

[ref04]: https://magrittr.tidyverse.org/
[ref05]: http://adolfoalvarez.cl/blog/2021-09-16-plumbers-chains-and-famous-painters-the-history-of-the-pipe-operator-in-r/

You can load the magirttr pipe with `library(magrittr)` but it is also included when you use `library(tidyverse)`. I had thought that the latter would just include `magrittr` along with `dplyr`, `ggplot2`, etc. But apparently not. The `magrittr` library includes some extra operators (%<>%, %T>%, %$%) that are not available if you rely on the `tidyverse` library.

In 2021, the team responsible for the base R package dedicated to implement a different pipe operator, |>, which works in much the same way as the magrittr pipe. It has several differences due to necessity, but one inconsistency that they made was still quite maddening. The magrittr pipe uses a dot (.) as the placeholder when you need to feed the left hand side of a pipe to something other than the first argument of the right hand side. But the base R development team decided that an underscore (_) was a better choice. As an example, you would feed a dataframe into the `lm` function in the magrittr pipe using

`d %>% lm(y~x, data=.)`

but the base pipe would use

`d |> lm(y~x, data=_)

instead.

Adding to the inconsistency, the layers used in ggplot2 are combined in a "pipe-like" fashion, but you need the plus sign (+) in ggplot2. So a scatterplot using a square root transformation might pipe the dataframe into the `mutate` function of dplyr, then into the `ggplot` function of ggplot2 where the scatterplot is defined with the `geom_point` function. This leads to a rather confusing chain

```{}
d |>
  mutate(sqrt_y=sqrt(y)) |>
  ggplot(aes(x=x, y=sqrt_y)) +
  geom_point() +
  <other ggplot2 functions>
```

## Is there any hope of reconciling these differences?

No. There is so much code written over the 25 years of R's existence. These inconsistencies have been baked into too much code. If you tried to revise the R programming language to remove these inconsistencies, too much code would be broken.