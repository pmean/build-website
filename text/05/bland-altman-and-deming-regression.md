---
title: Measuring agreement
author: Steve Simon
date: 2005-04-19
categories:
- Blog post
tags:
- Being updated
- Measuring agreement
output: html_document
page_update: partial
---
Someone reviewing a paper asked me about all the "weird statistics"
being used in the paper, such as the Bland-Altman plot and Deming
regression.

The Bland-Altman plot is a fairly standard way to compare the agreement
between two measures of the clinical outcome.

- **Statistical methods for assessing agreement between two methods of
clinical measurement.** Bland JM, Altman DG. Lancet 1986: 1(8476);
307-10.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=2868172&dopt=Abstract)
[\[Full text\]](http://www-users.york.ac.uk/~mb55/meas/ba.htm)

Here's an example of a Bland-Altman plot

![](../weblog/05images/weblog1.gif){width="300" height="184"}

that compares functional residual capacity by two approaches:
rebreathing of sulphur hexafluoride and by computed tomography. The two
measures appear to be reasonably close to one another, and the degree of
agreement is about the same across the full range of the data. This
graph appears in

- **Uneven distribution of ventilation in acute respiratory distress
syndrome.** Rylander C, Tylen U, Rossi-Norrlund R, Herrmann P,
Quintel M, Bake B. Crit Care 2005: 9(2); R165-71.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15774050&dopt=Abstract)
[\[Abstract\]](http://ccforum.com/content/9/2/r165/abstract) [\[Full
text\]](http://ccforum.com/content/9/2/R165)
[\[PDF\]](http://ccforum.com/content/pdf/cc3058.pdf)

which is an open source journal.

Deming regression is just the same thing as linear regression except
that an adjustment is made for measurement error in the independent
variable.

- **General deming regression for estimating systematic bias and its
confidence interval in method-comparison studies.** Martin RF. Clin
Chem 2000: 46(1); 100-4.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10620577&dopt=Abstract)
[\[Abstract\]](http://www.clinchem.org/cgi/content/abstract/46/1/100)
[\[Full text\]](http://www.clinchem.org/cgi/content/full/46/1/100)
[\[PDF\]](http://www.clinchem.org/cgi/reprint/46/1/100.pdf)

As an example of Deming regression, two immunoassays for human glandular
kallikrein were compared using Deming regression. The slope was 0.79
(95% confidence interval 0.67 to 0.92) and the intercept was 0.014 (95%
CI 0.004 to 0.025) with an R-squared value of 0.67. This line (the solid
line in the graph below) differs from the ideal line with slope=1 and
intercept=0 (the dotted line) and has a weak correlation, since one
assay can only account for 2/3 of the variation in the other assay.

![](../weblog/05images/weblog2.gif)

\[Permission received on April 25, 2005 to reproduce this image.\]

- **Standardization of two immunoassays for human glandular
kallikrein 2.** Haese A, Vaisanen V, Finlay JA, Pettersson K,
Rittenhouse HG, Partin AW, Bruzek DJ, Sokoll LJ, Lilja H, Chan DW.
Clin Chem 2003: 49(4); 601-10.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12651813&dopt=Abstract)
[\[Abstract\]](http://www.clinchem.org/cgi/content/abstract/49/4/601)
[\[Full text\]](http://www.clinchem.org/cgi/content/full/49/4/601)
[\[PDF\]](http://www.clinchem.org/cgi/reprint/49/4/601.pdf)

The authors may have also used something called Lin's Concordance
Coefficient.

- **[Validating Mathematical Models of Biological Systems: Application
of the Concordance Correlation Coefficient
\[PDF\]](http://library.lanl.gov/cgi-bin/getdoc?event=SAMO2004&document=samo04-41.pdf%20)**.
St-Pierre NR. Accessed on 2005-04-19.
library.lanl.gov/cgi-bin/getdoc?event=SAMO2004&document=samo04-41.pdf

An example of Lin's concordance coefficient appears in a study of joint
space narrowing and erosion scores in plain versus digitized x-rays. The
erosion concordance score is 0.89 and the graph below shows good
agreement between the regression line (solid) and the line of perfect
agreement (dashed).

![](../weblog/06images/weblog3.gif){width="300" height="244"}

In contrast, the joint space narrowing has a concordance score of only
0.36 and notice how the regression line is not even close to the line of
perfect agreement.

![](../weblog/05images/weblog4.gif){width="300" height="244"}

These data and figures come from

- **Internet hand x-rays: A comparison of joint space narrowing and
erosion scores (Sharp/Genant) of plain versus digitized x-rays in
rheumatoid arthritis patients.** Arbillaga HO, Montgomery GP,
Cabarrus LP, Watson MM, Martin L, Edworthy SM. BMC Musculoskelet
Disord 2002: 3(1); 13.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11980582&dopt=Abstract)
[\[Abstract\]](http://www.biomedcentral.com/1471-2474/3/13/abstract)
[\[Full text\]](http://www.biomedcentral.com/1471-2474/3/13)
[\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2474-3-13.pdf)

which is an open source journal.

These tools are little publicized because the measurement of agreement
does not fit into the classical statistical models. There is no research
hypothesis, for example, but rather the goal of the research is to
assess how strongly two measures agree with one another.

**Further reading**

- **[Statistical validation criteria for drinking-water
microbiological methods
\[PDF\]](http://www.moh.govt.nz/moh.nsf/wpg_Index/Publications-Statistical+validation+criteria+for+drinking-water+microbiological+methods%20)**.
McBride G, published by the Ministry of Health, National Institute
of Water & Atmospheric Research Ltd, February 2003. Accessed on
2005-04-19.
www.moh.govt.nz/moh.nsf/wpg\_Index/Publications-Statistical+validation+criteria+for+drinking-water+microbiological+methods
- **[Points of Care in Using Statistics in Method-Comparison
Studies](http://www.westgard.com/essay19.htm%20)**. Westgard JO,
This is an annotated version of an editorial that appeared in the
1998 November issue of Clinical Chemistry, volume 44, pages
2240-2242. This version includes links to supporting materials
available on this website. Accessed on 2005-04-19.
www.westgard.com/essay19.htm
- **[Method Validation: The
Frequently-Asked-Questions](http://www.westgard.com/quest11.htm%20)**.
Westgard JO. Accessed on 2005-04-19. www.westgard.com/quest11.htm

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/MeasuringAgreement.html
[sim2]: http://www.pmean.com/original_site.html
