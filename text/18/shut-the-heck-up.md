---
title: "Getting R to shut the heck up"
author: "Steve Simon"
source: "http://blog.pmean.com/shut-the-heck-up/"
date: "2018-11-11"
categories:
- Blog post
tags:
- R software
output: html_document
page_update: complete
---

When you are using R Markdown to create various documents, you are often interested in displaying any informative messages that appear along the way. This is especially true for documents you plan to use yourself. But when you are preparing a report or a presentation for someone else, you may want to suppress these messages. That's not always easy because different functions in R use different means to display messages, especially warning messages. So the option that might suppress a warning message from one function might not work for another function. Warnings when loading packages are notoriously difficult to suppress. I want to list, for my own benefit, all of the options that are available for getting R to shut the heck up.

<!---More--->

### Code chunk options

Code chunk options are placed inside the curly braces at the start of a code chunk. R commands inside the code chunk itself.

#### echo=FALSE. 

This is a code chunk option that keeps R Markdown from echoing back the actual R programming statements in your chunk.

#### results=FALSE.

This is a different code chunk option. It suppresses the output from most of the R programming statements in your code chunk, but it does not work all the time when an R command produces a warning statement. This is especially problematic for the library function.

#### results="HIDE".

A code chunk option which should work similar to the one described above. Youu can substitute single quotes for double quotes. I am not sure what the difference is between these two options.

#### warning=FALSE.

Another code chunk option. It should work for all warning messages, assuming that everyone plays by the same rules. Some problems will still remain. Again the library function is at fault here, but really it is the people who develop the packages being loaded by library that are at fault. Some package developers do not use the standard approach for displaying warning messages when their package is being loaded.

### R functions

#### suppressMessages, suppressPackageStartupMessages, suppressWarnings.

These are R functions that can go inside your chunk. Feed your R expression into one or more of these functions to produce the same effect but without all the messages and/or warnings.

#### options(warn=-1).

This also goes inside, ideally as the very first command in your chunk. Then, you might want to revert to the default at the end of your chunk with options(warn=0).

#### library(quietly=TRUE), library(warn.conflict=FALSE).

Since the library command is often the source of many unsuppressable messages, include one or both of the following options.

There is a nice summary on [Stack Overflow][stac1]. You should also review Yihui Xie's [summary of all the chunk options][yihu1] and his [response to a user question][yihu2]. And use the help facility within R to understand how various R functions work.

### Addendum (2021-11-30): tidyverse options

#### .groups="drop"

Issues arise When you use the group_by statement in dplyr with more than one variable. If you recall, the [group_by statement][tidy1] creates a grouped data frame or a grouped tbl, an object that looks mostly like a data frame but allows you to calculate summary statistics like means and standard deviations by one or more grouping variables. It is a simple alternative to the [tapply function][erik1].

The problem with group_by is that a future call to summarize (which you almost always do after a group_by function) gives the cryptic warning

```
summarise() regrouping output by 'XXXX' (override with .groups argument)
```

where XXXX is the first of the two or more grouping variables. It only occurs when you specify more than one variable in the group_by function.

This is, in my opinion, an annoying warning. What dplyr is doing is that it is changing the grouped data frame after summarize from two variables to one variable. Why this is the default option, I do not know. It would be more logical to drop grouping altogether after a summarize statement (my first preferred default). The authors of dplyr realize this and warn you that even though you might think that the group_by statement is undone after a summarize function, it is not. But the other logical alternative, that the grouped data frame stays the same after summarize is also not true (my second prefrred default). It changes from a grouped data frame with one fewer grouping variables.

There are a few situations where this option might make sense. You might want to compute unweighted means of the resulting means, and this cannot be done in a single step if the data are unbalanced. Nevertheless, I have to disagree strongly with this default choice.

You can change this default by adding the argument

```
.groups="drop"
```

which gives you what I consider the first preferred default. The argument

```
.group="keep"
```

gives you want I consider the second preferred default. This is all explained in [Stakck Overflow query][stac2]. Among the answers is also the tidbit that

```
options(dplyr.summarise.inform=F)
```

will also suppress the warning message.

#### options(tidyverse.quiet = TRUE)

If you run the command

```
options(tidyverse.quiet = TRUE)
```

before you load the tidyverse package, it suppresses a bunch of information messages. This is mentioned on Matt Stingl's [blog post][stin1] on his rstats-tips blog.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/shut-the-heck-up/
[sim2]: http://blog.pmean.com

[erik1]: https://www.r-bloggers.com/2009/09/r-function-of-the-day-tapply-2/
[stac1]: https://stackoverflow.com/questions/13090838/r-markdown-avoiding-package-loading-messages
[stac2]: https://stackoverflow.com/questions/62140483/how-to-interpret-dplyr-message-summarise-regrouping-output-by-x-override/62140681
[stin1]: https://rstats-tips.net/2020/07/31/get-rid-of-info-of-dplyr-when-grouping-summarise-regrouping-output-by-species-override-with-groups-argument/
[tidy1]: https://dplyr.tidyverse.org/articles/grouping.html
[yihu1]: https://yihui.name/knitr/options/
[yihu2]: https://github.com/rstudio/blogdown/issues/90
