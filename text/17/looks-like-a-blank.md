---
title: "It only looks like a blank"
author: "Steve Simon"
source: "http://blog.pmean.com/looks-like-a-blank/"
date: "2017-05-24"
categories: Blog post
tags:
- R software
output: html_document
page_update: partial
---

I was having trouble with trailing blanks in an R program. There were
some strings that looked like " Y" and "Y " and it's easy enough to fix
this, but one of the "Y " values was not converting properly. The second
character wasn't a blank, but it looked like it. Here's what I had to
do.

<!---More--->

First, there are several ways to remove leading and trailing blanks. I
used the commands

```
mv1[, i] %<>% sub("^ +", "", .)
mv1[, i] %<>% sub(" +$", "", .)
```

which might not be the best, but it worked for every instance of " Y"
and "Y " except one instance of "Y ". It took forever to find the value,
because searching on "Y " obviously didn't work. I finally said, find
anything that is not what I thought all the possible values might be. It
was row 168. When you printed the value,

```
> mv1[168, 14]
[1] "Y "
```

it looked fine. So I figured I had to look at the underlying ascii
codes. There's a way to do this in R, the charToRaw function.

```
> charToRaw(mv1[168, i])
[1] 59 a0
```

I knew that the code for blank in ascii is 32, so something is
definitely up here. You can find out quickly on the web at a0 is a
non-breaking space. How that got into the data set is a mystery to me.
Now, how do you fix it? There is a rawToChar function, but if you just
say

```
rawToChar(a0)
```

it won't work. There's an as.raw function, but it doesn't take
hexadecimal. So you have to convert a0 to 160 and then it works. There's
also an intToUtf8 function and probably other ways as well.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/looks-like-a-blank/
[sim2]: http://blog.pmean.com
