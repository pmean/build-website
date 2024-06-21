---
title: Rules for rounding numbers
author: Steve Simon
source: http://www.pmean.com/06/RoundingNumbers.html
date: 2006-09-07
categories:
- Blog post
tags:
- Descriptive statistics
output: html_document
page_update: partial
---

When you are reporting means and percentages from a descriptive data
analysis, you should round your data to make it more readable.
Ideally, you should show only two significant figures. A common source
for confusion about rounding numbers is what you should do when the
digit being rounded off is a 5.

There are three rules commonly used

-   Round the 5 downward (3.65 becomes 3.6)
-   Round the 5 upward (3.65 becomes 3.7)
-   Round to the even digit (3.65 becomes 3.6, 3.75 becomes 3.8)

There aren't any good rationales for the first rule. The rationale
for the second rule is that the digits 0,1,2,3,4 always round down and
6,7,8,9 always round up. Placing the 5 in the "Always round up"
category insures that half the digits round downward and half the
digits round upward. Here's a graphic that illustrates the issue.

![](http://www.pmean.com/new-images/06/RoundingNumbers01.gif)

Adding 5 to the "Always round up" category balances things out.

![](http://www.pmean.com/new-images/06/RoundingNumbers02.gif)

The round to the even digit rule assumes that the rounded digit
actually stands in for a range of values. The value 3.62, for example
really represents anything from 3.61500.. to 3.62499.. and when you
present the data this way, the graph looks different.

![](http://www.pmean.com/new-images/06/RoundingNumbers03.gif)

Now the only way to keep things balanced is to round the 5 up half the
time and round it down half the time. If you assume that the digit
preceding the rounded digit is just as likely to be even or odd (an
assumption that is not too outrageous), then rounding to the even
digit is effectively the same as flipping a coin to decide whether to
round up or round down.

There's a cute joke at [www.netfunny.com](http://www.netfunny.com)
that is relevant to this discussion.

*A farmer is wondering how many sheep he has in his field, so he
asks his sheepdog to count them. The dog runs into the field, counts
them, and then runs back to his master. "So," says the farmer.
"How many sheep were there?" "40," replies the dog. "How can
there be 40?" exclaims the farmer. "I only bought 38!" "I
know," says the dog. "But I rounded them up."*
[www.netfunny.com/rhf/jokes/06/Aug/sheepdog.html](http://www.netfunny.com/rhf/jokes/06/Aug/sheepdog.html)  
