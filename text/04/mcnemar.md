---
title: McNemar's Test
author: Steve Simon
date: 2004-06-17
categories:
- Blog post
tags:
- Unusual data
output: html_document
page_update: partial
---
I received an email asking how to test two correlated proportions to see
if one proportion is significantly larger than another. This is a
classic application of McNemar's test.

McNemar's test arises when a pair of raters both evaluate the same set
of objects and provide a binary (yes/no) rating. This test focuses on
the discordant pairs--pairs where the raters disagree. Pairs are
discordant when the first rater says "yes" and the second says "no"
or when the first rater says "no" and the second rater says "yes."
When the discordant pairs are skewed in one direction (for example, more
yes/no than no/yes), this is evidence that the overall proportion of
yeses is higher for one rater than the other. When the discordant pairs
are split evenly, then this is evidence that the overall proportion is
about the same for both raters.

In a study of the cytomegalovirus antigenemia assay (see citation
below), formaldehyde fixation was compared to acetone fixation. In 405
samples, cytomegalovirus was detecting 36 times (8.8%) using
formaldehyde and 22 times (5.4%) using acetone. The table below
illustrates how both assays performed.

![mcnemar01.gif not found.](http://www.pmean.com/new-images/04/mcnemar01.png)

  Is the rate of detection significantly greater for formaldehyde? To
answer this, we need to know how often the tests disagreed and if the
disagreements were significantly skewed towards formaldehyde. Indeed
they were. For 18 cases formaldehyde detected cytomegalovirus when
acetone did not and only for 4 cases did acetone detect cytomegalovirus
when formaldehyde did not.

If both fixations were equally efficient then we would expect that the
discrepancies would be split 50-50. But the probability that a
discrepancy favors formaldehyde is actually 82% (18 / 22). This
proportion differs significantly from 50%, since the 95% confidence
interval is 67% to 98%.

It's interesting that McNemar's test ignores the 18 times that both
tests detect cytomegalovirus and the 365 times that neither test
detected cytomegalovirus. This has always bothered me somewhat, but you
can safely ignore the concordant pairs (the pairs where both raters
agree) because they represent non-informative data. They don't provide
any information about the degree to which one proportion is greater than
the other. Only those discordant pairs provide information about the
possible discrepancy in proportions.

**Comparison of several fixation methods for cytomegalovirus antigenemia
assay.** Perez JL, De Ona M, Niubo J, Villar H, Melon S, Garcia A,
Martin R. J Clin Microbiol. 1995 Jun;33(6):1646-9.
[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=7650205)
[Abstract]](http://jcm.asm.org/cgi/content/abstract/33/6/1646)
[PDF]](http://jcm.asm.org/cgi/reprint/33/6/1646.pdf)

Here are some websites that discuss McNemar's test:

-   [ourworld.compuserve.com/homepages/jsuebersax/mcnemar.htm](http://ourworld.compuserve.com/homepages/jsuebersax/mcnemar.htm)
-   [www.nist.gov/speech/tests/sigtests/mcnemar.htm](http://www.nist.gov/speech/tests/sigtests/mcnemar.htm)

You can find an [earlier version](http://www.pmean.com/04/mcnemar.html) of this page on my [original website](http://www.pmean.com/original_site.html).
