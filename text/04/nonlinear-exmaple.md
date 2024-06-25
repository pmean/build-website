---
title: Nonlinear Least Squares in S-plus and R
author: Steve Simon
date: 2004-06-28
categories:
- Blog post
tags:
- Nonlinear regression
output: html_document
page_update: partial
---

I've worked on a brief explanation of how to [fit an S-shaped curve][sim1] using SPSS and someone wanted to know how to do this in R.

Here's a simple example.

```{r}
xc <- c(0.8,0.5,0.2,-0.2,-0.5,-0.8)
yn <- c(0.02,0.10,0.29,0.20,0.80,1.00)
nls.mod1 <- nls(yn~1/(1+exp(b*xc-a)),start=list(a=0,b=10))
summary(nls.mod1)
```
You can find an [earlier version][sim1]) of this page on my [original website][sim2].

Also see [this related file][sim3].

[sim1]: http://www.pmean.com/04/nonlinear.html
[sim2]: http://www.pmean.com
[sim3]: http://new.pmean.com/post/scurve.html
