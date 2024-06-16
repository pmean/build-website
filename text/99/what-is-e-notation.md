---
title: E notation
source: http://www.pmean.com/99/enotation.html
author: Steve Simon
date: 1999-09-03
categories:
- Blog post
tags:
- Being updated
- Writing research papers
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, In my regression output, I saw that following
value: -2.384E-03. What does this E notation mean?*

Think of the "E" as short for extreme. Some numbers are very small,
such as

0.0000000000000000000000016727

the weight of a proton in grams. Other numbers are very large, such as

5,913,520,000

the number of kilometers from the Sun to Pluto. In both cases it is
difficult for a computer to display this number in a fixed amount of
space. We can save some space by representing the number as a value
between 1 and 10 times a power of ten. For example, the two numbers
listed above could be represented as 1.6727\*10\^-24 and 5.91352\*10\^9.

The "E" is shorthand for multiply the number on the left by 10 raised
to the power of the number on the right. We refer to this as scientific
notation.

The value following the E tells you how many decimal places to shift
your answer. If the value is negative, shift to the left. If the value
is positive, shift to the right. So, the value -2.384E-03 means to shift
the decimal three places to the left. When we do this, we get

-0.002384

Let's suppose that SPSS displayed a very large number as 3.452E6. We
would move the decimal 6 places to the right to get

3,452,000

**Further reading**

If you want to find out more about scientific notation, check out the
following web site.

1.  **Scientific Notation in Everyday Life**.\
    Philip Spencer (accessed on July 27, 2001)\
    <http://www.math.toronto.edu/mathnet/plain/questionCorner/scinot.html>

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/enotation.html
[sim2]: http://www.pmean.com/original_site.html
