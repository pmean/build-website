---
title: "Finding those weird characters"
author: "Steve Simon"
source: "http://blog.pmean.com/weird-characters/"
date: "2019-02-11"
categories:
- Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

When you take a text file from one system and use it in a different system, some of the more "exotic" characters can change on you. An example are the "smart quotes" in Microsoft Word. Here's a brief explanation of why they occur and what you can do about it.

<!---More--->

There are several standards for text information. The simplest is called [7 bit ASCII][neu1] and it has special codes for 0 through 127. If all the characters you use are in this set, then you are okay. The quotes that are used are ASCII 34 for a straight double quote and ASCII 39 for a straight single quote. There's also a backtick, which is ASCII 096. There are some "invisible" ASCII codes, typically ASCII 32 and lower. Some of the important ones are the tab character (ASCII 11), the carriage return (ASCII 13), and the line feed (ASCII 12).

The tab is tricky because it looks like one or more blanks. When you are converting, sometimes the tab character is converted to the "correct" number of blanks and sometimes that correct number is not the number of blanks that you want.

Some systems will use both a carriage return and a line feed to designate a new line, some will use the carriage return only. So something that has nice line breaks in one system will run all of the lines together in another system.

There is an extension, called [8 bit ASCII or extended ASCII][wik1], and this is less standardized. These 8 bit ASCII systems add diacritical marks or other special characters that are needed for a range of European languages, various line drawing characters for displaying thin line, double line, and thick line boxes, and/or various characters useful in mathematics.

One particular pesky code is the non-breaking space (ASCII 160). This looks just like a space, but allows some systems to force the two words surrounding the non-breaking space to stay on the same line.

Extended ASCII has 256 characters (0 through 255), but this is still woefully incomplete. Two extensions that allow for a much larger set of characters are UTF-8 and Unicode.

You will find the "smart quotes" in the Unicode standard.

-   Left single quote (Unicode 2018)
-   Right single quote (Unicode 2019)
-   Left double quote (Unicode 201C)
-   Right double quote (Unicode 201D)

This information is buried deep in [an inquiry about smart quotes on the ars technical site][ars1].

[ars1]: https://arstechnica.com/civis/viewtopic.php?t=722235
[neu1]: http://www.neurophys.wisc.edu/comp/docs/ascii/
[wik1]: https://en.wikipedia.org/wiki/Extended_ASCII


