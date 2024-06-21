---
title: Changing page breaks in SPSS
author: Steve Simon
source: http://www.pmean.com/06/PageBreaksSPSS.html
date: 2006-08-31
categories:
- Blog post
tags:
- SPSS software
output: html_document
page_update: partial
---

SPSS often chooses some unusual and unfortunate places to make a page
break. You can fix this, according to a helpful soul on the SPSSX-L
listserv (MG). Just tell SPSS never to use page breaks (in other words,
print a single page and let your printer make the page breaks) by
entering the command

-   `set length=none`

in the command syntax window. You can also do this from the menu system
by selecting EDIT | OPTIONS from the menu.

![](http://www.pmean.com/new-images/06/PageBreaksSPSS01.gif)

Click on the VIEWER tab and select an infinite length for LENGTH.
