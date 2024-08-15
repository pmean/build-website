---
title: Aliasing patterns
author: Steve Simon
date: 2004-07-19
categories:
- Blog post
tags:
- Statistical computing
output: html_document
page_update: partial
---
When you draw lines and curves on a computer screen, most of them end up
with a subtle staircase pattern because you are using discrete pixels to
represent a smooth line or curve. Most of the time, this pattern is
barely noticeable. But when you try to fit too many lines or curves
together, aliasing can create some false and artificial patterns. I
wrote a simple program in R to illustrate this.

```
co <- c("black","white")
f.g <- function(n) {
  par(mar=rep(0,4))
  plot(c(-1,1),c(-1,1),type="n",axes=F,xlab=" ",ylab=" ")
  d1 <- c(0,1,0,-1)
  d2 <- c(-1,0,1,0)
  for (i in n:1) {
    polygon(d1*(i/n),d2*sqrt(i/n),density=-1,
      col=co[1+((n-i) %%       2)],border=NA)
  }
  text(0.8,0.8,labels=n,cex=1.5)
}
bmp(filename="diamond%03d.bmp",width=60,height=60)
for (i in 1:99) {f.g(i)}
dev.off()`
```

This program creates a series of diamonds superimposed on one another
alternating in color between black and white. I placed 99 of these
images in an animated GIF file.

![d60.gif not found.](http://www.pmean.com/new-images/04/aliasing01.png)

Notice that after about 8 diamonds appear on the image, you start to see
some distortions. The diamonds eventually become unrecognizable. Then
something strange happens. When you see around 50 or 60 diamonds, the
pattern looks almost as if there are a small number of diamonds again,
but there is also a lot of static in the image.

The patterns changes somewhat when the figure is bigger, so you might
try experimenting with this code. Just change the width and height
parameters in the bmp command. Here is an animated GIF file with 90
pixels rather than 60.

![d90.gif not found.](http://www.pmean.com/new-images/04/aliasing02.png)

This is similar to a program called circle2.bas that was described
several decades ago in the Mathematical Recreations column of Scientific
American. This program draws a series of concentric circles of
alternating colors. You can find a Java implementation of circle2 on the
web at [www.permadi.com/java/moire/](http://www.permadi.com/java/moire/)
(click on the animated circles link).

About a decade ago, I wrote a similar program to circle2 in Postscript
and wasted a lot of paper in my laser printer.

Aliasing problems appear all over the place. You can see an aliasing
pattern on TV when someone wears a striped tie. If the stripes on the
tie are close enough and at the right angle, then the TV (which uses a
limited number of scan lines to present an image) will show an
artificial pattern that may flicker annoyingly. When you scan images on
the computer, subtle patterns in the original print may produce a marked
distortion in the scanned image.

The concept of aliasing is closely related to moire patterns, and
anti-aliasing represents an effort to minimize aliasing through the use
of shading at the edges.

**References on aliasing and anti-aliasing**

-   [www.widearea.co.uk/designer/anti.html](http://www.widearea.co.uk/designer/anti.html)
-   [www.webopedia.com/TERM/A/aliasing.html](http://www.webopedia.com/TERM/A/aliasing.html)
-   [www.fractalus.com/info/antialias.htm](http://www.fractalus.com/info/antialias.htm)
-   [en.wikipedia.org/wiki/Anti-aliasing](http://en.wikipedia.org/wiki/Anti-aliasing)
-   [ptolemy.eecs.berkeley.edu/eecs20/week13/moire.html](http://ptolemy.eecs.berkeley.edu/eecs20/week13/moire.html)

**References on moire**

-   [www.sandlotscience.com/Moire/Moire_frm.htm](http://www.sandlotscience.com/Moire/Moire_frm.htm)
-   [lite.bu.edu/lite1/moire/](http://lite.bu.edu/lite1/moire/)
-   [micro.magnet.fsu.edu/primer/java/scienceopticsu/moire/moire.html](http://micro.magnet.fsu.edu/primer/java/scienceopticsu/moire/moire.html)
-   [diwww.epfl.ch/w3lsp/books/moire/](http://diwww.epfl.ch/w3lsp/books/moire/)
-   [www.wfu.edu/~matthews/misc/DigPhotog/alias/](http://www.wfu.edu/~matthews/misc/DigPhotog/alias/)

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/04/aliasing.html
[sim2]: http://www.pmean.com/original_site.html

