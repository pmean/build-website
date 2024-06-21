---
title: Another regular expression tip
author: Steve Simon
source: http://www.pmean.com/06/RegularExpressionsA.html
date: 2006-05-23
categories:
- Blog post
tags:
- Data management
output: html_document
page_update: partial
---

I had a large text file and I had to find the first example of a line
that did NOT begin with the letter A. That's easier said than done, but
you can use some special symbols in regular expressions to do this.

Just search for

-   \^\[\^A\]

The first caret (\^) tells you that you need to restrict your attention
to strings that begin a new line. The meaning of the caret changes when
it is inside brackets. Inside brackets, the caret means find anything
except the following character.

If you wanted to search for any line that does not begin with a letter,
use the following

-   \^\[\^A-Za-z\]

To find the first line that does not begin with a blank, use

-   \^\[\^ \]
