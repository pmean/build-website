---
title: "Whitespace character"
source: "New"
author: Steve Simon
date: "2024-12-19"
categories: Recommendation
tags:
- Text data
output: html_document
page_update: no
---

![](http://www.pmean.com/new-images/24/wikipedia-white-space-01.png "Excerpt from recommended website")

::: notes
I have often struggled with processing text data in R that has the non-breaking space character (ASCII 160). It turns out that there are about a dozen other characters that look like a space/blank, but which are not the standard space character (ASCII 32). These characters are collectively referred to as whitespace characters and include other characters like line feed (ASCII 10) and carriage return (ASCII 13) that do not print but which control where the rest of the text in a string displays.

Many of the whitespace characters are limited to the use of specific foreign languages. The Ogham Space Mark, for example, is only used in the early Middle Ages Irish alphabet, Ogham. It is still helpful to see a comprehensive list of all the special characters that may be part of a string but which appear as more or less invisible when displayed on your computer screen.

Wikipedia. Whitespace character. Available in [html format][wik1].

[wik1]: https://en.wikipedia.org/wiki/Whitespace_character
:::
