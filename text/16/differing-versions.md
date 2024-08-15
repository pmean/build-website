---
title: "When differing versions of R packages matter"
author: "Steve Simon"
source: "http://blog.pmean.com/differing-versions/"
date: "2016-12-19"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

When you use R, you are using a program that is constantly evolving. The user-contributed packages are also evolving as well. Normally this is not that big a deal. But sometimes it is.

<!---More--->

I was using a package, stringr, to manipulate strings, but my version of stringr did not have a function, (str\_dup or str\_trunc, I think). It was only available in the most recent version. So it was time to go update stringr. No problem, except then I got a weird message,

Error: "stringr" version 0.6.2 cannot be unloaded.

It turns out that one of the other R packages (maybe knitr) is loading an earlier version of stringr and it is interfering with the current version of stringr. I'm not sure how to resolve this problem, other than to forgo the most recent stringr library updates or forgo the knitr library.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/differing-versions/
[sim2]: http://blog.pmean.com
