---
title: "PMean: Changing the font size in R"
author: "Steve Simon"
source: "http://blog.pmean.com/font-size-in-r/"
date: "2016-08-08"
category: Blog post
tags: Presenting research data, R software
output: html_document
---

This is one of those obvious things that's not obvious when you need it
most. Suppose I'm doing a demo of R for a group like our wonderful
[Kansas City R Users
Group](http://www.meetup.com/Kansas-City-R-Users-Group/). I want to have
a readable sized font. Here's how you do it.

<!---More--->

Go to the menu and select Edit and Gui Preferences. You'll see this
dialog box.

![](../../web/images/font-size-in-r01.png)



Buried in the middle of everything is a font size. Try a value of 14 or
16 to start. You may need to change the width of your output from the
default of 80 to a lower value like 60 or 40. You can do this in the
same dialog box (Console columns field) or you can run the function
options(width=60) or options(width=40).

If you are cutting and pasting code from notepad into R, then there is
an easy way to increase the font size in notepad. Click on FORMAT then
FONT and you will see the following dialog box.

![](../../web/images/font-size-in-r02.png)



Increase the font size to 18 or 24 and everyone will see what you are
doing much better.


