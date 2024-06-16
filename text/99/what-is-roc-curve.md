---
title: ROC curve
source: http://www.pmean.com/99/roc.html
author: Steve Simon
date: 1999-08-19
categories:
- Blog post
tags:
- Being updated
- Diagnostic testing
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean
- I was at a meeting in Belgium and the buzz
statistic was ROC Analysis. I think it stands for Receiver Operating
Characteristic curve. It seems to be used for predictive values. I
seemed to be a lone ranger in not understanding as they were showing in
several presentations "by this curve you can see this is good or bad"
and they didn't look very different. Do you have a simple explanation
about ROC curves?*

To understand an ROC curve
- you first have to accept the fact that MDs
like to ruin a nice continuous outcome measure by turning it into a
dichotomy. For example
- doctors have measured the S100 protein in
serum and found that higher values tend to be associated with
Creutzfeldt-Jakob disease. The median value is 395 pg/ml for the 108
patients with the disease and only 109 pg/ml for the 74 patients
without the disease. The doctors set a cut off of 213 pg/ml
- even
though they realized that 22.2% of the diseased patients had values
below the cut off and 18.9% of the disease-free patients had values
above the cut off.

The two percentages listed above are the false negative and false
positive rates
- respectively. If we lowered the cut off value
- we
would decrease the false negative rate probability
- but we would also
increase the false positive rate. Similarly
- if we raised the cut off,
we would decrease the false positive rate
- but we would increase the
false negative rate.

**Short explanation**

An ROC curve is a graphical representation of the trade off between
the false negative and false positive rates for every possible cut
off. Equivalently
- the ROC curve is the representation of the
tradeoffs between sensitivity (Sn) and specificity (Sp).

By tradition
- the plot shows the false positive rate on the X axis and
1 - the false negative rate on the Y axis. You could also describe
this as a plot with 1-Sp on the X axis and Sn on the Y axis.

**So how can you tell a good ROC curve from a bad one?**

All ROC curves are good
- it is the diagnostic test which can be good
or bad. A good diagnostic test is one that has small false positive
and false negative rates across a reasonable range of cut off values.
A bad diagnostic test is one where the only cut offs that make the
false positive rate low have a high false negative rate and vice
versa.

We are usually happy when the ROC curve climbs rapidly towards upper
left hand corner of the graph. This means that 1- the false negative
rate is high and the false positive rate is low. We are less happy
when the ROC curve follows a diagonal path from the lower left hand
corner to the upper right hand corner. This means that every
improvement in false positive rate is matched by a corresponding
decline in the false negative rate.

You can quantify how quickly the ROC curve rises to the upper left
hand corner by measuring the area under the curve. The larger the
area
- the better the diagnostic test. If the area is 1.0
- you have an
ideal test
- because it achieves both 100% sensitivity and 100%
specificity. If the area is 0.5
- then you have a test which has
effectively 50% sensitivity and 50% specificity. This is a test that
is no better than flipping a coin. In practice
- a diagnostic test is
going to have an area somewhere between these two extremes. The closer
the area is to 1.0
- the better the test is
- and the closer the area is
to 0.5
- the worse the test is.

Area under the curve does have one direct interpretation. If you take
a random healthy patient and get a score of X and a random diseased
patient and get a score of Y
- then the area under the curve is an
estimate of P[Y>X] (assuming that large values of the test are
indicative of disease).

**Show me an example of an ROC curve.**

Consider a diagnostic test that can only take on five values
- A
- B
- C,
D
- and E. We classify diseased (D+) and healthy (D-) patients by this
test and get the following results:

![](../../../web/images/99/roc01.gif)

  

It's a bit easier if we convert this table to cumulative percentages.

![](../../../web/images/99/roc02.gif)

We add a row (*) to represent the cumulative percentage of 0% which
will end up corresponding to a diagnostic test where all the results
are considered positive regardless of the test value. The last row
represents the other extreme
- where all the results are considered
negative regardless of the test value.

![](../../../web/images/99/roc03.gif)

The complementary percentages shown above represent the true positive
rate (or Sn) and the the false positive rate (or 1-Sp).

This table includes two extreme cases for the sake of completeness. If
you always classify a test as positive
- then you will have a 100% true
positive rate among those with the disease (Sn=1)
- but also a 100%
false positive rate among those who are healthy (Sp=0). Conversely
- if
you always classify a test as negative
- you will have a 0% true
positive rate among those with the disease (Sn=0)
- but you will have a
0% false positive rate among those who are healthy (Sp=1). Neither
extreme would probably be used in a practical setting; if you always
classified a test as positive (or negative) that would mean that you
are ignoring the test results entirely.

Here is what the graph of the ROC curve would look like.

![](../../../web/images/99/roc04.gif)

Here is information about Area Under the Curve. This area (0.91) is
quite good; it is close to the ideal value of 1.0 and much larger than
worst case value of 0.5.

![](../../../web/images/99/roc05.gif)

Here are the actual values used to draw the ROC curve (I selected the
"Coordinate points of the ROC Curve" button in SPSS).

![](../../../web/images/99/roc06.gif)

Here is the same ROC curve with annotations added

![](../../../web/images/99/roc07.gif)

Shown below is an artificial ROC curve with an area equal to 0.5. Notice
that each gain in sensitivity is balanced by the exact same loss in
specificity and vice versa. Also notice that this curve includes the
point corresponding to 50% for both sensitivity and specificity. You
could achieve this level of diagnostic ability by flipping a coin.
Clearly
- this curve represents a worst case scenario.

![](../../../web/images/99/roc08.gif)

**What's a good value for the area under the curve?**

Deciding what a good value is for area under the curve is tricky and
it depends a lot on the context of your individual problem. One way to
approach the problem is to examine what some of the likelihood ratios
would be for various areas. A good test should have a LR+ of at least
2.0 and a LR- of 0.5 or less. This would correspond to an area of
roughly 0.75. A better test would have likelihood ratios of 5 and 0.2,
respectively
- and this corresponds to an area of around 0.92. Even
better would be likelihood ratios of 10 and 0.1
- which corresponds
roughly to an area of 0.97. So here is one interpretation of the
areas:

-   0.50 to 0.75 = fair
-   0.75 to 0.92 = good
-   0.92 to 0.97 = very good
-   0.97 to 1.00 = excellent.

These are very rough guidelines; further work on refining these would
be appreciated.

**Summary**

The ROC curve plots the false positive rate on the X axis and 1 - the
false negative rate on the Y axis. It shows the trade-off between the
two rates. If the area under the ROC curve is close to 1
- you have a
very good test. If the area is close to 0.5
- you have a lousy test.

**Further reading**

1.  **Quantifying the information value of clinical assessments with
    signal detection theory.** Richard M. McFall
- Teresa A. Treat. Annu
    Rev Psychol 1999: 50215-41.
    [Abstract]](http://arjournals.annualreviews.org/doi/abs/10.1146/annurev.psych.50.1.215)
2.  **[The magnificent ROC (Receiver Operating Characteristic
    curve)](http://www.anaesthetist.com/mnm/stats/roc/)**. Jo van
    Schalkwyk. Accessed on 2003-09-08.
    www.anaesthetist.com/mnm/stats/roc/
3.  **Receiver-operating characteristic (ROC) plots: a fundamental
    evaluation tool in clinical medicine.** MH Zweig
- G Campbell. Clin
    Chem 1993: 39(4); 561-77.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8472349&dopt=Abstract)
4.  **Accuracy of clinical diagnosis of cirrhosis among alcohol-abusing
    men.** K. J. Hamberg
- B. Carstensen
- T. I. Sorensen
- K. Eghoje. J
    Clin Epidemiol 1996: 49(11); 1295-301.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8892498&dopt=Abstract)
    [Abstract]](http://dx.doi.org/10.1016/0895-4356(95)00517-X)
5.  **Comparing diagnostic tests: a simple graphic using likelihood
    ratios.** B. J. Biggerstaff. Statistics in Medicine 2000: 19(5);
    649-63.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10700737&dopt=Abstract)
    [Abstract]](http://www3.interscience.wiley.com/cgi-bin/abstract/70002970/ABSTRACT)
6.  **Slopes of a receiver operating characteristic curve and likelihood
    ratios for a diagnostic test.** BCK Choi. AJE 1998: 148(11);
    1127-32.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9850136&dopt=Abstract)
7.  **Comparing the areas under two or more correlated receiver
    operating characteristic curves: a nonparametric approach.** E. R.
    De Long
- D. M. De Long
- D. L. Clarke-Pearson. Biometrics 1988:
    44(3); 837-45.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3203132&dopt=Abstract)
8.  **Analysis of correlated ROC areas in diagnostic testing.** H. H.
    Song. Biometrics 1997: 53(1); 370-82.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9147602&dopt=Abstract)
9.  **[Receiver Operating Characteristic (ROC) Literature
    Research](http://splweb.bwh.harvard.edu:8000/pages/ppl/zou/roc.html)**.
    Kelly H. Zou
- Harvard Medical School. Accessed on 2003-09-08.
    splweb.bwh.harvard.edu:8000/pages/ppl/zou/roc.html
10. **Published examples of ROC curves**
11. **The influence of prostate volume on the ratio of free to total
    prostate specific antigen in serum of patients with prostate
    carcinoma and benign prostate hyperplasia.** C. Stephan
- M. Lein
- K.
    Jung
- D. Schnorr
- S. A. Loening. Cancer 1997: 79(1); 104-9.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8988733&dopt=Abstract)
    [Abstract]](http://www3.interscience.wiley.com/cgi-bin/abstract/73502280/ABSTRACT)
12. **Diagnostic Accuracy of Four Assays of Prostatic Acid Phosphatase:
    Comparison Using Receiver Operating Characteristic Curve Analysis.**
    JL Carson
- JM Eisenberg
- LM Shaw
- et al:. Journal of the American
    Medical Association 1985: 253665-669.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3881609&dopt=Abstract)
13. **The ratio of free to total serum prostate specific antigen and its
    use in differential diagnosis of prostate carcinoma in Japan.** S.
    Egawa
- S. Soh
- M. Ohori
- T. Uchida
- K. Gohji
- A. Fujii
- S. Kuwao
- K.
    Koshiba. Cancer 1997: 79(1); 90-8.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8988731&dopt=Abstract)
    [Abstract]](http://www3.interscience.wiley.com/cgi-bin/abstract/73502278/ABSTRACT)
14. **Using the Hospital Anxiety and Depression Scale to screen for
    psychiatric disorders in people presenting with deliberate
    self-harm.** D. Hamer
- D. Sanjeev
- E. Butterworth
- P. Barczak. Br J
    Psychiatry 1991: 158782-4.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=1873631&dopt=Abstract)
15. **Screening for anxiety
- depressive and somatoform disorders in
    rehabilitation--validity of HADS and GHQ-12 in patients with
    musculoskeletal disease.** M. Harter
- K. Reuter
- K. Gross-Hardt
- J.
    Bengel. Disabil Rehabil 2001: 23(16); 737-44.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11732563&dopt=Abstract)
16. **Diagnostic markers of infection: comparison of procalcitonin with
    C reactive protein and leucocyte count.** M. Hatherill
- S. M.
    Tibby
- K. Sykes
- C. Turner
- I. A. Murdoch. Arch Dis Child 1999:
    81(5); 417-21.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10519716&dopt=Abstract)
    [Abstract]](http://adc.bmjjournals.com/cgi/content/abstract/archdischild;81/5/417)
    [Full
    text]](http://adc.bmjjournals.com/cgi/content/full/archdischild;81/5/417)
    [PDF]](http://adc.bmjjournals.com/cgi/reprint/archdischild;81/5/417.pdf)
17. **Using fasting plasma glucose concentrations to screen for
    gestational diabetes mellitus: prospective population based study.**
    D Perucchini
- U Fischer
- GA Spinas
- R Huch
- A Huch
- R Lehmann.
    British Medical Journal 1999: 319(7213); 812-815.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10496823&dopt=Abstract)
    [Abstract]](http://bmj.com/cgi/content/abstract/319/7213/812)
    [Full text]](http://bmj.com/cgi/content/full/319/7213/812)
    [PDF]](http://bmj.com/cgi/reprint/319/7213/812.pdf)
18. **Sensitivity and specificity of observer and self-report
    questionnaires in major and minor depression following myocardial
    infarction.** J. J. Strik
- A. Honig
- R. Lousberg
- J. Denollet.
    Psychosomatics 2001: 42(5); 423-8.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11739910&dopt=Abstract)
    [Abstract]](http://psy.psychiatryonline.org/cgi/content/abstract/42/5/423)
19. **Diagnosis of Creutzfeldt-Jakob disease by measurement of S100
    protein in serum: prospective case-control study.** M. Otto
- J.
    Wiltfang
- E. Schutz
- I. Zerr
- A. Otto
- A. Pfahlberg
- O. Gefeller
- M.
    Uhr
- A. Giese
- T. Weber
- H. A. Kretzschmar
- S. Poser. Bmj 1998:
    316(7131); 577-82.
    [Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9518907&dopt=Abstract)
    [Abstract]](http://bmj.bmjjournals.com/cgi/content/abstract/316/7131/577)
    [Full
    text]](http://bmj.bmjjournals.com/cgi/content/full/316/7131/577)
    [PDF]](http://bmj.bmjjournals.com/cgi/reprint/316/7131/577.pdf)

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/roc.html
[sim2]: http://www.pmean.com/original_site.html
