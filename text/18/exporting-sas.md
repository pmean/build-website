---
title: "Exporting a graph in SAS"
author: "Steve Simon"
source: "http://blog.pmean.com/exporting-sas/"
date: "2018-03-23"
categories:
- Blog post
tags:
- SAS software
output: html_document
page_update: partial
---

I got a question about how to export a graph in SAS to a program like
PowerPoint. There are several ways to do this, and I explained that you
can right click on any graph that appears on your screen and copy it to
the clipboard and then open up PowerPoint and right click on a slide and
paste it in. That's fairly standard on any Windows system. I presume
that SAS supports similar approaches on the Macintosh and Linus, but I
have no easy way of testing this.

But there are other ways to export a graph. You can tell SAS to save a
particular graph to a file and then you can import that file into
PowerPoint. It works, but there is a twist.

<!---More--->

I found a really simple example of saving a SAS graph as a file, and I
adapted the code. It takes advantage of the very useful built-in data
sets. Thank you SAS! Here's' the code.

    * graph_export.sas;
    * written by Steve Simon;
    * March 23, 2018;

    ods graphics off;
    filename grafout 'c:\temp\temp.gif';
    goptions reset=all gsfname=grafout gsfmode=replace device=gif;
    proc gchart data=sashelp.class;
    vbar age / discrete;
    title 'Age Distribution for Students';
    run;
    quit;
    filename grafout clear;

It didn't work and it took me forever to figure out why. Let me show you
what the log window looks like when you run this on my system.

    NOTE: Writing HTML Body file: sashtml.htm
    NOTE: 8894 bytes written to C:\Users\simons\AppData\Local\Temp\SAS Temporary
    <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> Files\_TD9268_KC-MED-917PFJ1_\gchart.gif.

It appears that SAS is creating an html file, which is okay by me, but
it is also creating a graphics file, gchart.gif, buried deep in the
bowels of my computer's temporary file structure. You can traverse that
bizarre path,

C:\\Users\\simons\\AppData\\Local\\Temp\\SAS Temporary
Files\\\_TD6560\_KC-MED-917PFJ1\_\\

and you'll find the file, but I want it in a folder that I choose and I
want to give it a name that I like. You have to google this to get an
answer, but apparently the default, at least on my system, is to
override the goptions statement when you are producing results using
HTML and not creating a listing.

I'm guessing a bit here, but I think that a listing is the old-fashioned
way of displaying SAS output and HTML is a more recent innovation
(though more recent probably means sometime in the late 1990's). More
recent than either is ODS, which I have [already
mentioned](../sas-ods/index.html), though very briefly.

If you want goptions to work, you have to change how results are
displayed in SAS. You do this from the menu. Select TOOLS \| OPTIONS
\|PREFERENCES and click on the RESULTS tab. Make sure that the CREATE
LISTING option is checked. You can leave the HTML box checked to give
you an old work and a new world view, if you like, or you can live in
the Stone Ages with just the listing output. There are some other
interesting options that I want to experiment with when I have time.

Anyway, with the CREATE LISTING option checked, you get the following
log.

    NOTE: 8797 bytes written to c:\temp\temp.gif.

And if you navigate to the temp folder, you'll see the file you want.
Hooray!


