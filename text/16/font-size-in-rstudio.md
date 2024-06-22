---
title: "Changing the font size in RStudio"
author: "Steve Simon"
source: "http://blog.pmean.com/font-size-in-rstudio/"
date: "2016-08-08"
categories:
- Blog post
tags:
- Presenting research
- R software
output: html_document
page_update: complete
---

Suppose you're giving a talk and using R Studio. You want to make the fonts a bit larger so your audience can read them. It's easy to do, once you know where to look.

<!---More--->

Go to the menu in RStudio and click on Tools and then Global Options. Select the Appearance tab on the left. Again buried in the middle of things is the font size.

![](http://www.pmean.com/new-images/16/font-size-in-rstudio01.png)

Change this to 14 or 16 to start with and see what it looks like. This changes the font size in both the editor window and the console.

You may also want to change the margins. You can't do this directly in RStudio, but you can run the function options(width=60) to narrow from the default of 80 columns to 60. If things don't fit well, try options(width=40).

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/font-size-in-rstudio/
[sim2]: http://blog.pmean.com
