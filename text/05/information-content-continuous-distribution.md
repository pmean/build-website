---
title: Information content of a continuous distribution
author: Steve Simon
date: 2005-08-01
categories:
- Blog post
tags:
- Being updated
- Information searching
output: html_document
page_update: partial
---
I was browsing through the book

- **Statistical Distributions Second Edition.** Evans M, Hastings N,
Peacock B (1993) New York: John Wiley & Sons. ISBN: 0471559512.
[BookFinder4U
link]](http://www.bookfinder4u.com/detail/0471559512.html)

when I noticed that they defined the information content of the
exponential distribution as

![Information01.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB01.png)

where e is the mathematical constant 2.718... and b is the scale
parameter (effectively the standard deviation) of the exponential
distribution. Very interesting, I thought, since I had been working on
information theory models for categorical variables and had wondered how
you might extend this to continuous variables. Earlier in the book, they
defined information content (or entropy) as

![Information02.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB02.png)

Compare this to the formula used for categorical variables

![Information03.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB03.png)

If you took a continuous distribution and created bins of size 1/n, the
probability for bin i would be

![Information04.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB04.png)

Note that with this notation, i could take on both negative and positive
values, depending on the range of the distribution. For large n, this
looks suspiciously like the top half of a the definition of a
derivative. This tells you that the difference can be approximated by

![Information05.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB05.png)

So the entropy for a continuous variable using bins of size 1/n is

![Information06.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB06.png)

The left side of the equation is approximately equal to

![Information07.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB07.png)

and the right side is the classic [Riemann
sum](http://en.wikipedia.org/wiki/Riemann_sum) and will converge to the
integral shown above. If you think about it, this is quite intuitive.
You really wouldn't want to calculate entropy for a continuous random
variable the exact same way as for a categorical variable. The infinite
number of values for a continuous variable would swamp the formula for
entropy as derived for categorical variables. So you have to adjust for
the decreasing bin widths, which is the log(n) factor seen above.

I could probably explain this better if it weren't a Monday, so I will
work on the concept a bit.

The book also computes the information content for the normal
distribution. It is

![Information08.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB08.png)

For both of these distributions, a doubling of the standard deviation
leads to one extra bit of uncertainty. The book does not derive the
information content for a uniform distribution, but that is very easy to
calculate also. If X is uniform on the interval 0 to a, then the
information content of X is

![Information09.gif not found.](http://www.pmean.com/new-images/05/InformationTheoryB09.png)

which again is very intuitive. If you cut the range of a uniform
distribution in half, you have one less bit of uncertainty.

**Further reading**

- <http://www.ia.hiof.no/prosjekter/hoit/html/nr1_99/im.html>
- <http://planetmath.org/encyclopedia/Entropy.html>

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/InformationTheoryB.html
[sim2]: http://www.pmean.com/original_site.html
