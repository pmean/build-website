---
title: Exporting SPSS graphs and tables.
author: Steve Simon
source: http://www.pmean.com/00/export.html
date: 2000-01-28
categories:
- Blog post
tags:
- Data management
- SPSS software
output: html_document
page_update: partial
---
*Dear Professor Mean
- I need to export the output from SPSS and use some
of it in my word processing file. What is the best way to do this? --
Manic Marsha*

<!---More--->

Dear Manic,

You can export both graphs and tables from SPSS and use them in other
programs
- such as word processing and presentation software. You
export a graph or table by right clicking to bring up a pop-up menu.
You have several choices in how to save the file and how to import it
into another software program. I have found that exporting graphs in
windows metafile format (*.WMF) and pasting tables as PICTURE works
well for me. But I encourage you to experiment with alternatives to
see what best meets your needs.

I'll show you how to export into Microsoft Word
- but the same
principles apply for other word processing software
- and for other
applications like presentation software or even web page editors.

**More details**

If you want to export a graph
- right click on the graph you want to
export. Click the arrow button next to the EXPORT field to select
CHARTS ONLY. Click on the arrow button next to the FILE TYPE field to
select WINDOWS METAFILE (*.WMF).

The windows metafile format is usually a good choice
- because you can
change the size of your graph later and still keep your lines and
fonts looking smooth. Other formats such as bitmap (*.BMP)
- jpeg
(*.JPG)
- and gif (*.GIF) and tagged image file (TIF) will degrade
into jagged lines if you rescale it later. You might try experimenting
with cgm metafile (*.CGM) or encapsulated postscript (*.EPS)
formats
- since these formats also allow you to change the size of your
graph easily. If you are creating web pages and you know that you
won't be changing the size of your graphs
- then the gif (*.GIF)
format is a good choice. SPSS even offers you a Macintosh graphics
standard (*.PICT).

If you want to export a table
- right click on the table you want to
export. Select COPY from the pop up menu. You may want to experiment
with the EDIT | PASTE SPECIAL menu in your word processing program.
If you paste as a PICTURE
- you get an attractive table
- but you lose
the ability to make minor changes like rounding some of your numbers.

**Exporting graphs**

Once you create a graph in SPSS
- you can export it to a floppy disk or
your hard drive. After you have exported your graph
- you can use it in
other applications like Microsoft Word or PowerPoint.

![wpe1C.gif (10603 bytes)](http://www.pmean.com/images/02/export01.gif){width="320"
height="319"}

To export a graph
- right click over one of the graphs you want to
export. This will bring up a menu
- as shown in the figure above. Click
on the EXPORT menu item.

![wpe1B.gif (10798 bytes)](http://www.pmean.com/images/02/export02.gif){width="377"
height="287"}

The figure above shows the dialog box that you get. Click the arrow
button next to the EXPORT field to select CHARTS ONLY. Click on the
arrow button next to the FILE TYPE field to select WINDOWS METAFILE
(*.WMF). The windows metafile format is usually a good choice,
because you can change the size of your graph later and still keep
your lines and fonts looking smooth. Other formats such as bitmap
(*.BMP)
- jpeg (*.JPG)
- and gif (*.GIF) and tagged image file (TIF)
will degrade into jagged lines if you rescale it later. You might try
experimenting with cgm metafile (*.CGM) or encapsulated postscript
(*.EPS) formats
- since these formats also allow you to change the
size of your graph easily. If you are creating web pages and you know
that you won't be changing the size of your graphs
- then the gif
(*.GIF) format is a good choice. SPSS even offers you a Macintosh
graphics standard (*.PICT).

Click on the FILE PREFIX field to change the file name(s). Make sure
that your file names include a drive letter and/or subdirectory that
you will easily remember (c://My Documents is a good choice). In this
example
- I am instructing SPSS to store the charts on the floppy disk
drive (a:/) and telling SPSS to use BF_GR as a file prefix. This
prefix tells SPSS to use the name BF_GR0 for the first chart. If you
are exporting a second chart
- SPSS will use the name BF_GR1 for this
chart
- and so forth.

Each software program has a different method for importing graph
files. In Microsoft Word
- you select INSERT | PICTURE | FROM FILE.

![wpeD.gif (14893 bytes)](http://www.pmean.com/images/02/export03.gif){width="620"
height="350"}

Your dialog box should look like the figure above. Click on the arrow
button by the LOOK IN field to select the appropriate file location.
In this example
- I am selecting a file from the floppy drive (a:/).
When you highlight a graph file
- Microsoft Word gives you a preview of
what your graph looks like. Click on the INSERT button to place this
graph in your word processing document.

![wpeE.gif (8590 bytes)](http://www.pmean.com/images/02/export04.gif){width="320"
height="320"}

If you click on the graph itself
- Microsoft Word will place
"handlebars" around the graph. You can grab one of these to make
your graph bigger or smaller (as shown in the figure above). If you
need to resize your graph
- you should always grab from one of the
corners. If you grab from the top
- bottom
- or either side
- your text
will become short and fat or tall and skinny.

**Exporting tables**

You have several choices for exporting tables. Start by right clicking
on the table you want to save.

![wpe1C.gif (10680 bytes)](http://www.pmean.com/images/02/export05.gif){width="320"
height="318"}

You will then see a pop-up menu like the one shown in the figure
above. Select COPY from this menu. This places your table on the
windows clipboard. You can then paste inside any windows application.
In Microsoft Word
- you should experiment with the EDIT | PASTE
SPECIAL menu pick.

![wpe1D.gif (12619 bytes)](http://www.pmean.com/images/02/export06.gif){width="468"
height="282"}

This is the dialog box you will see. You have three different ways to
paste your SPSS table into Word.

![wpe1F.gif (6933 bytes)](http://www.pmean.com/images/02/export07.gif){width="320"
height="239"}

The PICTURE option will create a graphic image inside Microsoft Word
(see above figure). This image looks nice
- but it takes up a lot of
room and you can't modify any of the numbers. I know you didn't have
any plans to change all your p-values to 0.001
- but there are changes
like rounding that you can't make when you paste in a picture.

![wpe20.gif (7345 bytes)](http://www.pmean.com/images/02/export08.gif){width="320"
height="239"}

If you paste UNFORMATTED TEXT
- you get the raw numbers in your word
file with tabs between each number (see figure above). You have to
re-align your tabs to get the table looking nice. When you paste
unformatted text
- you do preserve the option of rounding.

![wpe21.gif (7232 bytes)](http://www.pmean.com/images/02/export09.gif){width="320"
height="239"}

If you paste FORMATTED TEXT (RTF)
- you get a formatted table (see
figure above). You will probably need to adjust the widths of some of
the cells in this table
- but like UNFORMATTED TEXT
- you can make minor
modifications like rounding.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/export.html
[sim2]: http://www.pmean.com/original_site.html
