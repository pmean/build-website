---
title: Preserving spacing in html code
author: Steve Simon
date: 2005-05-06
categories:
- Blog post
tags:
- Being updated
- Website details
output: html_document
page_update: partial
---
Note that this page is obsolete (I am writing this note on 2020-10-26). I am currently transitioning to using Markdown and RMarkdown for my website.

I am starting to write a lot of web pages that show program code for
R. I use the *code* and *pre* tags most of the time, because this
produces a fixed width font and preserves spacing. The default font on
a web page is a proportional width font, which makes much of the
indenting and spacing in a program look terrible. First, let's look
at what the program looks like in my text editor.

![](http://www.pmean.com/weblog/images/PreservingSpaces1.gif)

Here's what the code looks like with the default font.

  id1 <- as.character(c(6286:6294,7446:7458))
  
loc <- c( "UM", "UM", "UM", "H", "H", "H",

"H", "H", "H", "UM", "UM", "UM",

"UM", "H", "H", "H", "H", "H",

"H", "WU", "WU", "WU")

id2 <- c( "1589", "1589", "1589","18058","18058","18058",

"17869","17869","17869", "1690", "1621", "1631",

"1566","18354","18381","18390","18401","18508",

"18535", "0831", "3881", "5025")

The first problem is that multiple spaces appear as a single space. You can replace the blanks with a non-breaking space (\&nbsp;) before importing and that gets a bit closer to what you want, but the proportional width font still causes problems. With the *pre* tag, it looks like

<pre>
id1 <- as.character(c(6286:6294,7446:7458))
loc <- c(   "UM",   "UM",   "UM","H","H","H",
 "H","H","H",   "UM",   "UM",   "UM",
"UM","H","H","H","H","H",
 "H",   "WU",   "WU",   "WU")
id2 <- c( "1589", "1589", "1589","18058","18058","18058",
 "17869","17869","17869", "1690", "1621", "1631",
  "1566","18354","18381","18390","18401","18508",
 "18535", "0831", "3881", "5025")
</pre>

which is very nice. It's also important to use the *br* tag rather than the *p* tag because otherwise your program ends up being double spaced. Finally, if you are cutting and pasting in Microsoft Front Page, be sure to use PASTE SPECIAL and choose the ONE FORMATTED PARAGRAPH option.

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/SpacingHtml.html
[sim2]: http://www.pmean.com/original_site.html
