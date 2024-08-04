---
title: "100 interview questions? A big oops on the very first one."
author: "Steve Simon"
source: "http://blog.pmean.com/interview-questions/"
date: "2017-10-17"
categories: Blog post
tags:
- Statistical theory
output: html_document
page_update: complete
---

I shouldn't do this, because we've all made mistakes, especially me. But I took a peek at a website with the intriguing title "[100+ commonly asked data science interview questions](http://www.datasciencecentral.com/profiles/blogs/100-commonly-asked-data-science-interview-questions)" with the thought "Maybe I could be a data scientist". But the author of this list choked on the very first question. It's interesting to examining why the question is bad. 

<!---More--->

The question reads: "*Prove that a random variable with a distribution on \[0,1\] (that is, the density function is equal to 0 outside \[0, 1\]) has an expectation always between 0 and 1. Prove that its variance is maximum and equal to 1/12 if and only if the distribution is uniform on \[0, 1\].*"

The first half is okay. The integral of xf(x) over the interval 0 to 1 is bounded above by the integral of f(x) over the interval 0 to 1 and you know that the latter has to equal 1 for it to be a density function.

The second half, though, is wrong. A Bernoulli random variable with probability 1/2 is bounded between 0 and 1 and has variance 1/4. That's a whole lot bigger than 1/12.

You can confirm this with a quick simulation in R. The single line

``` {#rstudio_console_output tabindex="0"}
var(rbinom(1000, 1, 0.5))
```

will give you an answer that is pretty close to 0.25.

No fair, you claim. The Bernoulli distribution does not have a density function because it is not a continuous random variable.

That's true. Let's consider a different case then. Let's consider a beta random variable with parameters alpha=0.5 and beta=0.5. I had to peek at [Wikipedia](https://en.wikipedia.org/wiki/Beta_distribution), but the variance of a beta distribution is

alpha\*beta / ((alpha+beta)\^2 \* (alpha+beta+1).

Plug in alpha=1 and beta=1 as a quick check and you do indeed get 1/12. When you plug in alpha=0.5 and beta=0.5, you get 1/8. Check this in R with

``` {#rstudio_console_output tabindex="0"}
var(rbeta(1000, 0.5, 0.5))
```

and you'll get a value close to 0.125.

Maybe, you'll say something like, no fair because the density function of this particular beta distribution is unbounded at both 0 and 1.

Fair enough. How about a distribution that is uniform on the interval 0 to 1/3 and 2/3 to 1? That has a variance of roughly 2/9.

You say that you were talking about unimodal distributions only. I'm not sure, but I think you might be right about 1/12 being the largest variance possible...

...except that a uniform distribution is multi-modal.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/interview-questions/
[sim2]: http://blog.pmean.com
