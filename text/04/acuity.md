---
title: Acuity microarray analysis software.
author: Steve Simon
date: 2004-05-06
categories:
- Blog post
tags:
- Data mining
- Statistical computing
output: html_document
---
> I got a request to evaluate some software by [Axon
> Instruments](http://www.axon.com/index.html) for the analysis of
> microarray data. The software, [Acuity version
> 3.1](http://www.axon.com/gn_Acuity.html), costs \$4,000 per person and
> has to compete with other commercial software such as
>
> -   [S+
>     ArrayAnalyzer](http://www.insightful.com/products/s-plus_arrayanalyzer/default.asp)
>     from [Insightful
>     Corporation](http://www.insightful.com/products/s-plus_arrayanalyzer/default.asp),
> -   [Microarray Solution](http://www.sas.com/industry/pharma/mas/)
>     from [SAS Corporation](http://www.sas.com/index.html),
> -   [GeneSpring](http://www.silicongenetics.com/cgi/SiG.cgi/Products/GeneSpring/index.smf)
>     from [Silicon
>     Genetics](http://www.silicongenetics.com/cgi/SiG.cgi/index.smf),
>     and
> -   [DecisionSite
>     Statistics](http://www.spotfire.com/products/comp.asp) from
>     [Spotfire Corporation](http://www.spotfire.com/).
>
> [StatSci.org](http://www.statsci.org/index.html) has a nice [list of
> companies and institutions that produce statistical analysis software
> for microarrays](http://www.statsci.org/micrarra/analysis.html) as
> part of their [overview of microarray data
> analysis](http://www.statsci.org/micrarra/).
>
> Perhaps the most interesting product of the bunch is
> [Bioconductor](http://www.bioconductor.org/), an open source library
> for the [R programming language](http://cran.r-project.org/). Both
> Bioconductor and R are distributed under the [GNU General Public
> License](http://www.gnu.org/copyleft/gpl.html), which allows you to
> modify the source code as long as you agree that if you distribute
> your modifications, you distribute them with the source code and allow
> others to make further modifications. This requirement is called
> \"copyleft\" to distinguish it from \"copyright.\"
>
> I wrote a [brief introduction to the R
> language](file:///J:/Web/model/images/regression%20models%20in%20R.pdf)
> in PDF format. There are lots of [other tutorials for R and
> Bioconductor](http://www.bioconductor.org/labmat.html) that are better
> written than mine. In particular, the \"[Overview of R and
> Bioconductor](http://www.bioconductor.org/labMat/pdf/RandBioC.pdf)\"
> handout in PDF format is a nice place to start.
>
> R (and Bioconductor) is an [object oriented
> language](http://en.wikipedia.org/wiki/Object_oriented), which makes
> it both difficult to learn and very powerful. Microarray data is
> stored in a class called exprSet. This class includes information
> about expression levels, standard errors of expression levels,
> phenotypic data, annotation, description, and notes.
>
> Phenotypic data represents information about the individual or cell
> line that produced this particular microarray, such as the gender of
> the patient, the tissue being sampled, and so forth. You can get the
> pheontypic data from a exprSet class by using the pData() function.
>
> The hardest thing about microarrays is that there are just so many
> genes that you can evaluate the expression levels for. Bioconductor
> allows you to annotate these genes. For example, if you ran an
> experiment with the Affymettrix Hu6800 chip, your data set will have
> the Affymettrix proprietary names for the genes. Bioconductor has a
> library that allows you to find out the symbol, genename, locusid, and
> other information using the Affymettrix name. You can also get the
> PMIDs (PubMed Identification) for papers that cite the particular gene
> of interest.
>
> I will write up more details about Bioconductor when I get the time
> and energy.
>
> In contrast to Bioconductor, Acuity is menu driven, so you just point
> and click to get a data analysis. It sounds easier, but quite
> honestly, you have to work just as hard with either program because
> there is no such thing as an easy analysis for microarray data. The
> acuity menu has 9 menus:
>
> 1\. Import Data
>
> -   Import Microarrays
> -   Import Substance Annotations
> -   Import Microarray Parameters
>
> 2\. Organize Microarrays into Folders
>
> -   New Folder
> -   Select microarrays in the tree
> -   Drag microarrays into new folder
>
> 3\. View Data
>
> -   Select microarrays in the tree
> -   Open Selected
> -   View individual feature values
> -   Change the data type displayed
> -   View microarray parameters
>
> 4\. View Statistics
>
> -   Select Microarrays
> -   View Statistics
>
> 5\. Normalize Microarrays
>
> -   Select microarrays in the tree
> -   Open Normalization Wizard
>
> 6\. Create a Dataset for Analysis
>
> -   Select microarrays in the tree
> -   Create and Open Data Set
>
> 7\. Manipulate a Dataset
>
> -   Sort Columns
> -   Average Columns
> -   Normalize to Column
> -   Remove Selected Row
> -   Remove Selected Columns
>
> 8\. Cluster a Dataset
>
> -   Hierarchical Clustering
> -   K-Means Clustering
> -   K-Medians Clustering
> -   Gap Statistic
> -   Self-Organizing Maps
> -   Gene Shaving
> -   Principal Components Analysis
>
> 9\. Advanced Tips
>
> -   Using the Query Wizard
> -   Filtering a dataset
> -   Acuity with multiple users
>
> Notice that most of the menus deal with data management. This is not
> surprising, since the size of a typical microarray experiment makes
> data management quite difficult.
>
> As far as I could tell, Acuity could not analyze data from gene chips
> ([Affymetrix chips](http://www.affymetrix.com/index.affx)). Version
> 4.0 of the software, I\'m told, will have support for gene chip data.
>
> The normalization features of Acuity look quite good and is very easy
> to use. The problem, of course, is that there are a lot of choices for
> normalization, and the typical user won\'t know what choices are best.
> That\'s not something that you can really blame Acuity for, any more
> than you can blame Ford Motor Company because some of its cars are
> driven by 85 year olds who are half blind. When I find the time, I
> will write a short web page about normalization.
>
> The disappointing aspect of this software is that all of its methods
> fit into a category of analysis called unsupervised learning or class
> discovery. I did not find any methods in the category of supervised
> learning (class prediction).
>
> If you want to identify genes that have differential expression across
> two groups of microarrays, Acuity offers you either a t-test or the
> Mann-Whitney test. The typical microarray has thousands of genes, so
> some sort of adjustment is needed for the p-values for these tests.
> Acuity offers the Bonferroni and Benjamini-Hochberg corrections for
> multiple comparisons.
>
> There are several levels of software integration which add to the
> functionality of this program.
>
> -   Acuity comes with an industrial-strength database, [Microsoft SQL
>     Server](http://www.microsoft.com/sql/), that allows several people
>     to use the same system and to control the extent to which
>     information is shared.
> -   Acuity also bundles in a nice little program called
>     [pdfFactory](http://www.pdffactory.com/products/pdffactory/index.html)
>     that allows you to convert output from this software into PDF
>     format.
> -   Acuity is integrated with another Axon Laboratories product,
>     [GenePix Pro](http://www.axon.com/gn_GenePixSoftware.html), which
>     does image analysis of individual spots on a microarray
>     experiment.
> -   The Acuity system also produces niche html output and has web
>     scripting features.
>
> The Help files are quite good. There were a few statements that were
> poorly or ambiguously worded, but for something as complex as
> microarray analysis, some imperfections are to be expected. I did
> notice some stray entries in the keyword index (\<invalid\> and \<no
> data\>). Also the entry under \"Calculate Multiple Groups\" was blank.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/04/acuity.html
[sim2]: http://www.pmean.com/original_site.html

