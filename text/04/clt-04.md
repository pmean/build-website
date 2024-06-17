---
title: Central Limit Theorem
author: Steve Simon
date: 2004-03-09
categories:
- Blog post
tags:
- Modeling issues
output: html_document
page_update: partial
---
*Dear Professor Mean, How does the central limit theorem affect the
statistical tests that I might use for my data?*

The Central Limit Theorem tells you about how an average from a random
sample behaves. For most situations, the average from a random sample
will tend towards a normal distribution (bell-shaped curve) as the
sample size increases, even if the individual data values follow a
different distribution.

How quickly the average converges to a normal distribution depends on
what the individual data look like. Highly skewed data and/or data with
outliers will tend to converge more slowly. If your data has no outliers
and is reasonably symmetric, then convergence will be very fast.

If your sample size is large, then you should be more comfortable with
using parametric statistics, like a t-test or analysis of variance,
because you can be reasonably confident that the averages used in the
t-test or analysis of variance, are reasonably close to a normal
distribution.

**Further reading**

The first four references give nice computer simulations of the central
limit theorem. The last two references gives the detailed mathematical
conditions for the central limit theorem.

1.  **[Central Limit Theorem. Example:
    Uniform.](http://www.statisticalengineering.com/central_limit_theorem.htm)**.
    Annis C. Accessed on 2004-03-09.
    www.statisticalengineering.com/central\_limit\_theorem.htm
2.  **[The Central Limit Theorem in
    Action](http://www.rand.org/methodology/stat/applets/clt.html)**.
    Krider D. Accessed on 2004-03-09.
    www.rand.org/methodology/stat/applets/clt.html
3.  **[Central Limit
    Theorem](http://faculty.vassar.edu/lowry/central.html)**. Lowry R,
    Vassar College. Accessed on 2004-03-09.
    faculty.vassar.edu/lowry/central.html
4.  **[Central Limit Theorem
    Applet](http://www.stat.sc.edu/~west/javahtml/CLT.html)**. Ogden RT,
    Department. of Statistics, University of South Carolina. Accessed on
    2004-03-09. www.stat.sc.edu/\~west/javahtml/CLT.html
5.  **[Central Limit
    Theorem](http://www.itu.dk/bibliotek/encyclopedia/math/c/c181.htm)**.
    Weisstein EW. Accessed on 2004-03-09.
    www.itu.dk/bibliotek/encyclopedia/math/c/c181.htm
6.  **[Central limit
    theorem](http://en.wikipedia.org/wiki/Central_limit_theorem)**.
    Wikipedia. Accessed on 2004-03-09.
    en.wikipedia.org/wiki/Central\_limit\_theorem

You can find an [earlier version](http://www.pmean.com/04/clt.html) of this page on my [original website](http://www.pmean.com/original_site.html).
