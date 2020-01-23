---
title: Moving R objects
author: Steve Simon
source: http://www.pmean.com/05/MovingRObjects.html
date: 2005-07-28
category: Blog post
tags: Data management, R software
output: html_document
---
**[StATS]:** **Moving R objects (July 28, 2005)**

> I regularly work from home on my laptop, and when I need to re-run
> some analyses in R, I usually just re-create the original data sets.
> But there are several ways you can transfer objects from one R system
> to another.
>
> The dump function creates a text file with the R commands needed to
> re-create the objects.
>
> `> a <- sample(letters,10)        > a        [1] "y" "f" "r" "k" "t" "x" "u" "a" "q" "v"        > b <- sample(1:100,10)        > b        [1] 51 78 68 13 55 76 90 32 30 43        > dump(c("a","b"),file="d:/Data/dump.txt")`
>
> Here\'s what the file looks like:
>
> `"a" <-        c("y", "f", "r", "k", "t", "x", "u", "a", "q", "v")        "b" <-        as.integer(c(51, 78, 68, 13, 55, 76, 90, 32, 30, 43))`
>
> You could then use the source function in R to re-create the objects.
> Note that you have to put the object names in quotes. If I had said
>
> `dump(a,file="d:/Data/dump.txt")`
>
> the system would have looked for objects names y, f, etc. producing
> either an error, when the objects were not found or an unexpected list
> of objects.
>
> The save command creates a binary file (typically, this uses the
> extension .Rdata). You can\'t look at a binary file to see what is
> inside, but a binary file allows more efficient and more accurate
> storage of the objects. You would use the load function or possibly
> the attach function in R to re-create the data.
>
> To save everything, use the function
>
> `save(ls(all=TRUE),"d:/Data/complete.Rdata")`
>
> and then use
>
> `load("d:/Data/complete.Rdata")`
>
> to re-create the data.

[![Creative Commons
License](http://i.creativecommons.org/l/by/3.0/us/80x15.png)](http://creativecommons.org/licenses/by/3.0/us/)
This work is licensed under a [Creative Commons Attribution 3.0 United
States License](http://creativecommons.org/licenses/by/3.0/us/). It was
written by Steve Simon.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Data
management](../category/DataManagement.html) or [Category: R
software](../category/RSoftware.html).
<!---More--->
software](../category/RSoftware.html).
management](../category/DataManagement.html) or [Category: R
for pages similar to this one at [Category: Data
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Moving R objects (July 28, 2005)**
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Data
management](../category/DataManagement.html) or [Category: R
software](../category/RSoftware.html).
--->

