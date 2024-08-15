---
title: "A megabyte is not a million bytes"
author: "Steve Simon"
source: "http://blog.pmean.com/megabyte/"
date: "2016-05-12"
categories: Blog post
tags:
- R software
- Statistical computing
output: html_document
page_update: complete
---

Sometimes you forget things. Here's an example.

<!---More--->

I wanted to test some features of the object.size function in R. I created a vector of a million observations and looked at its size. Depending on how I looked at the size, the results seemed inconsistent.

Here's the R code.

```
> tst &gt- 1:1000000
object.size(tst)
4000040 bytes
> format(object.size(tst), "auto")
[1] "3.8 Mb"
```

So how come when you list the size in byes, it is slightly over 4 megabytes, but when you use the format function, the size shrinks to 3.8 megabytes?

Well, the answer is that a megabyte (2\^20 bytes) is not a million bytes but rather 1,048,576 bytes. Divide 4,000,040 by 1,048,576 and you'll see that the result is approximately 3.8.

I should have known that, but the reflexive divide by a million to convert bytes to megabytes is only an approximation to the truth.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/megabyte/
[sim2]: http://blog.pmean.com
