---
title: A simple function for a Biplot in R
author: Steve Simon
source: http://www.pmean.com/06/BiplotFunction.html
date: 2006-01-24
categories:
- Blog post
tags:
- Data mining
output: html_document
page_update: partial
---

I regularly use a biplot or principal components plot as an initial
exploratory tool for microarray analyses, but I have not found a good
package that does this for me automatically. Rather than re-inventing
the code every time, I created a simple R function that does the job for
me. It's not the fanciest or best code in the world, but I wanted to
put it here and comment on the various alternative forms of the biplot
and principal components plot when I have time.

`pc.plot <- function(x,ulabs,vlabs) {   <U+FFFD>nrows <- dim(x)[[1]]   <U+FFFD>ncols <- dim(x)[[2]]   <U+FFFD>x.means <- apply(x,1,mean)   <U+FFFD>x.sd <- sqrt(apply(x,1,var))   <U+FFFD>x.cen <- x - (x.means %o% rep(1,ncols))   <U+FFFD>x.z <- x.cen / (x.sd %o% rep(1,ncols))   <U+FFFD>x.svd <- svd(x.z)   <U+FFFD>d1 <- x.svd$d[1]   <U+FFFD>d2 <- x.svd$d[2]   <U+FFFD>u1 <- x.svd$u[,1]*sqrt(d1)   <U+FFFD>u2 <- x.svd$u[,2]*sqrt(d2)   <U+FFFD>v1 <- x.svd$v[,1]*sqrt(d1)   <U+FFFD>v2 <- x.svd$v[,2]*sqrt(d2)   <U+FFFD>u.v.range <- range(u1,u2,v1,v2)   <U+FFFD>par(mar=rep(0.1,4))   <U+FFFD>plot(u.v.range,u.v.range,type="n",xlab=" ",ylab=" ")   <U+FFFD>arrows(0,0,v1,v2)   <U+FFFD>text(v1,v2,vlabs)   <U+FFFD>text(u1,u2,steroid.symbol)   <U+FFFD>u1   }`

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

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/06/BiplotFunction.html
[sim2]: http://www.pmean.com
