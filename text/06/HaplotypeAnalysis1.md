---
title: Methods for haplotype analysis
author: Steve Simon
source: http://www.pmean.com/06/HaplotypeAnalysis1.html
date: 2006-05-31
categories:
- Blog post
tags:
- Genetic analysis
output: html_document
page_update: partial
---

> I am not an expert on haplotype analysis, but as I understand it, a
> haplotype is a combination of several SNPs (Single Nucleotide
> Polymorphisms) that show a stronger association with disease than any
> single SNP might.
>
> Haplotype analysis is difficult because you often only have partial
> information about the genomes. Here is a small piece of information
> about the first fifteen SNPs on chromosome 22 for a subject in the
> HapMap project.
>
> `rs3016036<U+FFFD> AA         rs2334386<U+FFFD> GG         rs2844882<U+FFFD> AA         rs11089130 GG         rs738829<U+FFFD><U+FFFD> GG         rs7510853<U+FFFD> CC         rs10154488 CC         rs915674<U+FFFD><U+FFFD> AG         rs915675<U+FFFD><U+FFFD> AC         rs915677<U+FFFD><U+FFFD> GG         rs9604648<U+FFFD> GG         rs7286962<U+FFFD> CC         rs9604721<U+FFFD> CC         rs12159982 CC         rs4389403<U+FFFD> AG `
>
> There are eight possible ways that these SNPs could arrange themselves
> on the two strands of DNA:
>
> `Haplotype 1: AGAGGCCAAGGCCCA and <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> AGAGGCCGCGGCCCG        `\
> `Haplotype 2: AGAGGCCAAGGCCCG and <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> AGAGGCCGCGGCCCA        `\
> `Haplotype 3: AGAGGCCACGGCCCA and <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> AGAGGCCGAGGCCCG        `\
> `Haplotype 4: AGAGGCCACGGCCCG and <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> AGAGGCCGAGGCCCA        `\
> `Haplotype 5: AGAGGCCGAGGCCCA and <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> AGAGGCCACGGCCCG        `\
> `Haplotype 6: AGAGGCCGAGGCCCG and <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> AGAGGCCACGGCCCA        `\
> `Haplotype 7: AGAGGCCGCGGCCCA and <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> AGAGGCCAAGGCCCG        `\
> `Haplotype 8: AGAGGCCGCGGCCCG and <U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> AGAGGCCAAGGCCCA`
>
> Actually, if you look closely at this, there are only four unique
> haplotypes (1/8, 2/7, 3/6, and 4/5 are effectively the same
> haplotypes).
>
> In most realistic situations, you do not know what particular
> haplotype a patient has. You could sequence the DNA strand to figure
> out which of these haplotype combinations is actually present, but
> sequencing is a very expensive thing to do. Instead, you might be able
> to infer the likelihood of these haplotypes by looking at multiple
> patients and<U+FFFD> making assumptions consistent with Hardy-Wienberg
> equilibrium.
>
> These inferences are effectively the same as many missing data
> problems and use an approach, the EM algorithm that is commonly relied
> on to help with this sort of problem. There is a library of programs
> for R called haplo.stats
>
> -   [cran.r-project.org/src/contrib/Descriptions/haplo.stats.html](http://cran.r-project.org/src/contrib/Descriptions/haplo.stats.html)
>
> I've run some experiments on applying information theory to the
> HapMap project, and I might investigate whether this provides an
> alternative way to identifying haplotypes.
>
> I attended a talk last week by Pengyuan Liu and she described how to
> assess haplotype information with special attention to the case where
> you have data on related siblings. Some of the references she
> mentioned are worth reviewing.
>
> -   **Human growth hormone 1 (GH1) gene expression: complex
>     haplotype-dependent influence of polymorphic variation in the
>     proximal promoter and locus control region.** M. Horan, D. S.
>     Millar, J. Hedderich, G. Lewis, V. Newsway, N. Mo, L. Fryklund, A.
>     M. Procter, M. Krawczak, D. N. Cooper. Hum Mutat 2003: 21(4);
>     408-23.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12655556&dopt=Abstract)
>     [\[Abstract\]](http://www3.interscience.wiley.com/cgi-bin/abstract/104084431/ABSTRACT?CRETRY=1&SRETRY=0)
>     [\[PDF\]](http://www3.interscience.wiley.com/cgi-bin/fulltext/104084431/PDFSTART)
>     **(Medicine, Genetics)**
> -   **Maximum-likelihood estimation of molecular haplotype frequencies
>     in a diploid population.** L. Excoffier, M. Slatkin. Mol Biol Evol
>     1995: 12(5); 921-7.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7476138&dopt=Abstract)
>     [\[Abstract\]](http://mbe.oxfordjournals.org/cgi/content/abstract/12/5/921)
>     [\[PDF\]](http://mbe.oxfordjournals.org/cgi/reprint/12/5/921.pdf)
>     **(Medicine, Genetics)**
> -   **Accuracy of haplotype frequency estimation for biallelic loci,
>     via the expectation-maximization algorithm for unphased diploid
>     genotype data.** D. Fallin, N. J. Schork. Am J Hum Genet 2000:
>     67(4); 947-59.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10954684&dopt=Abstract)
>     [\[Full
>     text\]](http://www.journals.uchicago.edu/AJHG/journal/issues/v67n4/001819/001819.html)
>     [\[PDF\]](http://www.journals.uchicago.edu/AJHG/journal/issues/v67n4/001819/001819.web.pdf)
>     **(Medicine, Genetics)**
> -   **A deductive method of haplotype analysis in pedigrees.** E. M.
>     Wijsman. Am J Hum Genet 1987: 41(3); 356-73.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3115093&dopt=Abstract)
>     **(Medicine, Genetics)**
> -   **Haplotyping in pedigrees via a genetic algorithm.** P.
>     Tapadar, S. Ghosh, P. P. Majumder. Hum Hered 2000: 50(1); 43-56.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10545757&dopt=Abstract)
>     [\[Full
>     text\]](http://content.karger.com/produktedb/produkte.asp?typ=fulltext&file=hhe50043)
>     [\[PDF\]](http://content.karger.com/ProdukteDB/produkte.asp?Aktion=ShowPDF&ArtikelNr=22890&ProduktNr=224250&Ausgabe=225932&filename=22890.pdf)
> -   **Additional evidence that the K-ras protooncogene is a candidate
>     for the major mouse pulmonary adenoma susceptibility (Pas-1)
>     gene.** L. Lin, M. F. Festing, T. R. Devereux, K. A. Crist, S. C.
>     Christiansen, Y. Wang, A. Yang, K. Svenson, B. Paigen, A. M.
>     Malkinson, M. You. Exp Lung Res 1998: 24(4); 481-97.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9659579&dopt=Abstract)
>     **(Medicine, Genetics)**
