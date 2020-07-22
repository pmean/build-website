---
title: "PMean: Getting R to shut the heck up"
author: "Steve Simon"
source: "http://blog.pmean.com/shut-the-heck-up/"
date: "2018-11-11"
categories: Blog post
tags: R software
output: html_document
---

When you are using R Markdown to create various documents, you are often
interested in displaying any informative messages that appear along the
way. This is especially true for documents you plan to use yourself. But
when you are preparing a report or a presentation for someone else, you
may want to suppress these messages. That's not always easy because
different functions in R use different means to display messages,
especially warning messages. So the option that might suppress a warning
message from one function might not work for another function. Warnings
when loading packages are notoriously difficult to suppress. I want to
list, for my own benefit, all of the options that are available for
getting R to shut the heck up.

<!---More--->

Code chunk options are placed inside the curly braces at the start of a
code chunk. R commands inside the code chunk itself.

ECHO=FALSE. This is a code chunk option that keeps R Markdown from
echoing back the actual R programming statements in your chunk.

RESULTS=FALSE. This is a different code chunk option. It suppresses the
output from most of the R programming statements in your code chunk, but
it does not work all the time when an R command produces a warning
statement. This is especially problematic for the library function.

RESULTS="HIDE". A code chunk option which should work similar to the one
described above. Youu can substitute single quotes for double quotes. I
am not sure what the difference is between these two options.

WARNING=FALSE. Another code chunk option. It should work for all warning
messages, assuming that everyone plays by the same rules. Some problems
will still remain. Again the library function is at fault here, but
really it is the people who develop the packages being loaded by library
that are at fault. Some package developers do not use the standard
approach for displaying warning messages when their package is being
loaded.

suppressMessages, suppressPackageStartupMessages, suppressWarnings.
These are R functions that can go inside your chunk. Feed your R
expression into one or more of these functions to produce the same
effect but without all the messages and/or warnings.

options(warn=-1). This also goes inside, ideally as the very first
command in your chunk. Then, you might want to revert to the default at
the end of your chunk with options(warn=0).

library(quietly=TRUE), library(warn.conflict=FALSE). Since the library
command is often the source of many unsuppressable messages, include one
or both of the following options.

There is a nice summary on [Stack
Overflow](https://stackoverflow.com/questions/13090838/r-markdown-avoiding-package-loading-messages).
You should also review Yihui Xie's<U+FFFD>[summary of all the chunk
options](https://yihui.name/knitr/options/) and his<U+FFFD>[response to a user
question](https://github.com/rstudio/blogdown/issues/90). And use the
help facility within R to understand how various R functions work.


