---
title: "A simple example of pipes in R"
author: "Steve Simon"
source: "http://blog.pmean.com/pipes-in-r/"
date: "2016-11-08"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

At the Joint Statistical Meetings this year, I learned a lot about recent developments in R, and not so recent developments that I was totally clueless about. One of those developments was the use of pipes in R. I wanted to show a simple example of how pipes can simplify your code.

<!---More--->

First, you need to install the [R package magrittr][mag1]. This package is part of the [tidyverse][tid1], a group of packages that all work closely with one another to simplify and speed up many of the data management tasks in R.

[mag1]: https://cran.r-project.org/web/packages/magrittr/index.html
[tid1]: https://blog.rstudio.org/2016/09/15/tidyverse-1-0-0/

Pipes use the new R operator "%\>%". This operator takes the output of whatever appears on the left side and plugs it in as the first argument to the function that appears on the right hand side.

So the command

    level1 %>% table

is equivalent to

    table(level1)

You can chain these together, and in fact it is mostly through chaining that you can benefit from pipes.

There are two big advantages to using pipes. First, it avoids many of the nested parentheses that would normally be required. Second, it provides a more readable output. Here's a simple example. I want a list of unique values in a vector, but I want them listed in frequency order with the most frequent value listed first. Here's how you would do it without pipes.

    names(rev(sort(table(level1))))

Notice that we have four parentheses at the end. Also, you have to read this from the inside out. The sequence is table, then sort, then rev, then names.

Here's how you would do it with pipes.

    level1 %>% 
      table %>%
      sort  %>%
      rev   %>%
      names

Much simpler. Notice that the flow of functions is top to bottom rather than inside out. Also notice that there are NO parentheses.

Another advantage of pipes is that you can add comments at the end of each line.

    level1 %>% 
      table %>%  # count values
      sort  %>%  # sort the counts from low to high
      rev   %>%  # reverse to get high to low ordering
      names      # list the values only and not the counts

If you want to learn more, check out the [magrittr vignette][mag2].

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/pipes-in-r/
[sim2]: http://blog.pmean.com

[mag2]: https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html
