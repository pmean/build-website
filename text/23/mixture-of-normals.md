---
title: "A mixture of normal distributions"
source: "New"
date: "2023-03-24"
categories:
- Blog post
tags:
- Statistical theory
output: html_document
page_update: complete
---

There is a simple theoretical result involving a mixture of normal distributions. If you select a normal distribution with a mean of zero and let the precision of that normal distribution vary according to a gamma distribution, you end up with a t-distribution.

<!--more-->


Let x have a conditional distribution

$f(x|\tau) =
  \sqrt{\frac{\tau}{2 \pi}}
  e^{-0.5\tau x^2}$

and let $\tau$ have an unconditional distribution gamma distribution with any positive value for $\alpha$ and $\beta$. 

$g(\tau) = 
  \frac
    {\beta^\alpha}
    {\Gamma(\alpha)}
  \tau^{\alpha-1}
  e^{-\beta\tau}$

To get the unconditional distribution of x, you need to multiply the two distributions to get a joint distribution and integrate out the $\tau$ parameter.

$f(x)= \int 
  \sqrt{\frac{\tau}{2 \pi}}
  e^{-0.5\tau x^2}
  \frac{\beta^{\alpha}}{\Gamma(\alpha)}
  \tau^{\alpha-1}
  e^{-\beta\tau}
d\tau$

Pull out any multiplicative terms not involving $\tau$.

$f(x)=
  \frac
    {\beta^{\alpha}}
    {\sqrt{2 \pi}\Gamma(\alpha)}
  \int 
    \tau^{\alpha-0.5}
    e^{-\tau\left(\beta+\frac{x^2}{2}\right)}
  d\tau$

Recall that the gamma distribution with parameters $\alpha$ and $\beta$ has the form

$h(y) = 
  \frac{\beta^\alpha}{\Gamma(\alpha)}
  y^{\alpha-1}
  e^{-\beta y}$

What is inside the integral looks like a gamma distribution with

$\alpha^* = \alpha+0.5$,

$\beta^* = \beta+\frac{x^2}{2}$

Multiply inside by the normalizing constant

$\frac
  {\left(\beta+\frac{x^2}{2}\right)^{\alpha+0.5}}
  {\Gamma(\alpha+0.5)}$

and outside by the reciprocal. With the normalizing constant in place, the integral equals 1 and you are left with

$f(x) = 
  \frac
    {\beta^{\alpha}}
    {\sqrt{2\pi}\Gamma(\alpha)}
  \frac
    {\Gamma(\alpha+0.5)}
    {\left(\beta+\frac{x^2}{2}\right)^{\alpha+0.5}}$

which simplifies to
    
$f(x) = 
  \frac
    {\Gamma(\alpha+0.5)}
    {\sqrt{2\beta\pi}\Gamma(\alpha)}
  \left(1+\frac{x^2}{2\beta}\right)^{-(\alpha+0.5)}$
    
This can also be shown to relate to a t-distribution

$\frac
    {\Gamma\left(\frac{\nu+1}{2}\right)}
    {\sqrt{\nu\pi}\,\Gamma \left(\frac{\nu}{2} \right)}
  \left(1+\frac{x^2}{\nu} \right)^{-\frac{\nu+1}{2}}$

if you let

$\alpha=\beta=\frac{\nu}{2}$.

