---
title: Preserving spacing in html code
author: Steve Simon
source: http://www.pmean.com/05/SpacingHtml.html
date: 2005-05-06
categories: Blog post
tags: Website details
output: html_document
---
**[StATS]: Preserving spacing in html code (May 6,
2005)**.

I am starting to write a lot of web pages that show program code for
R. I use the <code> and <pre> tags most of the time, because this
produces a fixed width font and preserves spacing. The default font on
a web page is a proportional width font, which makes much of the
indenting and spacing in a program look terrible. First, let's look
at what the program looks like in my text editor.

![PreservingSpaces1.gif not found.](http://www.pmean.com/images/images/05/SpacingHtml01.png)

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

The first problem is that multiple spaces appear as a single space.
You can replace the blanks with &nbsp; before importing and that gets
a bit closer to what you want,

id1  <-  as.character(c(6286:6294,7446:7458))
  loc  <-  c(      "UM",      "UM",      "UM",        "H",        "H",        "H",
                          "H",        "H",        "H",      "UM",      "UM",      "UM",
                          "UM",        "H",        "H",        "H",        "H",        "H",
                          "H",      "WU",      "WU",      "WU")
  id2  <-  c(  "1589",  "1589",  "1589","18058","18058","18058",
                    "17869","17869","17869",  "1690",  "1621",  "1631",
                      "1566","18354","18381","18390","18401","18508",
                        "18535",  "0831",  "3881",  "5025")

but the proportional width font still causes problems. With the
<pre> tag, it looks like

    id1 <- as.character(c(6286:6294,7446:7458))
    loc <- c(   "UM",   "UM",   "UM",    "H",    "H",    "H",
                 "H",    "H",    "H",   "UM",   "UM",   "UM",
                "UM",    "H",    "H",    "H",    "H",    "H",
                 "H",   "WU",   "WU",   "WU")
    id2 <- c( "1589", "1589", "1589","18058","18058","18058",
             "17869","17869","17869", "1690", "1621", "1631",
              "1566","18354","18381","18390","18401","18508",
         "18535", "0831", "3881", "5025")

which is very nice. It's also important to use the <br> tag rather
than the <p> tag because otherwise your program ends up being double
spaced. Finally, if you are cutting and pasting in Microsoft Front
Page, be sure to use PASTE SPECIAL and choose the ONE FORMATTED
PARAGRAPH option.

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Website
details](../category/WebsiteDetails.html).
<!---More--->
details](../category/WebsiteDetails.html).
for pages similar to this one at [Category: Website
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]: Preserving spacing in html code (May 6,
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Website
details](../category/WebsiteDetails.html).
--->

