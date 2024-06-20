---
title: Graphics options in R
author: Steve Simon
source: http://www.pmean.com/06/GraphicsOptionsR.html
date: 2006-09-12
categories:
- Blog post
tags:
- Graphical display
- R software
output: html_document
page_update: partial
---
When you are producing graphics in R, the default option does not save
your graphs for later review. You can change this in several ways. My
comments will discuss the options for R running under Microsoft Windows.
There are similar approaches that work for other systems.

First, the `windows()` function will create a new window in R that
graphics will appear in. You don't need to use this function because
the first time you use a function like `plot()`, the `windows()`
function will be called with all the default options. If you do call the
windows() function, you can set an argument, record, to the value of
TRUE.

-   `windows(record=TRUE)`

This will allow you to use the PgUp and PgDn keys to review the sequence
of graphs. A closely related command is

-   `par(ask=TRUE)`

which will prompt you before drawing a new graph on the screen.

Second, you can copy a bitmap version of a graph to the clipboard using
the Control-C key combination. To copy a metafile version of the graph
to the clipboard, use the Control-W key combination. The metafile can be
scaled more easily to different sizes, but some systems interpret
metafiles differently than others so the appearance of your graph may
change. The bitmap is a more standard implementation, so it will not
change, but be sure that the graph window is sized appropriately so your
bitmap is not too small or too large.

Third, you can send the graphs directly to a printer with the
`win.printer()` function. If you have the appropriate software, you can
print to a PDF printer.

Fourth, you can produce PDF files directly by using the `pdf()`
function. You specify the location of the file using the `file` option.
The `bmp()`, `jpeg()`, `png()`, and `win.metafile()` functions work
similarly. When you are done with producing the graphic image, use the
`dev.close()` function to close the file and make it usable by other
programs.

By default, the file that you write your graphic image to will be stored
in the directory that R is stored in. On my system it is

-   `C:/Program Files/R/R-2.2.1`

and you can change this default directory with the `setwd()` function.
You can also specify a path in the file, but be careful. Either use the
forward slash (/) to separate directories in the path, or use a double
backslash (\\\\). A single backslash causes problems because R has
special codes like \\n to represent a new line.

So a file name like

-   `file="C:/Data/NewProject/Scatterplot.pdf" `or
-   `file="C:\\Data\\NewProject\\Scatterplot.pdf" `

will work just fine, but

-   `file="C:\Data\NewProject\Scatterplot.pdf"`

will not.

The pdf() functions will place multiple graphs on the same file on
consecutive pages, but the other functions will overwrite the previous
graph unless you specify different file names. The symbol `%d` embedded
in a filename will create a numeric sequence (1, 2, 3, etc.). You can
use one or more trailing zeros with `%02d` (01, 02, 03, etc.) or `%03d`
(001, 002, 003, etc.). The default filename that R uses is
`        Rplot%03d` with the appropriate extension.

**Related weblog entries**

-   [Stats: Colors for R graphs (June 28, 2006)](ColorsForR.html)
-   [Stats: Object oriented features of R (December
    19, 2005)](http://www.pmean.com/weblog2005/ObjectOrientedR.asp)
-   [Stats: Two nice R libraries (October 14, 2005, Model,
    Software)](http://www.pmean.com/weblog2005/LibrariesR.asp)
-   [Stats: A simple trick in R (October 11, 2005, Model,
    Software)](http://www.pmean.com/weblog2005/TrickR.asp)
-   [Stats: Dates in Excel and R (August 10, 2005, Model,
    Software)](http://www.pmean.com/weblog2005/DatesInR.asp)
