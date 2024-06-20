---
title: Moving R objects
author: Steve Simon
source: http://www.pmean.com/05/MovingRObjects.html
date: 2005-07-28
categories:
- Blog post
tags:
- Being updated
- Data management
- R software
output: html_document
page_update: partial
---
I regularly work from home on my laptop, and when I need to re-run
some analyses in R, I usually just re-create the original data sets.
But there are several ways you can transfer objects from one R system
to another.

The dump function creates a text file with the R commands needed to
re-create the objects.

`> a <- sample(letters,10)> a[1] "y" "f" "r" "k" "t" "x" "u" "a" "q" "v"> b <- sample(1:100,10)> b[1] 51 78 68 13 55 76 90 32 30 43> dump(c("a","b"),file="d:/Data/dump.txt")`

Here's what the file looks like:

`"a" <-  c("y", "f", "r", "k", "t", "x", "u", "a", "q", "v")"b" <-  as.integer(c(51, 78, 68, 13, 55, 76, 90, 32, 30, 43))`

You could then use the source function in R to re-create the objects.
Note that you have to put the object names in quotes. If I had said

`dump(a,file="d:/Data/dump.txt")`

the system would have looked for objects names y, f, etc. producing
either an error, when the objects were not found or an unexpected list
of objects.

The save command creates a binary file (typically, this uses the
extension .Rdata). You can't look at a binary file to see what is
inside, but a binary file allows more efficient and more accurate
storage of the objects. You would use the load function or possibly
the attach function in R to re-create the data.

To save everything, use the function

`save(ls(all=TRUE),"d:/Data/complete.Rdata")`

and then use

`load("d:/Data/complete.Rdata")`

to re-create the data.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/MovingRObjects.html
[sim2]: http://www.pmean.com