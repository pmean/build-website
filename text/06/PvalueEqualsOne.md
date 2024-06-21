---
title: Can the p-value actually equal 1.0?
author: Steve Simon
source: http://www.pmean.com/06/PvalueEqualsOne.html
date: 2006-05-23
categories:
- Blog post
tags:
- Pvalues
output: html_document
page_update: partial
---

*Dear Professor Mean, I have a data set that compares the proportions in
two groups. In the first group, the proportion is 19% (5/26). In the
second group, the proportion is also 19% (3/16). I computed a p-value of
1.0 for this data, but a referee tells me that a p-value of 1.0 is
impossible. How can I convince the referee that he/she is wrong.*

I've mentioned the PMSS defense before (because Professor Mean Said
So), but that never really works.

Seriously, what you have hear is not a peer-reviewer, but a professional
nit-picker. A p-value is a number between 0 and 1, and in most realistic
situations, a value at the boundary (especially a value at 0) is
impossible. A value of 1 is impossible because when you compute two
statistics from two normally distributions, the probability that those
two statistics are exactly equal is 0. And only an exact equality will
lead to a p-value of 1.

If you look at your data, the probabilities are not exactly 19%. They
are 19.23% and 18.75%. So your p-value is not equal to 1.0, but rather
0.9692.

A good reviewer, however, would have recognized that this problem does
not use normal distributions directly, but only as an approximation. You
can indeed get a p-value of 1.0 from this data if you use the Fisher's
Exact Test. Fisher's Exact test looks at all possible two by two tables
that have the same marginal totals and computes the probability of the
existing table and any table more extreme.

Your two by two table is

>   --- ---- ----
>     5   21   26
>     3   13   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
There are eight other tables that have the same marginal totals.

>   --- ---- ----
>     8   18   26
>     0   16   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
This table shown above represents the most extreme case in that the
difference in proportions is the largest possible value (30.77%).

>   --- ---- ----
>     7   19   26
>     1   15   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
This table also produces a more extreme difference in proportions
(20.67%)

>   --- ---- ----
>     6   20   26
>     2   14   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
as does this this table (10.58%). Your table shows a difference of
0.48%.

There are four other tables to consider.

>   --- ---- ----
>     4   22   26
>     4   12   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
This table shows a difference of -9.62%, which is a bit more extreme
than 0.48%, but in the opposite direction from the previous tables.

>   --- ---- ----
>     3   23   26
>     5   11   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
This table is also more extreme, with a difference in proportions of<U+FFFD>
-19.71%

>   --- ---- ----
>     2   24   26
>     6   10   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
as is this table (-29.81%)

>   --- ---- ----
>     1   25   26
>     7    9   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
and this table (-39.90%)

>   --- ---- ----
>     0   26   26
>     8    8   16
>     8   34    <U+FFFD>
>   --- ---- ----
>
and this table, which shows a whopping difference of -50%.

Now the classic definition of a p-value is the probability of observing
the sample results or a result more extreme. With this data set, every
other possible table with the same fixed marginals is more extreme than
the table that you observed. So it would be very logical and very proper
to state that the two-sided p-value for Fisher's Exact Test is 1.0 in
this situation.

Would it help to point out that this reviewer is wrong in stating that
the p-value can never equal 1.0? Not really. You don't want to pick a
fight with a peer reviewer unless one of their suggestions does serious
violence to the data. So the polite response is to thank the reviewer
for his/her comment and save your ammunition for another battle.

In the future, when you get a p-value of 1.0, round it down to 0.9999
and when you get a p-value of 0, round it up to 0.0001. That will give
the nit pickers of the world one less nit to pick with you.
