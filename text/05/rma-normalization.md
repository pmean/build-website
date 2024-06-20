---
title: RMA normalization of microarrays
author: Steve Simon
source: http://www.pmean.com/05/MicroarrayG.html
date: 2005-10-24
categories:
- Blog post
tags:
- Genomics analysis 
output: html_document
page_update: partial
---
> If you ask most statisticians if they want raw data or processed data,
> they will, for the most part, prefer to look at the raw data. There
> are two reasons for this. First, the statisticians want to understand
> the processing of the data and how that might influence the precision
> of any further calculations based on the raw data. Second,
> statisticians may want to try alternative approaches for processing
> the data and see if that produces better results.
>
> An example of this involves the normalization of Affymetrix microarray
> chips. The Affy chips as they are often called, use photolithography
> to build the chip, a process similar to the approach used to create
> semiconductor chips. This approach allows a very high number of genes
> to be tested on a slide that can fit in the palm of your hand. Unlike
> spotted arrays, that places spots of the full sequence of the gene (or
> Expressed Sequence Tag) on a slide, the Affy chip selects 20 probes
> for each gene, each of which has a length of 25 base pairs. Next to
> each of these probes is another probe that represents the same 25 base
> pair sequence except that the middle base is changed. The 20 probes
> are called PM (Perfect Match) probes and the probes with the changed
> middle base are called MM (MisMatch) probes. The MM probes are an
> attempt to measure and control for cross-hbridization, the tendency
> for genese that are similar, but not identical to a particular gene
> sequence to bind weakly to these sites.
>
> Affymetrix has developed an algorithm, MAS5, that adjusts the PM
> probes by effectively subtracting the signal found on the MM probes.
> This subtraction is done carefully to avoid producing negative signals
> and to minimize the effect of outliers. Most of the data I have
> received from Affy chips has used MAS5 to summarize the 20 PM and MM
> probes to produce a single intensity value for each gene.
>
> You would think that we statisticians would be grateful for getting a
> data set that is effectively 40 times smaller, since the microarrays
> are already quite huge. But some statisticians have been experimenting
> with the data from the individual PM and MM probes to see if they
> could produce an alternate summary of these probes that behaves
> better.
>
> The raw data from an Affy chip comes in a CEL format, and you also
> need information about the layout of the Affy chip, which comes in a
> CDF file. Two alternatives to MAS5, dChip and RMA, were developed to
> provide better summaries of the PM and MM probes. A comparison of
> MAS5, dChip, and RMA appears in
>
> -   **Summaries of Affymetrix GeneChip probe level data.** Irizarry
>     RA, Bolstad BM, Collin F, Cope LM, Hobbs B, Speed TP. Nucleic
>     Acids Res 2003: 31(4); e15.
>     [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12582260&dopt=Abstract)
>     [\[Abstract\]](http://nar.oxfordjournals.org/cgi/content/abstract/31/4/e15)
>     [\[Full
>     text\]](http://nar.oxfordjournals.org/cgi/content/full/31/4/e15)
>     [\[PDF\]](http://nar.oxfordjournals.org/cgi/reprint/31/4/e15.pdf)
>
> The RMA approach appears to be very promising because it does not
> involve an implicit subtraction of the MM probe values. The
> subtraction can lead to a lot of noise at low signal values. Instead,
> RMA looks at the distribution of the PM probe values and fits a
> combination of two distributions, a "noise" distribution that is
> normally distributed, and a "signal" distribution that is
> distributed like an exponential distribution. The normalized values
> are estimated through the expected value of the signal distribution.

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/MicroarrayG.html
[sim2]: http://www.pmean.com/original_site.html RMA normalization of microarrays
