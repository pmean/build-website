---
title: One-tailed p-values
author: Steve Simon
date: 2004-04-12
categories:
- Blog post
tags:
- Hypothesis testing
output: html_document
page_update: partial
---
Someone asked me how to compute one-sided p-values in SPSS. The output
from SPSS always uses two-sided p-values. This was worth an explanation,
so I added a [new question to the Ask Professor Mean
page](../ask/tail.asp) on how to do this.

There is a fierce debate about when you should use one-sided tests. In
an editorial in the Journal of Clinical Epidemiology
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=11166523),
Knotttnerus and Bouter argue in favor of one-sided tests when it is
obvious that a statistically significant change in the opposite
direction would not influence practice any differently than a finding of
no statistical difference. The sample size for a one sided test is
smaller and this places a smaller burden on research subjects. Typically
this would be when one approach is more expensive, more risky, or
otherwise more troublesome. A finding of no difference between a new
surgical approach an existing non-surgical approach, would lead to a
recommendation for the non-surgical approach because it is less
invasive. A comparison of coumarin and aspirin in preventing stroke
would recommend aspirin if there were no demonstrated difference,
because coumarin requires repeated blood testing. Knottnerus and Bouter
also recommend one-sided tests when the comparison group is no treatment
or an inactive placebo.

Lemuel Moye, in his fascinating book **Statistical Reasoning in
Medicine. The Intuitive P-Value Primer**, argues forcefully against
one-sided tests. Researchers should be open to the possibility that
their proposed treatments could do more harm than good. Moye offers a
compromise where the alpha level is allocated asymmetrically. For
example, the "benefit" tail could be allocated .03 of the total alpha
level and the remaining .02 would be allocated to the "harm" tail.

Another example of where a one-sided test is called for is when the
possibility of a change in the opposite direction would be immediately
disregarded. One example where you might think that there is an obvious
need for a one-tailed test is in the study of passive smoking. One
writer did try to argue that passive smoking has a beneficial effect, as
described in the 1998 BMJ article, **The hot air on passive smoking**
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=9552868),
but most accept that if it has any effect at all, it would be harmful.

And yet, a federal judge vacated a U.S. Environmental Protection Agency
report on passive smoking partly because of the use of one-sided tests.
Judge Osteen ruled that

> *Finally, when an agency conducts activities under an act authorizing
> information collection and dissemination of findings, the agency has a
> duty to disseminate the findings made. EPA did not disclose in the
> record or in the Assessment: its inability to demonstrate a
> statistically significant relationship under normal methodology; the
> reasoning behind adopting a one-tailed test, or that only after
> adjusting the Agency's methodology could a weak relative risk be
> demonstrated. Instead of disclosing information, the Agency withheld
> significant portions of its findings and reasoning in striving to
> confirm its a priori hypothesis.*

So apparently, Judge Osteen believes it is normal for an enforcement
agency to examine the potential that some of the hazardous substances it
evaluates might actually be helpful. In my opinion, it would be absurd
for any scientist who claimed that exposure to passive smoke might have
a protective effect against lung cancer. You can find the [full text of
Judge Osteen's ruling](http://www.junkscience.com/news2/osteen.htm) at
the Junk Science web site. The EPA has a [response to the general
criticisms of its report on passive
smoking](http://epa.gov/iaq/pubs/strsfs.html) (though not a direct
response to Judge Osteen's ruling) on its web page.

Finally, there's a lot of controversy about whether p-values should be
used at all. I'd like to write a web page about this sometime, but for
now, here are some references and web pages.

-   **The Case Against Statistical Significance Testing.** Carver RP.
    Harvard Educational Review 1978: 48(3); 378-399.
-   **The Earth Is Round (p \< .05).** Cohen J. American Psychologist
    1994: 49(12); 997 - 1003.
-   **p Values, hypothesis tests, and likelihood: implications for
    epidemiology of a neglected historical debate.** Goodman S. American
    Journal of Epidemiology 1993: 137(5); 485-95.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=8465801)
-   **A Picture is Worth a Thousand p Values: On the Irrelevance of
    Hypothesis Testing in the Microcomputer Age.** Loftus GR. Behavior
    Research Methods, Instruments & Computers 1993: 25(2); 250-256.
-   **Is statistical significance testing useful in interpreting data?**
    Savitz DA. Reprod Toxicol 1993: 7(2); 95-100.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=8499671)
-   **Sifting the evidence- what's wrong with significance tests?**
    Sterne JAC, Smith GD. BMJ 2001: 322; 226-231.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11159626&dopt=Abstract)
    [\[Full text\]](http://bmj.com/cgi/content/full/322/7280/226)
    [\[PDF\]](http://bmj.com/cgi/reprint/322/7280/226.pdf)
-   **[Special Issue: Statistical Significance
    Testing](http://roberts.ed.psu.edu/users/droberts/sigtest.htm)**.
    Roberts D, Penn State University. Accessed on 2003-03-20.
    roberts.ed.psu.edu/users/droberts/sigtest.htm
-   **[Understanding
    P-values](http://www.stat.duke.edu/~berger/p-values.html)**. Berger
    J, Duke University. Accessed on 2003-03-19.
    www.stat.duke.edu/\~berger/p-values.html
-   **[326 Articles/Books Questioning the Indiscriminate Use of
    Statistical Hypothesis Tests in Observational
    Studies](http://www.cnr.colostate.edu/~anderson/thompson1.html)**.
    Thompson WL. Accessed on 2003-03-19.
    www.cnr.colostate.edu/\~anderson/thompson1.html

You can find an [earlier version](http://www.pmean.com/04/OneTail.html) of this page on my [original website](http://www.pmean.com/original_site.html).
