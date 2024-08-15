---
title: "The dget function in R is very slow"
author: "Steve Simon"
source: "http://blog.pmean.com/slow-dget/"
date: "2014-01-22"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

I made another rookie mistake in R. I have a program in R that needed to store a large matrix for later re-use. You can use the dput function to put a copy of the matrix out on your local hard drive, and you can retrieve it later with dget. It turns out that dput ran pretty quickly, but dget was very very slow. The matrix was large (320 rows by 320 columns) but it still seemed to be too slow. It turns out that I didn't really understand how R works.

<!---More--->

The dput function stores your matrix in text format. This is nice in that it allows you to peek at the file using notepad or any other text editor. You could have instead stored your matrix using the save function, but that stores the data in a binary format. A binary format, loosely speaking, is a format that is not easily read by a text editor. It either includes special formatting codes (like Microsoft Word) or stores the data as the actual binary representation (like save).

I didn't know this, but while writing, it doesn't matter much whether you write text or binary. It is reading where you see a big difference. So the dput and save functions are both pretty fast. The load function, however, which reads a binary file into R, is hugely faster than the dget function, which reads a text file into R.

For really small matrices, you won't notice anything, but even a 320 by 320 matrix, which is not extremely large by today's standards, is enough to slow R down substantially. There are several places on the Internet where the slowness of dget is explained (see [here][rhe3], for example), but I was unaware of this until just recently.

So from now on, I'll store large matrices using save instead of dput and I'll read them back using load instead of dget. I won't be able to peek at the files with a text editor, but the time savings will more than offset this inconvenience.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/slow-dget/
[sim2]: http://blog.pmean.com

[rhe1]: https://stat.ethz.ch/pipermail/r-help/2010-November/258794.html
