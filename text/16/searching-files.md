---
title: "Searching through a mess of files"
author: "Steve Simon"
source: "http://blog.pmean.com/searching-files/"
date: "2016-02-16"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

I am working on a project that has a series of files in R and R Markdown, and I need to track down where a particular function was originally defined. In Unix based systems, this is pretty easy to do.

<!---More--->

There's a built in function, grep, that does the job. So

grep "string" \*.\*

will find and list the occurences of "string" in every file in your current directory. There are lots of variations, type

grep --help

for details. The real computer nerds already know this, but I'm just getting started with Unix based commands.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/searching-files/
[sim2]: http://blog.pmean.com
