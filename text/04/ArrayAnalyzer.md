---
title: S+ArrayAnalyzer web seminar
author: Steve Simon
date: 2004-06-22
categories:
- Blog post
tags:
- Data mining
- Statistical computing
output: html_document
---
> Michael O\'Connell and Richard Park gave a nice web seminar on the
> [S+ArrayAnalyzer](http://www.insightful.com/news_events/release.asp?RID=195),
> a software program for analysis of microarray data that is marketed by
> [Insightful Corporation](http://www.insightful.com/). This company
> makes a lot of very nice software
>
> -   [S+](http://www.insightful.com/products/splus/default.asp), an
>     object oriented language for statistical analysis,
> -   [S+SeqTrial](http://www.insightful.com/products/seqtrial/default.asp),
>     a system for designing and analyzing group sequential trials,
> -   [Insightful
>     Miner](http://www.insightful.com/products/iminer/default.asp),
>     data mining software,
> -   Infact, text mining software.
>
> The S+ArrayAnalyzer software is built on the open source Bioconductor
> project. It remains faithful to the Bioconductor implementaiton of
> expression sets and code written for Bioconductor will work in
> S+ArrayAnalyzer. S+ArrayAnalyzer adds additional slots, consistent
> accessor methods, and a graphical user interface. It also offers
> Affymetrix API support, and an SPXML library for graphics.
>
> You can run S+ArrayAnalyzer algorithms within the Spotfire
> DecisionSite application. Details are available at [Spotfire S-PLUS
> Server Solution
> \[pdf\]](http://www.insightful.com/news_events/webcasts/pharm04/spotfire_s-plus.pdf).
>
> The speakers described two experiments. The first experiment looked at
> granulocyte differentiation in a series of mice, with measurements at
> day 0, 1, 2, \..., 6 with four mice evaluated at each day. The goal
> was to identify genes that are differentially expressed while
> minimizing the number of false positives.
>
> The second experiment looked at young versus old animals in the time
> 0, 0.5, 1, 2, 4 hours after surgically induced injury. There were 3
> animals of each age at each time point. The goal was to see the effect
> of age on recovery.
>
> S+ArrayAnalyzer can read the CEL and CHP formats as well as AADM links
> used by Affymetrix chips. It can also read a variety of formats for
> the two color spotted arrays.
>
> Initial exploratory methods include MvA plots (Bland-Altman plots),
> box plots, image plots of spatial expression, and RNA degradation
> plots. I had not heard about the RNA degradation plot before. This
> plot aligns all the Affymetrix probes from the 5\' end of the gene to
> the 3\' end. Since RNA degradation starts at the 5\' end, any
> degradation would appear as a trend in the plot with lower expression
> values on the 5\' end. A brief description of this plot appears on
> page 17 of the [pdf handout, Introduction to Affymetrix GeneChip Data
> Analysis](http://www.sinica.edu.tw/~hmwu/Talks/Hank_AnalysisofOligoArrayData-I.pdf),
> by Han-Ming Wu and the AffyRNAdeg function in Bioconductor will
> produce this graph.
>
> Affymetrix chips have a set of Mismatch probes that attempt to adjust
> for background and cross hybridization. There are several ways to
> incorporate the mismatch probes. The approach used by Affymetrix is
> called MAS 5 and is described at
>
> -   <http://www.bea.ki.se/staff/reimers/Web.Pages/Affymetrix.Models.htm>
> -   <http://www.biostat.jhsph.edu/~ririzarr/Teaching/688/notes-06-affy-preprocessing.pdf>
>
> Alternative approaches for handling the mismatch probes appear in the
> following references:
>
> -   Li C, Wong W (2001). Model-based analysis of oligonucleotide
>     arrays: Expression index computation and\
>     outlier detection. Proceedings of the National Academy of Science
>     U S A 98:31-36.
> -   Affymetrix MAS 5 method
> -   Irizarry, RA, Hobbs, B, Collin, F, Beazer-Barclay, YD, Antonellis,
>     KJ, Scherf, U, Speed, TP (2003)\
>     Exploration, Normalization, and Summaries of High Density
>     Oligonucleotide Array Probe Level Data.\
>     Biostatistics.
> -   Zhang PDNN
>
> Differential expression is tricky because of the large number of genes
> tested. To minimize the number of false positives, you need to use an
> approach with control of Family Wise Error Rate. The best known
> approach is the [Bonferroni
> correction](file:///J:/ask/bonferroni.asp), but this is very
> conservative. Alternative to Bonferroni include
>
> -   **Holm step-down procedure**. Holm, S. (1979). A simple
>     sequentially rejective multiple test procedure. Scandinavian
>     Journal of Statistics. 6: 65-70. (1979)
> -   **Hochberg step-down procedure**. Hochberg, Y. (1988). A sharper
>     Bonferroni procedure for multiple tests of significance.
>     Biometrika 75: 800-802.
> -   **Westfall and Young resampling methods**. Westfall, P. H. and
>     Young, S. S. Resampling-based multiple testing: Examples and
>     methods for p-value adjustment. John Wiley & Sons, 1993.
>
> Alternately you can consider an approach with control of False
> Discovery Rate. Some references for this approach are:
>
> -   Benjamini, Y., Yekutieli, D. (2001). The control of the false
>     discovery rate in multiple hypothesis testing under dependency.
>     Annals of Statistics 29,4: 1165-1188.
> -   Reiner A, Yekutieli D, Benjamini Y. Identifying differentially
>     expressed genes using false discovery rate controlling procedures.
>     Bioinformatics. 2003 Feb 12;19(3):368-75.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=12584122)
> -   Benjamini Y, Hochberg Y (1995). Controlling the false discovery
>     rate: A practical and powerful approach to multiple testing.
>     Journal of the Royal Statistical Society, Series B, Methodological
>     57:289-300.
> -   Hochberg Y, Benjamini Y. More powerful procedures for multiple
>     significance testing. Stat Med. 1990 Jul;9(7):811-8.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=2218183)
> -   Storey JD, Tibshirani R. Statistical significance for genomewide
>     studies. Proc Natl Acad Sci U S A. 2003 Aug 5;100(16):9440-5. Epub
>     2003 Jul 25.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=12883005)
>     [\[Abstract\]](http://www.pnas.org/cgi/content/abstract/100/16/9440)
>     [\[Full text\]](http://www.pnas.org/cgi/content/full/100/16/9440)
>     [\[PDF\]](http://www.pnas.org/cgi/reprint/100/16/9440.pdf)
>
> Cluster analysis will filter the genes into groups of genes that
> behave similarly
>
> -   PAM
> -   K-means
> -   Hierarchical
> -   Model Based
>
> A heat map will allow you to see how well the clustered genes behave.
>
> The final step is annotation, which tries to place the genes in
> context and link to freely available web resources like
>
> -   Locus Link <http://www.ncbi.nlm.nih.gov/LocusLink/> LocusLink
>     provides a single query interface to curated sequence and
>     descriptive information about genetic loci. It presents
>     information on official nomenclature, aliases, sequence
>     accessions, phenotypes, EC numbers, MIM numbers, UniGene clusters,
>     homology, map locations, and related web sites.
> -   Unigene <http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=unigene>
>     UniGene is an experimental system for automatically partitioning
>     GenBank sequences into a non-redundant set of gene-oriented
>     clusters. Each UniGene cluster contains sequences that represent a
>     unique gene, as well as related information such as the tissue
>     types in which the gene has been expressed and map location.
> -   Pubmed <http://www.ncbi.nlm.nih.gov/PubMed/> PubMed, a service of
>     the National Library of Medicine, includes over 14 million
>     citations for biomedical articles back to the 1950\'s. These
>     citations are from MEDLINE and additional life science journals.
>     PubMed includes links to many sites providing full text articles
>     and other related resources.
> -   GO <http://www.geneontology.org/> The goal of the Gene OntologyTM
>     (GO) Consortium is to produce a controlled vocabulary that can be
>     applied to all organisms even as knowledge of gene and protein
>     roles in cells is accumulating and changing. GO provides three
>     structured networks of defined terms to describe gene product
>     attributes. GO is one of the controlled vocabularies of the Open
>     Biological Ontologies.
> -   KEGG <http://www.genome.ad.jp/kegg/> A grand challenge in the
>     post-genomic era is a complete computer representation of the cell
>     and the organism, which will enable computational prediction of
>     higher-level complexity of cellular processes and organism
>     behaviors from genomic information. Towards this end we have been
>     developing a bioinformatics resource named KEGG, Kyoto
>     Encyclopedia of Genes and Genomes, as part of the research
>     projects in the Kanehisa Laboratory of Kyoto University
>     Bioinformatics Center.
> -   Affymetrix GO Browser
> -   Onto-Express <http://vortex.cs.wayne.edu/projects.htm> The typical
>     result of a microarray experiment is a list of tens or hundreds of
>     genes found to be differentially regulated in the condition under
>     study. Independently of the methods used to select these genes,
>     the common task faced by any researcher is to translate these
>     lists of genes into a better understanding of the biological
>     phenomena involved. Currently, this is done through a tedious
>     combination of searches through the literature and a number of
>     public databases. We developed Onto-Express (OE) as a novel tool
>     able to automatically translate such lists of differentially
>     regulated genes into functional profiles characterizing the impact
>     of the condition studied. OE constructs functional profiles (using
>     Gene Ontology terms) for the following categories: biochemical
>     function, biological process, cellular role, cellular component,
>     molecular function and chromosome location. Statistical
>     significance values are calculated for each category. We
>     demonstrated the validity and the utility of this comprehensive
>     global analysis of gene function by analyzing two breast cancer
>     data sets from two separate laboratories. OE was able to identify
>     correctly all biological processes postulated by the original
>     authors, as well as discover novel relevant mechanisms (Draghici
>     et.al, Genomics, 81(2), 2003). Other results obtained with
>     Onto-Express can be found in Ostermeier et.al, Lancet,
>     360(9335), 2002.
> -   DAVID/EASE <http://david.niaid.nih.gov/david/ease.htm> EASE is a
>     customizable, standalone software application that facilitates the
>     biological interpretation of gene lists derived from the results
>     of microarray, proteomic, and SAGE experiments. EASE provides
>     statistical methods for discovering enriched biological themes
>     within gene lists, generates gene annotation tables, and enables
>     automated linking to online analysis tools.
> -   Swiss-Prot <http://us.expasy.org/sprot/> Swiss-Prot; a curated
>     protein sequence database which strives to provide a high level of
>     annotation (such as the description of the function of a protein,
>     its domains structure, post-translational modifications, variants,
>     etc.), a minimal level of redundancy and high level of integration
>     with other databases
>
> For further details look at the [handout for this web seminar
> \[pdf\]](http://www.insightful.com/news_events/webcasts/pharm04/Jun04AA.pdf).

You can find an [earlier version](http://www.pmean.com/04/ArrayAnalyzer.html) of this page on my [original website](http://www.pmean.com/original_site.html).
