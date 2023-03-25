---
title: "A mixture of normal distributions"
source: "New"
date: "2023-03-24"
categories:
- Blog post
tags:
- Statistical theory
output: html_document
---

There is a simple theoretical result involving a mixture of normal distributions. If you select a normal distribution with a mean of zero and let the precision of that normal distribution vary according to a gamma distribution, you end up with a t-distribution.

<!--more-->


Let X have a conditional distribution

$f(X|\tau) =
  \sqrt{\frac{\tau}{2 \pi}}
  e^{-\frac{1}{2}\tau X^2}$

and let $\tau$ have an unconditional distribution gamma distribution with any positive value for $\alpha$ and $\beta$ = $\sqrt{\alpha}$ 

$g(\tau) = 
  \frac
    {(\sqrt\alpha)^{\alpha}}
    {\Gamma(\alpha)}
  \tau^{\alpha-1}
  e^{-\sqrt\alpha\tau}$

To get the unconditional distribution of X, you need to multiply the two distributions to get a joint distribution and integrate out the $\tau$ parameter.

$f(X)= \int 
  \sqrt{\frac{\tau}{2 \pi}}
  e^{-\frac{1}{2}\tau X^2}
  \frac{(\sqrt\alpha)^{\alpha}}{\Gamma(\alpha)}
  \tau^{\alpha-1}
  e^{-\sqrt\alpha\tau}
d\tau$

Pull out any multiplicative terms not involving $\tau$.

$f(X)=
  \frac
    {(\sqrt\alpha)^{\alpha}}
    {\sqrt{2 \pi}\Gamma(\alpha)}
  \int 
    \tau^{\alpha-\frac{1}{2}}
    e^{-\tau\sqrt{\alpha}(1+\frac{X^2}{2\alpha})}
  d\tau$

Recall that the gamma distribution with parameters $\alpha$ and $\beta$ has the form

$h(y) = 
  \frac{\beta^\alpha}{\Gamma(\alpha)}
  y^{\alpha-1}
  e^{-\beta y}$

What is inside the integral looks like a gamma distribution with

$\alpha^* = \alpha+\frac{1}{2}$,

$\beta^* = (1 + \frac{1}{2}X^2)$

Multiply inside by the normalizing constant

$\frac
  {(\frac{1}{2} (X^2+1))^{\alpha+\frac{1}{2}}}
  {\Gamma(\alpha+\frac{1}{2})}$

and outside by the reciprocal. With the normalizing constant in place the integral equals 1 and you are left with

$f(X) = 
  \frac{1}{\sqrt{2 \pi}2^{\alpha}\Gamma(\alpha)}
  \frac
    {\Gamma(\alpha+\frac{1}{2})}
    {(\frac{1}{2} (X^2+1))^{\alpha+\frac{1}{2}}}$
    
$f(X) = 
  \frac{1}{\sqrt{2 \pi}2^{\alpha}\Gamma(\alpha)}
  \frac
    {\Gamma(\alpha+\frac{1}{2})}
    {(\frac{1}{2} (X^2+1))^{\alpha+\frac{1}{2}}}$
    
This can also be shown to relate to a t-distribution

$\frac{\Gamma \left(\frac{\nu+1}{2} \right)}
  {\sqrt{\nu\pi}\,\Gamma \left(\frac{\nu}{2} \right)}
  \left(1+\frac{x^2}{\nu} \right)^{-\frac{\nu+1}{2}}$

