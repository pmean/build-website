---
title: Fisher's Exact Test
source: http://www.pmean.com/00/fishers.html
author: Steve Simon
date: 2000-08-23
categories:
- Blog post
tags:
- Logistic regression
output: html_document
page_update: partial
---
*Dear Professor Mean, What is Fisher's Exact Test and when should I use it?*

Fisher's Exact test is a procedure that you can use for data in a two by two contingency table. It is an alternative to the Chi-square test.

A two by two contingency table arises in a variety of contexts, most often when a new therapy is compared to a standard therapy (or a control group) and the outcome measure is binary (live/dead, diseased/healthy, infected/uninfected, etc.).

Fisher's Exact Test is based on exact probabilities from a specific distribution (the hypergeometric distribution). The Chi-square test relies on a large sample approximation. Therefore, you may prefer to use Fishers Exact test in situations where a large sample approximation is inappropriate.

There's really no lower bound on the amount of data that is needed for Fisher's Exact Test. You do have to have at least one data value in each row and one data value in each column. If an entire row or column is zero, then you don't really have a 2 by 2 table. But you can use Fisher's Exact Test when one of the cells in your table has a zero in it. Fisher's Exact Test is also very useful for highly imbalanced tables. If one or two of the cells in a two by two table have numbers in the thousands and one or two of the other cells has numbers less than 5, you can still use Fisher's Exact Test.

For very large tables (where all four entries in the two by two table are large), your computer may take too much time to compute Fisher's Exact Test. In these situations, though, you might as well use the Chi-square test because a large sample approximation is very reasonable.

**Reporting Fisher's Exact Test**

I did get an inquiry from someone about how to report Fisher's Exact Test in a publication. This is tricky, because this test only provides a p-value. Fisher's Exact Test has no formal test statistic and no critical value. Also, Fisher's Exact Test does not produce a confidence interval. [Actually, someone pointed out that you can get a confidence interval from Fisher's Exact Test, but it turns out that most software programs do not include this confidence interval. I have used StatXact software when I needed a confidence interval in this situation.]

Here's of abstracts on Medline that show how different people have reported results from Fisher's Exact test.

*Follow-up examination at 7 to 10 days showed negative urine cultures in 76% of patients from the single-dose group and 89% from the multiple-dose group, a difference that was not statistically significant (P = 0.665, Fisher's exact test).*

PMID: [2764538][2764]

[2764]: https://pubmed.ncbi.nlm.nih.gov/2764538/

*However, endometrial carcinoma was significantly more likely to stain positively with C/EPB beta than benign endometrial glands (92% versus 3% respectively, p \< 0.0001, Fisher's exact test).*

PMID: [12713669][1271]

[1271][https://pubmed.ncbi.nlm.nih.gov/12713669/]

*Statistical analysis (two-sided Fisher's exact test) confirmed that mutations in K-ras and p53 co-occurred less frequently than expected by chance (P \< 0.01, Fisher's exact test).*

PMID: [12093899][1209]

[1209]: https://pubmed.ncbi.nlm.nih.gov/12093899/

*Nineteen of 99 de novo (19%) and 1 of 30 treatment-related (3%) leukemias carried the CYP3A4-V (P = 0.026; Fisher's Exact Test, FET). Nine of 42 de novo leukemias with MLL gene translocations (21%), and 0 of 22 treatment-related leukemias with MLL gene translocations carried the CYP3A4-V (P = 0. 016, FET). This relationship remained significant when 19 treatment-related leukemias with MLL gene translocations that followed epipodophyllotoxin exposure were compared with the same 42 de novo cases (P = 0.026, FET).*

PMID: [9789061][9789]

[9789]: https://pubmed.ncbi.nlm.nih.gov/9789061/

*Of the patients with pre-existing coronary heart disease, 1 out of 15
in the intervention group (6.7%) and 1 out of 23 in the control group
(4.3%) were tested during follow up (P=0.851, one tailed Fisher's
exact test).*

PMID: [9552998][9552]

[9552]: https://pubmed.ncbi.nlm.nih.gov/9552998/


*Along with an effective reduction of pathogenic bacteria colonizing
the oropharynx, the rate of anastomotic insufficiency could be reduced
significantly, to 6% in decontaminated animals compared with 80% in
controls (P < 0.001 by Fisher's exact test).*

PMID: [7872748][7872]

[7872]: https://pubmed.ncbi.nlm.nih.gov/7872748/

Notice that most of these write-ups include a listing of the two proportions. Some of them also specify whether the test was one-sided or two-sided.

**Computing Fishers Exact Test**

Most statistical software programs will compute Fishers Exact test. There are also several web pages that will compute this test. Here's an example:

![](http://www.pmean.com/images/00/images/fisher1.gif){width="347" height="272"}

The first group had 18 patients, 3 of whom died. In the other group, there were 19 patients, one of whom died. The p-value for the two sided Fisher's Exact test is 0.34 (there is n need to show more than two significant digits on a p-value). Don't worry too much about what a "Class" is or whether you put the data in rows or in columns. You will get the same answer no matter how you orient your data.

+ [Preacher KJ, Briggs NE][pre1] Calculation for Fisher's Exact Test. Accessed on 2005-11-17. Excerpt: "*This web page is intended to provide a brief introduction to Fisher's exact test of independence for 2 x 2 tables. This test is used to detect group differences using frequency (count) data. This page also provides an interactive tool allowing researchers to conduct Fisher's exact test for their own research."

[pre1]: http://www.unc.edu/~preacher/fisher/fisher.htm

**Further reading**

Additional details about Fishers Exact test are available in Joseph Fleiss's book (he refers to this as the Fisher-Irwin test). Fleiss also provides specific recommendations about when you might prefer to use this test. The McKinney reference highlights the importance of specifying whether this was a one-tailed or two-tailed test.

+ Jospeh L. Fleiss. Statistical Methods for Rates and Proportions. Second Edition. New York NY: John Wiley and Sons, Inc. (1981) ISBN: 0-471-06428-9.

+ McKinney WP, Young MJ, Hartz A, Lee MB. The inexact use of Fisher's Exact Test in six major medical journals.Jama 1989: 261(23); 3430-3.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/fishers.html
[sim2]: http://www.pmean.com/original_site.html
