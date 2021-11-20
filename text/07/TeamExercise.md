---
title: Team exercise to illustrate ANOM calculations
author: Steve Simon
source: http://www.pmean.com/07/TeamExercise.html
date: 2007-02-28
categories:
- Blog post
tags:
- Analysis of means
output: html_document
---
I am in charge of a workshop for the [American Society for
Andrology](http://www.andrologysociety.com/) for their [32nd Annual
Conference](http://www.andrologysociety.com/meetings/709/default.aspx)
in Tampa Florida. This society holds a laboratory workshop every year,
and this year, it is being split into two workshops:

-   Sperm Morphology -A Hands-On Workshop, from 8am to 11:30am, and
-   Quality Control -A Hands-On Workshop, from 1:30pm to 4:30pm.

I will be teaching the afternoon workshop along with Dr. Steven
Schrader. Some brief details about both classes are on the web:

-   a [preliminary
    schedule](http://www.andrologysociety.com/meetings/709/labworkshop.aspx),
-   a [flier in PDF
    format](http://www.andrologysociety.com/meetings/709/labworkshop.pdf),
    and
-   a [brochure in PDF
    format](http://www.andrologysociety.com/meetings/709/alwbrochure.pdf).

I am developing some material for this class, including a [team
exercise](exercises18.htm). Some additional material will come from

-   [Stats \#17: Using statistics to monitor and improve
    quality](../training/hand17.asp)

though I will shorten this section and add material about Analysis of
Means (ANOM). Some preliminary weblog entries about ANOM are

-   [Stats: When is a control chart not a control chart? (created
    2007-02-06)](AnomExample.html)
-   [Stats: Some resources for Analysis of Means (created 2006-06-30,
    updated
    2007-02-01)](http://www.pmean.com/weblog2006/AnalysisOfMeans.html)

I want to use some published examples of control charts, and some
possible journal articles that I might want to review include

-   **Developing national outcome standards for the management of
    gonorrhoea and genital chlamydia in genitourinary medicine
    clinics.** N. Low, J. Welch, K. Radcliffe. Sex Transm Infect 2004:
    80(3); 223-9.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15170010&dopt=Abstract)
    [\[Abstract\]](http://sti.bmj.com/cgi/content/abstract/80/3/223)
    [\[Full text\]](http://sti.bmj.com/cgi/content/full/80/3/223)
    [\[PDF\]](http://sti.bmj.com/cgi/reprint/80/3/223.pdf)
-   **Increasing adherence to a community-based guideline for acute
    sinusitis through education, physician profiling, and financial
    incentives.** R. A. Greene, H. Beckman, J. Chamberlain, G.
    Partridge, M. Miller, D. Burden, J. Kerr. Am J Manag Care 2004:
    10(10); 670-8.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15521158&dopt=Abstract)
    [\[PDF\]](http://www.ajmc.com/files/articlefiles/AJMCoct04_Greene_670to678.pdf)
-   **Control, compare and communicate: designing control charts to
    summarise efficiently data from multiple quality indicators.** B.
    Guthrie, T. Love, T. Fahey, A. Morris, F. Sullivan. Qual Saf Health
    Care 2005: 14(6); 450-4.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=16326793&dopt=Abstract)
    [\[Abstract\]](http://qshc.bmj.com/cgi/content/abstract/14/6/450)
    [\[Full text\]](http://qshc.bmj.com/cgi/content/full/14/6/450)
    [\[PDF\]](http://qshc.bmj.com/cgi/reprint/14/6/450.pdf)
-   **An adaptation of quality control chart methods to bacterial
    vaccine potency testing.** H. C. Batson, M. Brown, M. Oberstein. J
    Bacteriol 1951: 61(4); 407-19.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=14832178&dopt=Abstract)
    [\[PDF\]](http://www.pubmedcentral.nih.gov/picrender.fcgi?artid=386020&blobtype=pdf)
-   **Penicillin Assay and Its Control Chart Analysis.** L. F.
    Knudsen, W. A. Randall. J Bacteriol 1945: 50(2); 187-200.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=16560987&dopt=Abstract)
    [\[PDF\]](http://www.pubmedcentral.nih.gov/picrender.fcgi?artid=374125&blobtype=pdf)
-   **Understanding variation for clinical governance: an illustration
    using the diagnosis and treatment of sore throat.** T. Marshall, M.
    A. Mohammed, H. T. Lim. Br J Gen Pract 2002: 52(477); 277-83.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11942443&dopt=Abstract)
    [\[PDF\]](http://www.pubmedcentral.nih.gov/picrender.fcgi?artid=1314267&blobtype=pdf)
-   **Analysis of inadequate cervical smears using Shewhart control
    charts.** W. N. Harrison, M. A. Mohammed, M. K. Wall, T. P.
    Marshall. BMC Public Health 2004: 4; 25.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15225351&dopt=Abstract)
    [\[Abstract\]](http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=459229&rendertype=abstract)
    [\[Full
    text\]](http://www.pubmedcentral.nih.gov/articlerender.fcgi?tool=pubmed&pubmedid=15225351)
    [\[PDF\]](http://www.pubmedcentral.nih.gov/picrender.fcgi?artid=459229&blobtype=pdf)

I want to review the Xbar and S charts, and some simple formulas for
these charts can be found at

-   [www.qualityamerica.com/knowledgecente/knowctrX\_Bar\_Chart\_Calculations.htm](http://www.qualityamerica.com/knowledgecente/knowctrX_Bar_Chart_Calculations.htm)
-   [www.qualityamerica.com/knowledgecente/knowctrSigma\_Chart\_Calculations.htm](http://www.qualityamerica.com/knowledgecente/knowctrSigma_Chart_Calculations.htm)
-   [www.itl.nist.gov/div898/handbook/pmc/section3/pmc32.htm](http://www.itl.nist.gov/div898/handbook/pmc/section3/pmc32.htm)
-   [www.itl.nist.gov/div898/handbook/pmc/section3/pmc321.htm](http://www.itl.nist.gov/div898/handbook/pmc/section3/pmc321.htm)
-   [www.sqconline.com/control-chart-variables-enter.html](http://www.sqconline.com/control-chart-variables-enter.html)
-   [www.jcrinc.com/1436/](http://www.jcrinc.com/1436/)
-   [syque.com/quality\_tools/tools/Tools71.htm](http://syque.com/quality_tools/tools/Tools71.htm)

I'll be putting all of this material together in the next couple of
days.

A table of constants for the XBAR-S charts

` n A3    B3    B4          2 2.659 0     3.267          3 1.954 0     2.568          4 1.628 0     2.266          5 1.427 0     2.089          6 1.287 0.030 1.970          7 1.182 0.118 1.882          8 1.099 0.185 1.815          9 1.032 0.239 1.761         10 0.975 0.284 1.716         11 0.927 0.321 1.679         12 0.886 0.354 1.646         13 0.850 0.382 1.618         14 0.817 0.406 1.594         15 0.789 0.428 1.572         16 0.763 0.448 1.552         17 0.739 0.466 1.534         18 0.718 0.482 1.518         19 0.698 0.497 1.503         20 0.680 0.510 1.490         21 0.663 0.523 1.477         22 0.647 0.534 1.466         23 0.633 0.545 1.455         24 0.619 0.555 1.455         25 0.606 0.565 1.435`

can be found at

-   [www.robertluttman.com/vms/Week5/page6.htm](http://www.robertluttman.com/vms/Week5/page6.htm)
