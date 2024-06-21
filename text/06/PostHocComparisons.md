---
title: Post hoc comparisons
author: Steve Simon
source: http://www.pmean.com/06/PostHocComparisons.html
date: 2006-03-15
categories:
- Blog post
tags:
- Analysis of variance
output: html_document
page_update: partial
---

Note: It's been a while since I last used the "Ask Professor Mean"
format on these web pages, and I can't think of a good reason why I
abandoned that format. I just saw a question on the [Epidemiology email
discussion group](http://www.listes.umontreal.ca/wws/info/epidemio-l)
that<U+FFFD> I could adapt to the Ask Professor Mean format.

*Dear Professor Mean, I need to run multiple comparisons among all
possible pairs of means following an analysis of variance test. What is
the best approach? Tukey? Scheffe? Bonferroni?*

Entire books have been written about this topic:

-   **Simultaneous Statistical Inference Second Edition.** Rupert G.
    Miller (1981) New York: Springer-Verlag. [\[BookFinder4U
    link\]](http://www.bookfinder4u.com/detail/0387905480.html)
-   **Multiple Comparisons Theory and Methods.** Jason C. Hsu (1996)
    London: Chapman & Hall. [\[BookFinder4U
    link\]](http://www.bookfinder4u.com/detail/0412982811.html)

so even Professor Mean is incapable of providing a good summary.
Furthermore, there is no consensus in the research community about the
best approach. So plan on having someone point out the error in the
approach you choose, no matter what your choice. There are two
procedures, however, that are ESPECIALLY LIKELY to draw criticism:
Duncan, because it is too liberal, and Scheffe because it is too
conservative. Most other procedures work reasonably well and it may not
be worth your time and trouble to try to distinguish among the choices.

I like Tukey because it is easy to understand and reasonably safe. But
Tukey is going to encounter problems with seriously unbalanced data
and/or seriously unequal variation from one group to another.

**Further reading:**

-   [Stats: Step-down procedures for multiple comparisons (June
    16, 2005)](../05/MultipleComparisons.html)
-   [Stats: Unequal sample sizes (November
    24, 2004)](../04/UnequalSampleSizes.html)
-   [Stats: Multiple degree of freedom tests (September
    22, 2004)](../04/MultipleDF.html)
-   [Stats: Guidelines for ANOVA models](../03/anova.asp)
-   [Stats: Bonferroni correction](../99/bonferroni.html)
