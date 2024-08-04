---
title: SPSS citation
author: Steve Simon
date: 2002-03-06
categories:
- Blog post
tags:
- Ask Professor Mean
- SPSS software
output: html_document
page_update: partial
---

*Dear Professor Mean, I'm writing a research paper. When I talk about
the statistical methods, how do I properly cite the use of SPSS
software? And just what does SPSS stand for anyway?*

<!--more-->

Dear Reader,

First things first. Have you included Professor Mean as one of your co-authors?

SPSS used to stand for Statistical Package for the Social Sciences. The company that produces SPSS software, however, has been discouraging the use of this full name. They would prefer for you to just call it SPSS. It's sort of like how you used to see all these fast food places called "Kentucky Fried Chicken" but now they are identified only as "KFC" because they don't want to emphasize that their food is fried.

As far as citing SPSS, there are two approaches that I have seen. First, when you first cite SPSS in the text, you put the name of the company and the location of the company in parentheses behind it (SPSS Inc., Chicago IL). This is similar to how you would document a vendor of laboratory supplies.

Second, you can make a bibliographic reference to the software manual. There are several manuals, but a good choice would be

SPSS Inc. (1998). **SPSS Base 8.0 for Windows User's Guide**. SPSS Inc., Chicago IL.

if you are version 8.0 or 9.0. If you are using version 10.0 or 11.0, cite

SPSS Inc. (1999). **SPSS Base 10.0 for Windows User's Guide.** SPSS Inc., Chicago IL.

Notice that the "author" of the SPSS manual is actually a company. Even more interesting is the author is also the publisher. If we could do that, we wouldn't have to worry about "publish or perish."

Also note that the version 8.0 manual is also used for version 9.0 and the version 10.0 manual is also used for version 11.0 (some of the advanced manuals change, though).

If you are using an especially exotic SPSS procedure, you may prefer to reference one of the advanced manuals. Most of the stuff that you and I do, however, would not be considered exotic.

So here are two examples.

*All data analyses were performed using SPSS version 9.0 (SPSS, Inc., Chicago IL).*

or

*All data analyses were performed using SPSS version 9.0 (SPSS 1998).*

and insert the appropriate reference in your bibliography. Please be sure to consult the style guide of the journal you are writing for to see how they format citations and bibliographic entries.

SPSS discusses a different way of citing their products. See their FAQ page and scroll down.

**Frequently Asked Questions about SPSS Inc**. (Accessed 1/20/2004). <http://www.spss.com/corpinfo/faqs.htm>

Also please note the comment in the APA Manual of Style:

*"Reference entries are not necessary for standard off-the-shelf software and programming languages, such as Microsoft Word, Excel, Java, Adobe, Photoshop, and even SAS and SPSS. In text, give the proper name of the software, along with the version number. Do provide reference entries for specialized software or computer software with limited distribution."* (page 280).

In a series of messages in the MedStats email discussion group, one writer pointed out that a bibliographic citation in a consistent format is important because various sources track the frequency of citations in research.

**Other software programs**

**StatXact**. This product is made by Cytel Software Corporation in Cambridge, MA. The manual for version 3.0 could be cited as

Cytel Software Corporation (1995) **StatXact 3.0 For Windows User Manual**. Cytel Software Corporation, Cambridge MA.

**Amos**. Amos performs Structural Equations Modelling, Confirmatory Factor Analysis and other related methods. It is made by SPSS Inc., Chicago, IL and SmallWaters Corporation, Chicago, IL. You can cite either

James L. Arbuckle and Werner Wothke (1999) **Amos 4.0 User's Guide**. Smallwaters Corporation, Chicago IL.

James L. Arbuckle (2003) **Amos 5.0 Update to the Amos User's Guide**. Smallwaters Corporation, Chicago IL.

**R**. R is an open source program developed by the R Foundation for Statistical Computing in Vienna, Austria. According the [FAQ for R][rfa1], a proper citation for R (in BibTeX format) is

```
@Manual{,
  title        = {R: A Language and Environment for Statistical
                  Computing},
  author       = {{R Core Team}},
  organization = {R Foundation for Statistical Computing},
  address      = {Vienna, Austria},
  year         = YEAR,
  url          = {https://www.R-project.org}
}
```

where YEAR is the year that your version of R was released.

A more readable version of this would be

R Core Team. R: A Language and Environment for Statistical Computing. R Foundation for Statistical Computing, Vienna, Austria. https://www.R-project.org

[rfa1]: http://cran.r-project.org/doc/FAQ/R-FAQ.html

**Bioconductor**. Bioconductor is a set of add-on packages that work with R. The authors of Bioconductor suggest that you cite the following publication.

```
*@Article{BIOC,\
author = {Robert C Gentleman and Vincent J. Carey and Douglas M.
Bates and Ben Bolstad and Marcel Dettling and Sandrine Dudoit and
Byron Ellis and Laurent Gautier and Yongchao Ge and Jeff Gentry and
Kurt Hornik and Torsten Hothorn and Wolfgang Huber and Stefano Iacus
and Rafael Irizarry and Friedrich Leisch Cheng Li and Martin Maechler
and Anthony J. Rossini and Gunther Sawitzki and Colin Smith and Gordon
Smyth and Luke Tierney and Jean Y. H. Yang and Jianhua Zhang},\
title = {Bioconductor: Open software development for computational
biology and bioinformatics},\
journal = {Genome Biology},\
volume = {5},\
year = {2004},\
pages = {R80},\
url = {http://genomebiology.com/2004/5/10/R80}\
}*
```

which, in a less cryptic format, looks like this.

Gentleman RC, Carey VJ, Bates DM, Bolstad B, Dettling M, Dudoit S, Ellis B, Gautier L, Ge Y, Gentry J, Hornik K, Hothorn T, Huber W, Iacus S, Irizarry R, Leisch F, Li C, Maechler M, Rossini AJ, Sawitzki G, Smith C, Smyth G, Tierney L, Yang JY, Zhang J. Bioconductor: open software development for computational biology and bioinformatics.  Genome Biol 2004: 5(10); R80. 

Note: This article is available in [html format][gen1] and [pdf format][gen2].

[gen1]: http://genomebiology.com/2004/5/10/R80
[gen2]: http://genomebiology.com/content/pdf/gb-2004-5-10-r80.pdf

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/citation.html
[sim2]: http://www.pmean.com/original_site.html
