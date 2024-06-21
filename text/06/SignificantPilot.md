---
title: Oops! I found statistical significance in my pilot study
author: Steve Simon
source: http://www.pmean.com/06/SignificantPilot.html
date: 2006-09-18
categories:
- Blog post
tags:
- Early stopping
output: html_document
page_update: partial
---

*Dear Professor Mean, I ran a pilot study to help me estimate the sample
size for a larger study. There were 15 patients in each arm of the
pilot, and when I analyzed the pilot data for efficacy in the primary
outcome, I was shocked to find out that the results were already
statistically significant. Do I still need to run the full study?*

Before you do anything else, go out and buy a lottery ticket. You
obviously have a Midas touch.

The first thing you should do is to go back and look at the original
protocol. Did you include a sentence like

> *"If the results of the pilot study achieve statistical significance,
> we will\..."*

I didn't think so. If you had that level of foresight, you wouldn't be
writing to me. So what you are looking at is a post hoc modification of
the original research protocol.

Post hoc modifications of research protocols happen all the time.
Stephen Senn has a cute definition:

> *"Medical statistician: one who will not accept that Columbus
> discovered America \... because he said he was looking for India in
> the trial plan."*

Still, it is worth noting that post hoc modifications will dilute the
credibility of your research finding. Is your research finding so robust
that it can withstand such dilution?

If you answer yes, then you have to put yourself conceptually in a time
machine and ask the question "If I was smart enough during the writing
of the protocol to consider the possibility of stopping the study after
the pilot, how would I have written the protocol?" You'd probably
include some sort of adjustment to the p-value to reflect the fact that
you have potentially multiple peeks at the data. Analyze the data under
the new protocol procedures.

If you answer no, then pretend that you never looked at statistical
significance in the pilot study. Proceed as originally planned with the
full study. The extra work is intended not to offer proof of what you
already know, but rather to ensure that your results will be treated
seriously when you do publish.

Another possibility is to treat the pilot study as a preliminary finding
in need of replication and then replicate the pilot study with an
additional 15 patients in each arm.

**More information about Early Stopping in Clinical Trials.**

**Other pages on this website:**

-   [Stats: Stopping rules for a Data Safety Monitoring Plan (July
    5, 2006)](http://StoppingRules.asp)
-   [Stats: Group Sequential Monitoring of Clinical Trials in R
    (December
    13, 2005)](http://www.pmean.com/weblog2005/GroupSequential.html)
-   [Stats: When can I stop my CQI study? (June
    6, 2005)](http://www.pmean.com/weblog2005/StopStudy.html)
-   [Stats: Controversy over stopping a study early (November
    24, 2004)](http://www.pmean.com/weblog2004/EarlyStoppingControversy.html)
-   [Stats: Early stopping in an animal experiment (July
    1, 2004)](http://www.pmean.com/weblog2004/EarlyStoppingAnimal.html)
-   [Stats: Protocol changes (No date)](../ask/protocol.asp)
-   [Stats: Interim analysis (No date)](../plan/interim.asp)

**Books:**

-   **Group Sequential Methods with Applications to Clinical Trails.**
    Christopher Jennison, Bruce W. Turnbull (2000) Boca Raton, Florida:
    Chapman & Hall/CRC.
-   **Biopharmaceutical Sequential Statistical Applications.** Karl E.
    Peace (1992) New York: Marcel Dekker, Inc.
-   **Sequential Methods in Statistics.** Barrie G. Wetherill, Kevin D.
    Glazebrook (1986) New York: Chapman and Hall.

**Research articles:**

-   **Monitoring randomised controlled trials. Parkinson's disease
    trial illustrates the dangers of stopping early.** K. R. Abrams.
    British Medical Journal 1998: 316(7139); 1183-4.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9552993&dopt=Abstract)
    [\[Full text\]](http://bmj.com/cgi/content/full/316/7139/1183)
    [\[PDF\]](http://www.pubmedcentral.gov/picrender.fcgi?artid=1112981&blobtype=pdf)
-   **Lessons learned from a clinical trial.** P. W. Armstrong, L. K.
    Newby, C. B. Granger, K. L. Lee, R. J. Simes, F. Van de Werf, H. D.
    White, R. M. Califf. Circulation 2004: 110(23); 3610-4.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15583090&dopt=Abstract)
    [\[Full
    text\]](http://circ.ahajournals.org/cgi/content/full/110/23/3610)
    [\[PDF\]](http://www.circ.ahajournals.org/cgi/reprint/110/23/3610.pdf)
-   **Responsibilities of sponsors are limited in premature
    discontinuation of trials.** Richard Ashcroft. BMJ 2001: 323(7303);
    53-. [\[Full text\]](http://bmj.com/cgi/content/full/323/7303/53)
-   **Selegiline, or the problem of early termination of clinical
    trials. The clinical questions are not well answered, and probably
    never will be.** M. M. Breteler. British Medical Journal 1998:
    316(7139); 1182-3.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=955299&dopt=Abstract)
    [\[Full text\]](http://bmj.com/cgi/content/full/316/7139/1182)
    [\[PDF\]](http://www.pubmedcentral.gov/picrender.fcgi?artid=1112980&blobtype=pdf)
-   **Tamoxifen for the prevention of breast cancer. Important questions
    remain unanswered, and existing trials should continue.** P. Bruzzi.
    British Medical Journal 1998: 316(7139); 1181-2.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9552991&dopt=Abstract)
    [\[Full text\]](http://bmj.com/cgi/content/full/316/7139/1181)
    [\[PDF\]](http://www.pubmedcentral.gov/picrender.fcgi?artid=1112979&blobtype=pdf)
-   **Should all trials have a data safety and monitoring
    committee?** J. A. Cairns, A. Hallstrom, P. Held. Am Heart J 2001:
    141(1); 156-63.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11136502&dopt=Abstract)
-   **The Ethics of Early Stopping Rules: Who Is Protecting Whom?**
    Stephen A. Cannistra. Journal of Clinical Oncology 2004: 22(9);
    1542-1545.
    [\[PDF\]](http://www.jco.org/cgi/content/full/22/9/1542?etoc)
-   **When and how to stop a clinical trial: invited remarks.** T. C.
    Chalmers. Clin Pharmacol Ther 1979: 25(5 Pt 2); 649-50.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=373948&dopt=Abstract)
-   **Optimal three-stage designs for phase II cancer clinical
    trials.** T. T. Chen. Stat Med 1997: 16(23); 2701-11.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9421870&dopt=Abstract)
-   **Societal responsibilities of clinical trial sponsors.** Stephen
    Evans, Stuart Pocock. BMJ 2001: 322(7286); 569-570.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11238141&dopt=Abstract)
    [\[Full text\]](http://bmj.com/cgi/content/full/322/7286/569)
    [\[PDF\]](http://bmj.com/cgi/reprint/322/7286/569.pdf)
-   **Safeguarding patients in clinical trials with high mortality
    rates.** Bradley D. Freeman, Robert L. Danner, Steven M. Banks,
    Charles Natanson. Am J Respir Crit Care Med 2001: 164(2); 190-192.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11463585&dopt=Abstract)
    [\[Full
    text\]](http://ajrccm.atsjournals.org/cgi/content/full/164/2/190)
    [\[PDF\]](http://ajrccm.atsjournals.org/cgi/reprint/164/2/190.pdf)
-   **Issues in data monitoring and interim analysis of trials.** AM
    Grant, DG Altman, AB Babiker, MK Campbell, FJ Clemens, JH
    Darbyshire, DR Elbourne, SK McLeer, MKB Parmar, SJ Pocock, DJ
    Spiegelhalter, MR Sydes, AF Walker, SA Wallace. Health Technolgoy
    Assessment 2005: 9(7);
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15763038&dopt=Abstract)
    [\[Abstract\]](http://www.hta.ac.uk/execsumm/summ907.htm)
    [\[PDF\]](http://www.hta.ac.uk/fullmono/mon907.pdf)
-   **Breast cancer trial stopped early \[news\].** D. Josefson. British
    Medical Journal 1998: 316(7139); 1185.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9583923&dopt=Abstract)
    [\[Full text\]](http://bmj.com/cgi/content/full/316/7139/1185/d)
-   **Sample size and interim analysis issues for dose selection.** K.
    L. Lee. Am Heart J 2000: 139(4); S161-5.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10740124&dopt=Abstract)
-   **Premature discontinuation of clinical trial for reasons not
    related to efficacy, safety, or feasibility Commentary: Early
    discontinuation violates Helsinki principles.** Michel Lievre, Joel
    Menard, Eric Bruckert, Joel Cogneau, Francois Delahaye, Philippe
    Giral, Eran Leitersdorf, Gerald Luc, Luis Masana, Philippe Moulin,
    Philippe Passa, Denis Pouchain, Gerard Siest, K Boyd. BMJ 2001:
    322(7286); 603-606. [\[Full
    text\]](http://bmj.com/cgi/content/full/322/7286/603)
    [\[PDF\]](http://bmj.com/cgi/reprint/322/7286/603.pdf)
-   **Monitoring clinical trials\--interim data should be publicly
    available.** R. J. Lilford, D. Braunholtz, S. Edwards, A. Stevens.
    British Medical Journal 2001: 323(7310); 441-2.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11520848&dopt=Abstract)
    [\[Full text\]](http://bmj.com/cgi/content/full/323/7310/441)
    [\[PDF\]](http://bmj.com/cgi/reprint/323/7310/441.pdf)
-   **Group sequential designs for monitoring survival
    probabilities.** D. Y. Lin, L. Shen, Z. Ying, N. E. Breslow.
    Biometrics 1996: 52(3); 1033-41.
-   **Interim analyses of data as they accumulate in laboratory
    experimentation.** J. Ludbrook. BMC Med Res Methodol 2003: 3(1); 15.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12930561&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1471-2288/3/15/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1471-2288/3/15)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2288-3-15.pdf)
-   **Upper Extremity Deep Venous Thrombosis in Cancer Patients with
    Venous Access Devices- Prophylaxis with a Low Molecular Weight
    Heparin (Fragmin).** M Monreal, A Alastrue, M Rull, X Mira, J
    Muxart, R Rosell, A Abad. Thromb Haemost 1996: 75(2); 251-253.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8815570&dopt=Abstract)
-   **Monitoring and ensuring safety during clinical research.** M. A.
    Morse, R. M. Califf, J. Sugarman. Jama 2001: 285(9); 1201-5.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11231751&dopt=Abstract)
    [\[Abstract\]](http://jama.ama-assn.org/cgi/content/abstract/285/9/1201)
    [\[Full
    text\]](http://jama.ama-assn.org/cgi/content/full/285/9/1201)
    [\[PDF\]](http://jama.ama-assn.org/cgi/reprint/285/9/1201.pdf)
-   **Patients at high risk of death after lung-volume-reduction
    surgery.** National Emphysema Treatment Trial Research Group. N Engl
    J Med 2001: 345(15); 1075-83.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11596586&dopt=Abstract)
    [\[Abstract\]](http://content.nejm.org/cgi/content/abstract/345/15/1075)
    [\[PDF\]](http://content.nejm.org/cgi/reprint/345/15/1075.pdf)
-   **Ethical dilemmas in continuing a zidovudine trial after early
    termination of similar trials.** MS Simberkoff, PM Hartigan, JD
    Hamilton, D Deykin, M Gail, JG Bartlett, P Feorino, R Redfield, R
    Roberts, D Collins, et al. Control Clin Trials 1993: 14(1); 6-18.
-   **Data safety and monitoring boards.** Arthur S Slutsky, James V
    Lavery. NEJM 2004: 350(11); 1143-1147.
-   **Vasectomy by ligation and excision, with or without fascial
    interposition: a randomized controlled trial \[ISRCTN77781689\].** D
    Sokal, B Irsula, M Hays, M Chen-Mok, MA Barone. BMC Med 2004: 2(1);
    6.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15056388&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1741-7015/2/6/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1741-7015/2/6)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1741-7015-2-6.pdf)
-   **Design and analysis of prostate cancer trials.** R Sylvester. Acta
    Urologica Belgica 1994: 62(1); 23-29.

**Web pages:**

-   **[Human Subjects Case 2: Early Termination of Clinical
    Trials](http://ethics.ucsd.edu/workshops/CRW/cases/case2.htm)**.
    Michael Kalichman, Susan Eastwood. Accessed on 2003-06-20.
    ethics.ucsd.edu/workshops/CRW/cases/case2.htm
-   **[Flexible Clinical Trial Design
    \[pdf\]](http://www.cytel.com/Papers/flexible_ct_design_04.pdf)**.
    Cyrus Mehta, Presented at the Adaptive Design For Clinical Trials:
    Statistical Methodologies and Applications Conference, March 4, 5,
    2004 - Philadelphia, PA. Accessed on 2004-03-25.
    www.cytel.com/Papers/flexible\_ct\_design\_04.pdf
-   **[Design and Interim Monitoring of Flexible Clinical Trials
    \[pdf\]](http://www.cytel.com/Papers/MBC_2004.pdf)**. Cyrus R.
    Mehta, Presented at Massachusetts Biotechnology March 9, 2004 -
    Boston, MA. Accessed on 2004-03-25.
    www.cytel.com/Papers/MBC\_2004.pdf
-   **[Adaptive vs Group Sequential Designs: Some Trade-Offs
    \[pdf\]](http://www.cytel.com/papers/ENARTalk.pdf)**. Cyrus R.
    Mehta, Anastasios A. Tsiatis, Cytel Statistical Software. Accessed
    on 2003-07-15. www.cytel.com/papers/ENARTalk.pdf
-   **[Reporting Adverse Event/Safety
    Issues](http://www.hmc.psu.edu/hmc-irb/Forms%20&%20Instructions/Ongoing%20Studies/OngoingStudies.htm)**.
    Penn State College of Medicine. Accessed on 2004-01-28.
    www.hmc.psu.edu/hmc-irb/Forms%20&%20Instructions/Ongoing%20Studies/OngoingStudies.htm
-   **[FDA Guidance on Clinical Trial Data Monitoring Committees
    (DMCs)](http://www.fda.gov/cber/minutes/clinmon1101p1.htm)**. U.S.
    Food and Drug Administration, Transcript of an open public meeting,
    November 27, 2001. Accessed on 2003-05-12.
    www.fda.gov/cber/minutes/clinmon1101p1.htm
-   **[Guidance for Clinical Trial Sponsors. On the Establishment and
    Operation of Clinical Trial Data Monitoring
    Committees](http://www.fda.gov/cber/gdlns/clindatmon.htm)**. U.S.
    Food and Drug Administration. Accessed on 2003-05-12.
    www.fda.gov/cber/gdlns/clindatmon.htm
-   **[Study of Asthma-Drug
    Halted](http://www.fda.gov/bbs/topics/ANSWERS/2003/ANS01192.html)**.
    U.S. Food and Drug Administration. Accessed on 2003-01-29.
    www.fda.gov/bbs/topics/ANSWERS/2003/ANS01192.html
-   **[Further Guidance on a Data and Safety Monitoring for Phase I and
    Phase II
    Trials](http://grants1.nih.gov/grants/guide/notice-files/NOT-OD-00-038.html)**.
    U.S. National Institutes of Health. Accessed on 2003-05-12.
    grants1.nih.gov/grants/guide/notice-files/NOT-OD-00-038.html
-   **[NIH Policy for Data and Safety
    Monitoring](http://grants1.nih.gov/grants/guide/notice-files/not98-084.html)**.
    U.S. National Institutes of Health. Accessed on 2003-05-12.
    grants1.nih.gov/grants/guide/notice-files/not98-084.html
-   **[Data And Safety Monitoring
    Plans](http://www.som.ucsf.edu/som/research/clinical_research/resources/dsmp.asp)**.
    UCSF School of Medicine. Accessed on 2003-01-21.
    www.som.ucsf.edu/som/research/clinical\_research/resources/dsmp.asp
