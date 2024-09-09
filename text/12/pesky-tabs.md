---
title: "Those pesky tab characters"
author: Steve Simon
source: http://www.pmean.com/12/pesky.html
date: 2012-03-21
categories:
- Blog post
tags:
- Data management
- SPSS software
output: html_document
page_update: complete
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

<!---More--->

I frequently move text from one program to another, and one thing that is almost always guaranteed to cause annoyances is the presence of tabs. The tab is a single character, hex 09, that can sometimes be added with the Ctrl-I key on the computer, or the TAB key on a standard computer keyboard. The problem with the tab key is that it looks just like a bunch of blanks, but it doesn't always behave like a bunch of blanks.

![](http://www.pmean.com/new-images/12/pesky01.png)
-   Image of the TAB key from a standard computer keyboard

What most programs will do when they encounter a tab character in a text file is to indent the remainder of that line. Usually, but not always, the indent is in multiples of eight. Thus the character directly following a tab will appear in column 9, 17, 25, etc. The tab character is intended to make it easy for you to align portions of your text file.Depending on where it sits in a file, the tab character can stand for anywhere from one to eight blank characters. It adapts its size so that the character following it always appears in the "correct" column.

![](http://www.pmean.com/new-images/12/pesky10.PNG)
-   Text file with tab characters inside Notepad application

Here's text file with a bunch of tabs. It looks fairly normal. If you count carefully, the first curly brace appears in column 9, the two "for" statements start on column 17, the Y[i], mu[i], and beta[j] statements start on column 25.

In this file, the tab key is effectively the same as eight blanks, but it is different enough to cause you problems. For example, you might think that the indentation in this program is too extreme. A simple way to cut the indentation in half is to replace every double occurence of a blank with a single occurence. The eight blanks in front of the first curly brace would become four blanks, the sixteen blanks in from the the "for" statement would become eight blanks, etc.

When you try to do a search and replace and click on the "Replace All" button,

![](http://www.pmean.com/new-images/12/pesky15.PNG)
-   Notepad Replace dialog box

you are in for a rude surprise. Nothing happens, and there is no explanation for why nothing happened. If you think to click on the "Find Next" or "Replace" buttons, you get a bit of an explanation.

![](http://www.pmean.com/new-images/12/pesky12.PNG)
-   Dialog box (Cannot find "  ")

The system message (Cannot find " ") tells you that there are no double blanks anywhere in this file. It looks like there are dozens if not hundreds of double blanks. But the only blanks in the file are single blanks separating things like "for(" from "i" and "i" from "in". What looks on the outside like a bunch of blanks in a row are those pesky tab characters.

Here's another example where those pesky tab characters can mess you up. You're opening a text file in SPSS through their text wizard. Very early in the process, SPSS gives you a preview of the file.

![](http://www.pmean.com/new-images/12/pesky03.PNG)
-   First dialog box from text import wizard in SPSS

![](http://www.pmean.com/new-images/12/pesky02.PNG)
-   Second dialog box for text import wizard in SPSS

So you can choose a delimited file or a fixed width file. Fixed width looks good, but you'd have to spell out all those columns. Let's use a delimited file instead since each data value is separated from the next data value by one or more blanks.

Do this, though, and disaster strikes.

![](http://www.pmean.com/new-images/12/pesky05.PNG)
-   Third dialog box in text import wizard of SPSS

Oh, those pesky tab characters. It's those rascals and not the blanks that are separating data values. Fortunately, SPSS lets you specify both blanks and tabs as delimiters and this produces a much more reasonable result.

![](http://www.pmean.com/new-images/12/pesky07.PNG)
-   Fifth dialog box

This looks much better, but scroll over a bit.

![](http://www.pmean.com/new-images/12/pesky09.PNG)
-   Sixth dialog box

What happened here is that sometimes the original file needed an extra tab to keep certain rows aligned properly. Thus for everything except the fifth row of the file, an extra tab causes the text data to spill over into the next data field. Those pesky tab characters!

What should you do about the pesky tab characters? First, if you notice strange behavior in your text file, look to see if a tab character is lurking in the shadows. Suppose you had the cursor at the very beginning of the second line of this file. If you pressed the space bar, the cursor would move one space to the right, but the curly brace would stay put. Press the space bar again, and again the cursor moves to the right but the brace stays unmoved. Does this again and again and again. Eventually, you will get the curly brace to move, but it will jump suddenly by eight space. Another strange behavior is when you think that you are deleting a single space, but instead a batch of eight of them disappear with a single press of the DELETE key. Also, you might be trying to highlight a single space, and a batch of eight spaces is highlighted instead (see figure below). An irregular jump of the cursor when you move up and down is also sometimes an indicator of a tab character waiting to cause trouble.

![](http://www.pmean.com/new-images/12/pesky14.PNG)
-   Notepad app

Second, try to avoid tab characters if possible. I have adopted the CSV (comma separated value) format as my preferred way of storing files in text format. The CSV format is not perfect, but it is unlikely to have tab characters in it. Furthermore, the commas are always visible and any problems with an extra comma being inserted is easy to spot and fix.
Third, some systems will allow you to search for and replace tab characters. It varies from system to system, but you can look for hex code 09. Sometimes the search and replace dialog box will let you use \t as a code for the tab character.

Acknowledgment: The tab key picture was cropped from an image published under an open source license. You can find the original full image at http://capl.washjeff.edu/3/l/1623.jpg

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/12/pesky.html
[sim2]: http://www.pmean.com/original_site.html
