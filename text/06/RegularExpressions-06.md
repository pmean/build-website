---
title: Using regular expressions to insert line breaks
author: Steve Simon
source: http://www.pmean.com/06/RegularExpressions-06.html
date: 2006-05-18
categories:
- Blog post
tags:
- Data management
output: html_document
page_update: partial
---

I had to change a file written in XML format. The file was pretty easy
to manipulate except that it had no line breaks in it. It was a single
line of text with a length of 46,592 characters! That meant that I
needed to be constantly scrolling left and right.

I thought to myself that it would be a whole lot easier to manipulate
this file if there were some line breaks. XML doesn't care if you put
in a few line breaks or if you use indenting or a variety of other
things that might make the file easier to read.

You can insert line breaks fairly easily using regular expressions, if
you know what you are doing. Make sure you have a backup of the file
before you try this, as you could very easily ruin the whole file if you
are not careful.

The first step was to insert a line break after each occurrence of the
tag

-   \</field\>

The forward slash (/) has a special use in regular expressions, so to
warn that you want to search for the literal charcter of a forward
slash, you have to precede it with a backslash (\\). This means that you
enter

-   \<\\/field\>

as the text you are looking for. The symbol for a new line (line break)
in the world of regular expressions is \\n. This is also useful in R and
S-plus, so if you want to create a two line title for your graph, you
would use something like

-   title("First Line\\nSecond Line")

Back to my original problem, to create a line break, I had to replace
the \</field\> tag with

-   \<\\/field\>\\n

Notice the extra backslash is needed here also. There were hundreds of
instances of the \</field\> tag, so I held my breath and clicked on the
REPLACE ALL button.

It worked!

There were some minor additional cleanups that I did to make the file
look more readable, but they used the same sort of trick.

**Related weblog entries**

-   [Stats: More on regular expressions (July
    21, 2005)](file:///J:/weblog2005/RegularExpressions.asp)
-   [Stats: String manipulations in R (May
    10, 2005)](file:///J:/weblog2005/StringsR.asp)
-   [Stats: The impact of XML on Statistics (June
    23, 2004)](file:///J:/weblog2004/xml.asp)
