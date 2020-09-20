---
title: Naming conventions for genes, proteins, etc.
author: Steve Simon
source: http://www.pmean.com/05/NamingGenes.html
date: 2005-09-08
category:
- Blog post
tags:
output: html_document
---
**[StATS]:** **Naming conventions for genes,
proteins, etc. (September 8, 2005)**.

When you are analyzing a microarray experiment, the mRNA sequences can
be referred to by several different names.

Affymettrix IDs

Clone ID

EC (Enzyme Commission) numbers

GenBank Accession Numbers

> The GenBank Accession numbers are one or two upper case letters
> followed by five or six numeric digits.

GO (Gene Ontology) terms or identifiers

Gene Symbols

Locus Name

> *The locus name was originally designed to help group entries with
> similar sequences: the first three characters usually designated the
> organism; the fourth and fifth characters were used to show other
> group designations, such as gene product; for segmented entries, the
> last character was one of a series of sequential integers. (See
> GenBank release notes section 3.4.4 for more info.)*
>
> *However, the 10 characters in the locus name are no longer sufficient
> to represent the amount of information originally intended to be
> contained in the locus name. The only rule now applied in assigning a
> locus name is that it must be unique. For example, for GenBank records
> that have 6-character accessions (e.g., U12345), the locus name is
> usually the first letter of the genus and species names, followed by
> the accession number. For 8-character character accessions (e.g.,
> AF123456), the locus name is just the accession number.*
> [www.ncbi.nlm.nih.gov/Sitemap/samplerecord.html](http://www.ncbi.nlm.nih.gov/Sitemap/samplerecord.html)

LocusLink ID

RefSeq Accession Numbers

> *The Reference Sequence (RefSeq) collection aims to provide a
> comprehensive, integrated, non-redundant set of sequences, including
> genomic DNA, transcript (RNA), and protein products, for major
> research organisms. RefSeq standards serve as the basis for medical,
> functional, and diversity studies; they provide a stable reference for
> gene identification and characterization, mutation analysis,
> expression studies, polymorphism discovery, and comparative analyses.*
> [www.ncbi.nlm.nih.gov/RefSeq/index.html](http://www.ncbi.nlm.nih.gov/RefSeq/index.html)

SwissProt/UniProt

> These are six characters long where the first character is either O,
> P, or Q, the second and sixth characters are numeric digits, and the
> remaining characters are either upper case letters or numeric digits.
>
> *The purpose of accession numbers is to provide a stable way of
> identifying entries from release to release. It is sometimes necessary
> for reasons of consistency to change the names of the entries, for
> example, to ensure that related entries have similar names. However,
> an accession number is always conserved, and therefore allows
> unambiguous citation of entries. Researchers who wish to cite entries
> in their publications should always cite the first accession number.
> This is commonly referred to as the \'primary accession number\'.
> \'Secondary accession numbers\' are sorted alphanumerically. We
> strongly advise those users who have programs performing mappings of
> Swiss-Prot to another data resource to use Swiss-Prot accession
> numbers to identify an entry. Entries will have more than one
> accession number if they have been merged or split. For example, when
> two entries are merged into one, the accession numbers from both
> entries are stored in the AC line(s). If an existing entry is split
> into two or more entries (a rare occurrence), the original accession
> numbers are retained in all the derived entries and a new primary
> accession number is added to all the entries. An accession number is
> dropped only when the data to which it was assigned have been
> completely removed from the database. Accession numbers deleted from
> Swiss-Prot are listed in the document file delac\_sp.txt and those
> deleted from TrEMBL are listed in delac\_tr.txt.*
> [ca.expasy.org/sprot/userman.html\#AC\_line](http://ca.expasy.org/sprot/userman.html#AC_line)

Other information

> *The AC (ACcession number) line lists the accession numbers associated
> with the entry. Examples of accession number lines are shown below:*
>
> *AC X56734; S46826;\
> AC Y00001; X00001-X00005; X00008; Z00001-Z00005;*
>
> *Each accession number, or range of accession numbers, is terminated
> by a semicolon. Where necessary, more than one AC line is used.
> Consecutive secondary accession numbers in EMBL database flatfiles are
> shown in the form of inclusive accession number ranges.*
>
> *Accession numbers are the primary means of identifying sequences
> providing a stable way of identifying entries from release to release.
> An accession number, however, always remains in the accession number
> list of the latest version of the entry in which it first appeared.
> Accession numbers allow unambiguous citation of database entries.
> Researchers who wish to cite entries in their publications should
> always cite the first accession number in the list (the \"primary\"
> accession number) to ensure that readers can find the relevant data in
> a subsequent release. Readers wishing to find the data thus cited must
> look at all the accession numbers in each entry\'s list.*
>
> *Secondary accession numbers: One reason for allowing the existence of
> several accession numbers is to allow tracking of data when entries
> are merged or split. For example, when two entries are merged into
> one, a \"primary\" accession number goes at the start of the list, and
> those from the merged entries are added after this one as
> \"secondary\" numbers. Example: AC X56734; S46826; Similarly, if an
> existing entry is split into two or more entries (a rare occurrence),
> the original accession number list is retained in all the derived
> entries. An accession number is dropped from the database only when
> the data to which it was assigned have been completely removed from
> the database.*
> [www.ebi.ac.uk/embl/Documentation/User\_manual/usrman.html](http://www.ebi.ac.uk/embl/Documentation/User_manual/usrman.html)

**Further reading:**

-   [bioinformatics.ubc.ca/research/talks/archive/CBW\_Bioinformatics\_BiologicalDatabases\_2005\_1\_3.pdf](http://bioinformatics.ubc.ca/research/talks/archive/CBW_Bioinformatics_BiologicalDatabases_2005_1_3.pdf)
-   The NCBI Handbook.
    [www.ncbi.nih.gov/books/bv.fcgi?rid=handbook](http://www.ncbi.nih.gov/books/bv.fcgi?rid=handbook)
-   **Database resources of the National Center for Biotechnology.**
    Wheeler DL, Church DM, Federhen S, Lash AE, Madden TL, Pontius JU,
    Schuler GD, Schriml LM, Sequeira E, Tatusova TA, Wagner L. Nucleic
    Acids Res 2003: 31(1); 28-33.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12519941&dopt=Abstract)
    [\[Abstract\]](http://nar.oxfordjournals.org/cgi/content/abstract/31/1/28)
    [\[Full
    text\]](http://nar.oxfordjournals.org/cgi/content/full/31/1/28)
    [\[PDF\]](http://nar.oxfordjournals.org/cgi/reprint/31/1/28.pdf)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Naming conventions for genes,
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

