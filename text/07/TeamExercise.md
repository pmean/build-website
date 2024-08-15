---
title: Team exercise to illustrate ANOM calculations
author: Steve Simon
source: http://www.pmean.com/07/TeamExercise.html
date: 2007-02-28
categories:
- Blog post
tags:
- Broken link
- Analysis of means
output: html_document
page_update: complete
---

I am in charge of a workshop for the [American Society for Andrology][asa1] for their [32nd Annual Conference][asa2] in Tampa Florida. This society holds a laboratory workshop every year, and this year, it is being split into two workshops:

+ Sperm Morphology -A Hands-On Workshop, from 8am to 11:30am, and
+ Quality Control -A Hands-On Workshop, from 1:30pm to 4:30pm.

I will be teaching the afternoon workshop along with Dr. Steven Schrader. I am developing some material for this class, including a [team exercise][sim3]. Some additional material will come from

+ [Stats #17: Using statistics to monitor and improve quality][Link is broken]

though I will shorten this section and add material about Analysis of Means (ANOM). Some preliminary weblog entries about ANOM are

+ [Stats: When is a control chart not a control chart? (created 2007-02-06)][sim4]
+ [Stats: Some resources for Analysis of Means (created 2006-06-30, updated 2007-02-01)][sim5]

I want to use some published examples of control charts, and some possible journal articles that I might want to review include

+ N. Low, J. Welch, K. Radcliffe. Developing national outcome standards for the management of gonorrhoea and genital chlamydia in genitourinary medicine clinics. Sex Transm Infect 2004: 80(3); 223-9. Available in [html format][low1] or [pdf format][low2].
+ R. A. Greene, H. Beckman, J. Chamberlain, G. Partridge, M. Miller, D. Burden, J. Kerr. Increasing adherence to a community-based guideline for acute sinusitis through education, physician profiling, and financial incentives. Am J Manag Care 2004: 10(10); 670-8. Available in [pdf format][gre1]. 
+ B. Guthrie, T. Love, T. Fahey, A. Morris, F. Sullivan. Control, compare and communicate: designing control charts to summarise efficiently data from multiple quality indicators. Qual Saf Health Care 2005: 14(6); 450-4. Available in [html format][gut1] or [pdf format][gut2].
+ H. C. Batson, M. Brown, M. Oberstein. An adaptation of quality control chart methods to bacterial vaccine potency testing. J Bacteriol 1951: 61(4); 407-19. Available in [pdf format][bat1].
+ L. F. Knudsen, W. A. Randall. Penicillin Assay and Its Control Chart Analysis. J Bacteriol 1945: 50(2); 187-200. Available in [pdf format][knu1].
+ T. Marshall, M. A. Mohammed, H. T. Lim. Understanding variation for clinical governance: an illustration using the diagnosis and treatment of sore throat. Br J Gen Pract 2002: 52(477); 277-83. Available in [pdf format][mar1]
+ W. N. Harrison, M. A. Mohammed, M. K. Wall, T. P. Marshall. Analysis of inadequate cervical smears using Shewhart control charts. BMC Public Health 2004: 4; 25. Available in [html format][har1] or [pdf format][har2].

I want to review the Xbar and S charts, and some simple formulas for these charts can be found at

+ What are Variables Control Charts. Available in [html format][nis1]
+ Shewhart X-bar and R and S Control Charts. Available in [html format][nis2]
+ Control Chart Calculator for Variables (Continuous data). Available in [html format][sqc1]
+ Calculation Details for X-MR Control Charts. Available in [html format][syq1]

I'll be putting all of this material together in the next couple of days.

A table of constants for the XBAR-S charts

```
 n A3    B3    B4
 2 2.659 0     3.267
 3 1.954 0     2.568
 4 1.628 0     2.266
 5 1.427 0     2.089 
 6 1.287 0.030 1.970
 7 1.182 0.118 1.882
 8 1.099 0.185 1.815
 9 1.032 0.239 1.761
10 0.975 0.284 1.716
11 0.927 0.321 1.679
12 0.886 0.354 1.646
13 0.850 0.382 1.618
14 0.817 0.406 1.594
15 0.789 0.428 1.572
16 0.763 0.448 1.552
17 0.739 0.466 1.534
18 0.718 0.482 1.518
19 0.698 0.497 1.503
20 0.680 0.510 1.490
21 0.663 0.523 1.477
22 0.647 0.534 1.466
23 0.633 0.545 1.455
24 0.619 0.555 1.455
25 0.606 0.565 1.435`
```

can be found in multiple locations on the web.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/TeamExercise.html
[sim2]: http://www.pmean.com
[sim3]: http://www.pmean.com/07/exercises18.htm
[sim4]: http://www.pmean.com/07/AnomExample.html
[sim5]: http://www.pmean.com/06/AnalysisOfMeans.html

[asa1]: https://andrologysociety.org/
[asa2]: https://secureservercdn.net/198.71.233.187/h1k.f5b.myftpupload.com/wp-content/uploads/2019/08/2007_asa_program.pdf
[bat1]: http://www.pubmedcentral.nih.gov/picrender.fcgi?artid=386020&blobtype=pdf
[gre1]: http://www.ajmc.com/files/articlefiles/AJMCoct04_Greene_670to678.pdf
[gut1]: http://qshc.bmj.com/cgi/content/full/14/6/450
[gut2]: http://qshc.bmj.com/cgi/reprint/14/6/450.pdf
[har1]: http://www.pubmedcentral.nih.gov/articlerender.fcgi?tool=pubmed&pubmedid=15225351
[har2]: http://www.pubmedcentral.nih.gov/picrender.fcgi?artid=459229&blobtype=pdf
[knu1]: http://www.pubmedcentral.nih.gov/picrender.fcgi?artid=374125&blobtype=pdf
[low1]: http://sti.bmj.com/cgi/content/full/80/3/223
[low2]: http://sti.bmj.com/cgi/reprint/80/3/223.pdf
[mar1]: http://www.pubmedcentral.nih.gov/picrender.fcgi?artid=1314267&blobtype=pdf
[nis1]: http://www.itl.nist.gov/div898/handbook/pmc/section3/pmc32.htm
[nis2]: http://www.itl.nist.gov/div898/handbook/pmc/section3/pmc321.htm
[sqc1]: https://www.sqconline.com/control-chart-calculator-variables-continuous-data
[syq1]:http://syque.com/quality_tools/tools/Tools71.htm
