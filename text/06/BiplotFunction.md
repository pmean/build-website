---
title: A simple function for a Biplot in R
author: Steve Simon
source: http://www.pmean.com/06/BiplotFunction.html
date: 2006-01-24
category: Blog post
tags: Data mining
output: html_document
---
**[StATS]:** **A simple function for a Biplot in R
(January 24, 2006)**.

I regularly use a biplot or principal components plot as an initial
exploratory tool for microarray analyses, but I have not found a good
package that does this for me automatically. Rather than re-inventing
the code every time, I created a simple R function that does the job for
me. It\'s not the fanciest or best code in the world, but I wanted to
put it here and comment on the various alternative forms of the biplot
and principal components plot when I have time.

`pc.plot <- function(x,ulabs,vlabs) {    nrows <- dim(x)[[1]]    ncols <- dim(x)[[2]]    x.means <- apply(x,1,mean)    x.sd <- sqrt(apply(x,1,var))    x.cen <- x - (x.means %o% rep(1,ncols))    x.z <- x.cen / (x.sd %o% rep(1,ncols))    x.svd <- svd(x.z)    d1 <- x.svd$d[1]    d2 <- x.svd$d[2]    u1 <- x.svd$u[,1]*sqrt(d1)    u2 <- x.svd$u[,2]*sqrt(d2)    v1 <- x.svd$v[,1]*sqrt(d1)    v2 <- x.svd$v[,2]*sqrt(d2)    u.v.range <- range(u1,u2,v1,v2)    par(mar=rep(0.1,4))    plot(u.v.range,u.v.range,type="n",xlab=" ",ylab=" ")    arrows(0,0,v1,v2)    text(v1,v2,vlabs)    text(u1,u2,steroid.symbol)    u1   }`

This code uses the singular value decomposition function (svd) to
identify the linear combinations of rows and columns that maximize the
variation. There are several scaling options that I could choose that
will give different perspectives on this plot. Also, the ulabs argument
provides labels for each row of X, which may be impractical for many
large scale problems.

An article I commented on in the weblog entry,

-   The Journal of Statistical Software (January 18, 2006)

provides some valuable comments about biplots, though it uses a
different program for its examples.

-   **Interactive Biplot Construction.** Udina F. Journal of Statistical
    Software 2005: 13(5);
    [\[PDF\]](http://www.jstatsoft.org/counter.php?id=119&url=v13/i05/v13i05.pdf&ct=1)

[![Creative Commons
License](http://i.creativecommons.org/l/by/3.0/us/80x15.png)](http://creativecommons.org/licenses/by/3.0/us/)
This work is licensed under a [Creative Commons Attribution 3.0 United
States License](http://creativecommons.org/licenses/by/3.0/us/). It was
written by Steve Simon on 2006-01-24, edited by Steve Simon, and was
last modified on 2010-04-01. Send feedback to ssimon at cmh dot edu or
click on the email link at the top of the page. [Category: Data
mining](../category/DataMining.html)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **A simple function for a Biplot in R
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

