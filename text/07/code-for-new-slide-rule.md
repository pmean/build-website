---
title: Code for drawing new likelihood ratio slide rule
author: Steve Simon
date: 2007-07-12
categories:
- Blog post
tags:
- Diagnostic testing
output: html_document
page_update: complete
---

I have made some minor changes to my likelihood ratio slide. The original code was lost somewhere, so I wrote some new code and added documentation. I also changed the orientation of the slide rule so it can be held horizontally and shaded the regions that need to be cut out or away. This program runs in R.

Here is the code.

```
#####################
# special functions #
#####################
hline <- function(x1,x2,y0) {segments(x1,y0,x2,y0)}
vline <- function(x0,y1,y2) {segments(x0,y1,x0,y2)}
rectangle <- function(x1,y1,x2,y2) {
 x0 <- c(x1,x1,x2,x2)
 y0 <- c(y1,y2,y2,y1)
 polygon(x=x0,y=y0,density=-1,border=NA,col="gray90")
}
triangle <- function(x1,y1,x2,y2,x3,y3) {
 x0 <- c(x1,x2,x3)
 y0 <- c(y1,y2,y3)
 polygon(x=x0,y=y0,density=-1,border=NA,col="gray90")
}

#####################################
# location of tick marks and labels #
#####################################

# where to draw probability tick marks
pr1 <- c(
 0.1,0.2,0.3,0.4,
 0.5,0.6,0.7,0.8,0.9,
 1,1.5,2,2.5,3,4,
 5,6,7,8,9,
 10,15,20,25,30,40,
 50,60,70,75,80,85,
 90,91,92,93,94,
 95,96,97,98,99)

# where to print probability labels
pr2 <- c(
 0.1,0.2,0.3,
 0.5,0.7,
 1,2,3,
 5,7,
 10,20,30,40,
 50,60,70,80,
 90,93,
 95,97,98,99)

# physical location of probability ticks and labels
pr3 <- 60+15*log(pr1/(100-pr1))/log(10)
pr4 <- 60+15*log(pr2/(100-pr2))/log(10)

n1 <- sort(c(1:9,1.5,2.5))
n2 <- c(1:3,5,7)

# where to draw likelihood ratio tick marks
pr5 <- c(n1/100,n1/10,n1,n1*10,100)

# where to print likelihood ratio labels
pr6 <- c(n2/100,n2/10,n2,n2*10,100)

# physical location of likelihood ratio ticks and labels
pr7 <- 50-15*log(pr5)/log(10)
pr8 <- 50-15*log(pr6)/log(10)

# odd and even probability labels
od2 <- paste(pr2[seq(1,length(pr2),by=2)],"%",sep="")
ev2 <- paste(pr2[seq(2,length(pr2),by=2)],"%",sep="")

# odd and even likelihood ratio labels
od4 <- pr4[seq(1,length(pr4),by=2)]
ev4 <- pr4[seq(2,length(pr2),by=2)]

# physical locations of odd/even labels
od6 <- pr6[seq(1,length(pr6),by=2)]
ev6 <- pr6[seq(2,length(pr6),by=2)]
od8 <- pr8[seq(1,length(pr8),by=2)]
ev8 <- pr8[seq(2,length(pr8),by=2)]

draw.frame <- function() {
 ################################
 # outline sleeve of slide rule #
 ################################
 hline( 5, 95, 0) # bottom edge
 hline( 0,100, 20) # fold line
 hline( 0,100, 50) # fold line
 hline( 5, 95, 70) # top edge
 vline( 0, 12, 28) # left edge
 vline( 0, 42, 58) # left edge
 vline(100, 12, 28) # right edge
 vline(100, 42, 58) # right edge

 ################
 # left notches #
 ################
 vline( 5, 0, 10)
 segments( 5, 10, 0, 12)

 segments( 0, 28, 5, 30)
 vline( 5, 30, 40)
 segments( 5, 40, 0, 42)

 vline( 5, 60, 70)
 segments( 0, 58, 5, 60)

 #################
 # right notches #
 #################
 vline( 95, 0, 10)
 segments( 95, 10,100, 12)

 segments(100, 28, 95, 30)
 vline( 95, 30, 40)
 segments( 95, 40,100, 42)

 vline( 95, 60, 70)
 segments(100, 58, 95, 60)

 ################################
 # outline insert of slide rule #
 ################################
 hline( 0,100, 71) # bottom edge
 hline( 0,100,100) # top edge
 vline( 0, 71,100) # left edge
 vline(100, 71,100) # right edge

 ####################################
 # cut-out for pre-test probability #
 ####################################
 h <- 29
 hline( 17, 83,h+0) # bottom edge
 hline( 17, 83,h+7) # top edge
 vline( 17,h+0,h+7) # left edge
 vline( 83,h+0,h+7) # right edge

 #####################################
 # cut-out for post-test probability #
 #####################################
 h <- 46
 v <- 50
 hline(v-3,v+3,h+0) # top edge
 hline(v-3,v+3,h-6) # bottom edge
 vline(v-3,h+0,h-6) # left edge
 vline(v+3,h+0,h-6) # right edge
 vline(v+0,h+0,h+1) # top tick
 vline(v+0,h-6,h-7) # bottom tick
}

draw.ticks <- function() {
 ####################
 # Likelihood ratio #
 ####################
 h <- 29
 segments(pr7,h+0,pr7,h-1) # all ticks
 segments(od8,h-2,od8,h-1) # extend odd ticks
 segments(ev8,h-4,ev8,h-1) # extend even ticks
 text(od8,h-3,od6) # label odd ticks
 text(ev8,h-5,ev6) # label even ticks

 ########################
 # Pre-test probability #
 ########################
 h <- 79
 segments(pr3,h-1,pr3,h+1) # all ticks
 segments(od4,h+2,od4,h+1) # extend odd ticks
 segments(ev4,h+4,ev4,h+1) # extend even ticks
 text(od4,h+3,od2) # label odd ticks
 text(ev4,h+5,ev2) # label even ticks

 #########################
 # Post-test probability #
 #########################
 h <- 97
 segments(pr3,h+1,pr3,h-1) # all ticks
 segments(od4,h-2,od4,h-1) # extend odd ticks
 segments(ev4,h-4,ev4,h-1) # extend even ticks
 text(od4,h-3,od2) # label odd ticks
 text(ev4,h-5,ev2) # label even ticks
}

draw.shade <- function() {
 xlo <- -999
 ylo <- -999
 xhi <- 999
 yhi <- 999

 #########################
 # shade extreme regions #
 #########################
 rectangle(xlo,ylo,xhi, 0) # bottom
 rectangle(xlo,100,xhi,yhi) # top
 rectangle(xlo,ylo, 0,yhi) # left
 rectangle(100,ylo,xhi,yhi) # right
 rectangle( 0, 70,100, 71) # between sleeve and insert

 ################
 # left notches #
 ################
 rectangle( 0, 0, 5, 10)
 triangle ( 0, 10, 5, 10, 0, 12)

 triangle ( 0, 30, 5, 30, 0, 28)
 rectangle( 0, 30, 5, 40)
 triangle ( 0, 40, 5, 40, 0, 42)

 triangle ( 0, 60, 5, 60, 0, 58)
 rectangle( 0, 60, 5, 70)

 #################
 # right notches #
 #################
 rectangle(100, 0, 95, 10)
 triangle (100, 10, 95, 10,100, 12)

 triangle (100, 40, 95, 40,100, 42)
 rectangle(100, 30, 95, 40)
 triangle (100, 30, 95, 30,100, 28)

 triangle (100, 60, 95, 60,100, 58)
 rectangle(100, 60, 95, 70)

 ########################
 # Pre-test probability #
 ########################
 h <- 29
 rectangle( 17,h+0, 83,h+7)

 #########################
 # Post-test probability #
 #########################
 h <- 46
 v <- 50
 rectangle(v-3,h-6,v+3,h+0)
}

draw.notes <- function() {
 m0 <- paste(
  "Line up the pre-test probability",
  "with the likelihood ratio, and read",
  "the post-test probability here."
  ,sep="\n")
 m1 <- paste(
  "(C) The Children's Mercy Hospital.",
  "For more information, please go to",
  "www.childrensmercy.org/sliderule.asp",
  sep="\n")
 text(45,43,m0,adj=1)
 text(55,43,m1,adj=0)
 text(15,33,"Pre-test\nprobability",adj=1)
 text(15,25,"Likelihood\nratio",adj=1)
}

pdf(file="sliderule.pdf",width=8,height=10)
 par(mar=rep(0.1,4),cex=0.75,adj=0.5)
 plot(c(0,100),c(0,100),axes=F,type="n",xlab=" ",ylab=" ")
 draw.notes()
 draw.shade()
 draw.frame()
 draw.ticks()
dev.off()
```

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/07/CodeForNewSlideRule.html
[sim2]: http://www.pmean.com/original_site.html
