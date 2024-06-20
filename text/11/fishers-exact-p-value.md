---
title: There's more than one way to calculate a Fisher's exact p-value
author: Steve Simon
date: 2011-07-21
categories:
- Blog post
tags:
- Measuring benefit and risk
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

<!---More--->

I was trying to check the calculations associated with a two by two table and I noticed an inconsistency in the reporting of results. One program reported a p-value of 0.4588 for the two-tailed Fisher's exact test, and the other package reported a p-value of 0.308088. The packages otherwise agreed with one another. So which package is right? Well it turns out that both of them are correct because there is more than one way to calculate a Fisher's exact p-value. To understand this, you need to recall the computational details of Fisher's exact test.

Here are the two competing outputs from OpenEpi

![Figure1. Output from OpenEpi](http://www.pmean.com/new-images/11/Fishers01.jpg)

and the epitools package in R.

![Figure2. Output from epitools](http://www.pmean.com/new-images/11/Fishers02.jpg)

The table used in this example,

![Figure 3. Two by two table](http://www.pmean.com/new-images/11/Fishers03.jpg)

is one of sixteen possible tables that have the same row totals and column totals.

![Figure 4. Sixteen possible two by two tables](http://www.pmean.com/new-images/11/Fishers04.jpg)

Each of these tables has a probability associated with the hypergeometric distribution.

![Figure 5. Tables with their hypergeometric probabilities](http://www.pmean.com/new-images/11/Fishers05.png)

and you can draw a barchart of these probabilities.

![Figure 6. Bar chart of table probabilities](http://www.pmean.com/new-images/11/Fishers06.png)

The right-tailed p-value is just the sum of all the probabilities of the observed table (5) and any larger tables (6, 7, ...).

![Figure 7. Illustration of right-tailed p-value calculation](http://www.pmean.com/new-images/11/Fishers07.png)

![Figure 8. Illustration of right-tailed p-value calculation](http://www.pmean.com/new-images/11/Fishers08.png)

The left-tailed p-value would be the sum of all the probabilities of the observed table (5) and any smaller tables (4, 3, ...).

![Figure 9. Illustration of left-tailed p-value calculation](http://www.pmean.com/new-images/11/Fishers09.png)

![Figure 10. Illustration of left-tailed p-value calculation](http://www.pmean.com/new-images/11/Fishers10.png)

The problem with this (if you think it is a problem) is that the left-tailed and right-tailed p-values add up to more than 1.0 because the probability associated with the "5" table is counted in both p-values. So an alternative is to split this probability in half and add half to the right-tailed p-value and half to the left-tailed p-value. This is called the mid p correction.

![Figure 11. Illustration of the mid p correction](http://www.pmean.com/new-images/11/Fishers11.png)

![Figure 12. Illustration of mid p correction](http://www.pmean.com/new-images/11/Fishers12.png)

![Figure 13. Illustration of the mid p correction](http://www.pmean.com/new-images/11/Fishers13.png)

![Figure 14. Illustration of the mid p correction](http://www.pmean.com/new-images/11/Fishers14.png)

We're not done yet because there is a second source of ambiguity, the calculation of a two-sided p-value. Most people calculate the two-sided p-value by doubling the one-sided p-value. That works perfectly if there is symmetry in the sampling distribution, but that is not the case here. When there is asymmetry, you get a better answer if you sum all the probabilities that are smaller than the probability for the observed table.

![Figure 15. Illustration of two-sided p-value calculation](http://www.pmean.com/new-images/11/Fishers15.png)

![Figure 16. Illustration of two-tailed p-value calculation](http://www.pmean.com/new-images/11/Fishers16.png)

So here's how each of the p-values were computed.

![Figure 17. OpenEpi output](http://www.pmean.com/new-images/11/Fishers17.jpg)

The one tailed Fisher's exact is 0.2294. This corresponds to a right tailed p-value as described above.

The two tailed Fisher's exact p-value is 0.4588. This is simply twice the one-tailed p-value.

![Figure 18. OpenEpi output](http://www.pmean.com/new-images/11/Fishers18.jpg)

The epitools package in R produces two-tailed p-values only.

![Figure 19. OpenEpi output](http://www.pmean.com/new-images/11/Fishers19.jpg)


The two tailed p-value associated with Fisher's exact test is 0.308088. This is computed by looking at the probability of the "5" table and adding in the probabilities of any tables less likely (0, 1, 6, 7, 8,...).

![Figure 20. Illustration of two-tailed p-value calculation](http://www.pmean.com/new-images/11/Fishers20.png)

Both programs are correct, as verified by my hand calculations shown above. The discrepancy is caused by a different computational algorithm in the two programs.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/Fishers.html
[sim2]: http://www.pmean.com/original_site.html 
  
