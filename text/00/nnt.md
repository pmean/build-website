---
title: Number Needed to Treat
author: Steve Simon
source: http://www.pmean.com/00/nnt.html
date: 2000-01-27
categories:
- Blog post
tags:
- Measuring benefit and risk
output: html_document
---
****[StATS]:** Number Needed to Treat (created
2000-01-27).**

*Dear Professor Mean, How are patients and their doctors supposed to
decide whether a research finding has practical significance? Why don't
the medical journals make things clearer?*

> You're hoping for clarity from medical profession? These are the
> folks who take a simple ear ache and call it "otitis media." To
> them, a runny nose is "rhinorhea" and a tummy ache is
> "gastrointestinal distress." It's enough to make me produce
> lacrimal secretions.

> In fairness to these folks, though, they do realize that practical
> interpretation of the medical research is difficult. They are trying
> to change it. There are two important changes that we are starting to
> see in medical research papers. First, they have learned that **you
> can't ignore the size of the effect and focus only on the statistical
> significance**. Since confidence intervals provide information about
> both the size and significance, many journals include them instead of
> p-values.

> A second change is the realization that **absolute changes in risk are
> more important than relative changes in risk**. A nurse recently
> informed me that my snoring (oops! sleep apnea) can triple the risk of
> a stroke (excuse me, a cerebrovascular event) if left untreated. But
> how serious is that for someone who is only 42 years old and otherwise
> in good health? Three times nothing is nothing, and three times
> something very small is still very small. I decided to get treatment,
> but it was more for helping me and my wife to sleep better than a
> concern about stroke.

> A good measure of the absolute risk is the **number needed to treat
> (NNT)**. It is the average number of patients that a doctor would need
> to treat in order to have one additional event occur. A small value
> (e.g., NNT=2.7) means that a doctor will see a lot of events in very
> little time. A large value (e.g., NNT=800) means that the doctor will
> have to treat a large number of patients in order to see a very few
> events.
>
> When you are measuring **an increase in bad events like side effects
> that might be associated with a treatment**, then the number needed to
> treat is sometimes described as the **number needed to harm (NNH)**.
> Often you can quantify the tradeoffs between the benefits and side
> effects of a treatment by comparing the NNT and NNH values.

**Some examples**

> Here are some examples of Numbers Needed to Treat, found at the
> Bandolier web site (<http://www.jr2.ox.ac.uk/bandolier/index.html>).
>
> **Prevention of post-operative vomiting using Droperidol, NNT=4.4**.
> For every four or five surgery patients treated with Droperidol, you
> will see one less vomiting incident on average.
>
> **Prevention of infection from dog bites using antibiotics, NNT=16**.
> For every 16 dog bites treated with antibiotics, you would see one
> fewer infection on average.
>
> **Primary prevention of stroke using a daily low dose of aspirin for
> one year, NNT=102**. For every hundred patient years of treatment with
> aspirin, you will see one fewer stroke on average.
>
> Notice that this **last event is a rate**. Assuming that the rates are
> reasonably homogenous over time, **one hundred patient years** is
> equivalent to **following ten patients for a decade**. Be careful, of
> course, of rates that are not homogenous over time. If the rates
> decline the longer you follow your patients, then the number of events
> you will see for one hundred patients during their first year of
> therapy would be quite different from the number of events you would
> see following ten patients for their first decade of therapy.
>
> Here's another example from the British Medical Journal ([Freemantle
> 1999: 318(7200);
> 1730-1737](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10381708&dopt=Abstract)).
> **Prevention of cardiac death using beta blockers among patients with
> previous myocardial infarction, NNT=42.** For every 42 patients
> treated for two years with beta blockers, you would see one fewer
> death. This is superior to **treatment with antiplatelet agents
> (NNT=153), Statins (NNT=94), or Warfarin (NNT=63)**, but not as
> effective as **thrombolysis and aspirin for 4 weeks (NNT=24)**.

**Computational Example**

> To compute the NNT, you need to **subtract the rate in the treatment
> group from the rate in the control group and then invert it** (divide
> the difference into 1).
>
> A recently published article on the flu vaccine showed that **among
> the children who received a placebo, 17.9% later had culture confirmed
> influenza**. In the **vaccine group, the rate was only 1.3%**. This is
> a **16.6% absolute difference**. When you invert this percentage, you
> get **NNT=6**. This means that **for every six kids who get the
> vaccine, you will see one less case of flu on average**.
>
> The study also looked at the rate of side effects. In the **vaccine
> group, 1.9% developed a fever**. Only **0.8% of the controls developed
> a fever**. This is an absolute difference of 1.1%. When you invert
> this percentage, you get **NNH=90**. This means that **for every 90
> kids who get the vaccine, you will see one additional fever on
> average**.
>
> Sometimes the **ratio between NNT and NNH** can prove informative. For
> this study, **NNH/NNT=90/6=15**. This tells you that you should
> **expect to see one additional fever for every fifteen cases of flu
> prevented**.
>
> Although I am not a medical expert, the vaccine looks very promising
> because **you can prevent a lot of flu events and only have to put up
> with a few additional fevers**. In general, it takes medical judgment
> to assess the trade-offs between the benefits of a treatment and its
> side effects. The NNT and NNH calculations allow you to assess there
> trade-offs.

**What if the outcome measure is continuous?**

> To calculate the NNT or NNH, you need to have a **distinct event**.
> With a continuous variable, you could define such an event by
> **setting a cut-off**. For example, an intervention to improve
> breastfeeding rates might improve the **average duration of
> breastfeeding by seven weeks**. How would you calculate the NNT for
> this data? Well, you might declare that you are interested in the
> proportion of mothers who breastfeed for at least 12 weeks. If you had
> access to the original data, you would find that **54% of women in the
> control group and 87% in the treatment group breastfed for at least 12
> weeks**. This would allow you to compute an **NNT of 3**. For every
> three mothers given the new intervention, one additional mother would
> breastfeed beyond 12 weeks.
>
> The choice of 12 weeks is somewhat arbitrary and **you would get
> different results if you chose a different cut-off, such as 24
> weeks**. You should **choose a value that has clinical relevance** to
> your colleagues.
>
> Calculating the NNT or NNH from a continuous measure using a cutoff is
> usually impossible to do after the fact. **So if you are reading
> someone else's work and they present the data as a mean difference,
> you cannot calculate NNT or NNH.** You would need additional
> information, such as the proportions that exceed some threshold, or
> you would have to make some questionable assumptions, such as
> normality for the outcome measure.

**Summary**

> Professor Mean explains that the journals are getting better at
> presenting the practical implications of the research. In particular,
> they are presenting the number needed to treat, a measure that helps
> you better understand the practical significance of your research
> findings. **The number needed to treat is the average number of
> patients that you will have to treat with a new therapy to see one
> additional success, on average, compared to the standard therapy**.

**Further Reading**

1.  **[2-way Contingency Table
    Analysis](http://members.aol.com/johnp71/ctab2x2.html)**. John C.
    Pezzullo. Accessed on 2003-08-11.
    members.aol.com/johnp71/ctab2x2.html
2.  **Adjusting the number needed to treat: incorporating adjustments
    for the utility and timing of benefits and harms.** R Riegelman, WS
    Schroth. Medical Decision Making 1993: 13(3); 247-52.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8412555&dopt=Abstract)
3.  **Applying evidence to the individual patient.** S. E. Straus, D. L.
    Sackett. Ann Oncol 1999: 10(1); 29-32.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10076718&dopt=Abstract)
4.  **Basic statistics for clinicians: 3. Assessing the effects of
    treatment: measures of association [published erratum appears in
    Can Med Assoc J 1995 Mar 15; 152(6):813].** R. Jaeschke, G.
    Guyatt, H. Shannon, S. Walter, D. Cook, N. Heddle. Cmaj 1995:
    152(3); 351-7.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7828099&dopt=Abstract)
    [[Full
    text]](http://collection.nlc-bnc.ca/100/201/300/cdn_medical_association/cmaj/vol-152/0351.htm)
5.  **Benefit-Risk ratios in the assessment of the clinical evidence of
    a new therapy.** AR Willan, BJ O'Brien, DJ Cook. Cont Clin Trials
    1997: 18(2); 121-30.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9129856&dopt=Abstract)
6.  **Beta blockade after myocardial infarction: systematic review and
    meta regression analysis.** Nick Freemantle, J Cleland, P Young, J
    Mason, J Harrison. British Medical Journal 1999: 318(7200);
    1730-1737.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10381708&dopt=Abstract)
    [[Abstract]](http://bmj.bmjjournals.com/cgi/content/abstract/318/7200/1730)
    [[Full
    text]](http://bmj.bmjjournals.com/cgi/content/full/318/7200/1730)
    [[PDF]](http://bmj.bmjjournals.com/cgi/reprint/318/7200/1730.pdf)
7.  **[Calculating and Using
    NNTs](http://www.jr2.ox.ac.uk/bandolier/Extraforbando/NNTextra.pdf)**.
    Bandolier. Accessed on 2003-06-12.
    www.jr2.ox.ac.uk/bandolier/Extraforbando/NNTextra.pdf
8.  **Calculating confidence intervals for the number needed to treat.**
    R. Bender. Controlled Clinical Trials 2001: 22(2); 102-10.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11306148&dopt=Abstract)
9.  **Calculating the "number needed to be exposed" with adjustment
    for confounding variables in epidemiological studies.** R Bender, M
    Blettner. Journal of Clinical Epidemiology 2002: 55(5); 525-530.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12007557&dopt=Abstract)
    [[PDF]](http://wwwhomes.uni-bielefeld.de/rbender/PDF/nne_adj.pdf)
10. **Calculating the number needed to treat for trials where the
    outcome is time to an event.** D. G. Altman, P. K. Andersen. British
    Medical Journal 1999: 319(7223); 1492-5.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10582940&dopt=Abstract)
    [[Full text]](http://bmj.com/cgi/content/full/319/7223/1492)
    [[PDF]](http://bmj.com/cgi/reprint/319/7223/1492.pdf)
11. **Choice of Effect Measure for Epidemiological Data.** SD Walter.
    Journal of Clinical Epidemiology 2000: 53(9); 931-939.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11004419&dopt=Abstract)
12. **Confidence limits made easy: interval estimation using a
    substitution method.** L. E. Daly. Am J Epidemiol 1998: 147(8);
    783-90.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9554420&dopt=Abstract)
13. **Events per person per year -- a dubious concept.** J Windeler, S
    Lange. BMJ 1995: 310(6977); 454-56.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7873955&dopt=Abstract)
    [[Full text]](http://bmj.com/cgi/content/full/310/6977/454)
14. **Expressing the magnitude of adverse effects in case-control
    studies: "the number of patients needed to be treated for one
    additional patient to be harmed".** L. M. Bjerre, J. LeLorier.
    British Medical Journal 2000: 320(7233); 503-6.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10678870&dopt=Abstract)
    [[Full text]](http://bmj.com/cgi/content/full/320/7233/503)
    [[PDF]](http://bmj.com/cgi/reprint/320/7233/503.pdf)
15. **[Getting
    NNTs](http://www.jr2.ox.ac.uk/bandolier/band36/b36-2.html)**.
    Bandolier. Accessed on 2003-07-01.
    www.jr2.ox.ac.uk/bandolier/band36/b36-2.html
16. **Influence of method of reporting study results on decision of
    physicians to prescribe drugs to lower cholesterol
    concentration.** H. C. Bucher, M. Weinbacher, K. Gyr. British
    Medical Journal 1994: 309(6957); 761-4.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7950558&dopt=Abstract)
    [[Abstract]](http://bmj.com/cgi/content/abstract/309/6957/761)
    [[Full text]](http://bmj.com/cgi/content/full/309/6957/761)
17. **Interpreting the Number Needed to Treat.** Lambert A. Wu, Thomas
    E. Kottke. Journal of the American Medical Association 2002: 288(7);
    830-1.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12186595&dopt=Abstract)
18. **Missing the point (estimate)? Confidence intervals for the number
    needed to treat.** N. J. Barrowman. Cmaj 2002: 166(13); 1676-7.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12126323&dopt=Abstract)
    [[Full text]](http://www.cmaj.ca/cgi/content/full/166/13/1676)
    [[PDF]](http://www.cmaj.ca/cgi/reprint/166/13/1676.pdf)
19. **Nicotine nasal spray with nicotine patch for smoking cessation:
    randomised trial with six year follow up.** T. Blondal, L. J.
    Gudmundsson, I. Olafsdottir, G. Gustavsson, A. Westin. British
    Medical Journal 1999: 318(7179); 285-8.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9924052&dopt=Abstract)
    [[Abstract]](http://bmj.com/cgi/content/abstract/318/7179/285)
    [[Full text]](http://bmj.com/cgi/content/full/318/7179/285)
    [[PDF]](http://bmj.com/cgi/reprint/318/7179/285.pdf)
20. **Number needed to harm should be measured for treatments.** Arnold
    Zermansky. British Medical Journal 1998: 317(7164); 1014.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9765180&dopt=Abstract)
    [[Full text]](http://bmj.com/cgi/content/full/317/7164/1014)
21. **Number needed to screen: development of a statistic for disease
    screening.** C. M. Rembold. British Medical Journal 1998: 317(7154);
    307-12.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9685274&dopt=Abstract)
    [[Abstract]](http://bmj.com/cgi/content/abstract/317/7154/307)
    [[Full text]](http://bmj.com/cgi/content/full/317/7154/307)
    [[PDF]](http://bmj.com/cgi/reprint/317/7154/307.pdf)
22. **The number needed to treat: a clinically useful measure of
    treatment effect.** R. J. Cook, D. L. Sackett. British Medical
    Journal 1995: 310(6977); 452-4.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7873954&dopt=Abstract)
    [[Full text]](http://bmj.com/cgi/content/full/310/6977/452)
23. **Number needed to treat: Caveat emptor.** LA Wu, TE Kottke. Journal
    of Clinical Epidemiology 2001: 54(2); 111-116.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11166524&dopt=Abstract)
24. **Numbers needed to treat derived from meta-analysis.** Bruce G.
    Charlton. British Medical Journal 1999: 319(7218); 1199.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10541527&dopt=Abstract)
    [[Full
    text]](http://bmj.bmjjournals.com/cgi/content/full/319/7218/1199/a)
25. **Randomised controlled trial shows that glyceryl trinitrate heals
    anal fissures, higher doses are not more effective, and there is a
    high recurrence rate.** EA Carapeti, MA Kamm, PJ McDonald, SJ
    Chadwick, D Melville, RK Phillips. Gut 1999: 44(5); 727-30.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10205213&dopt=Abstract)
    [[Abstract]](http://gut.bmjjournals.com/cgi/content/abstract/44/5/727)
26. **Recombinant or urinary follicle-stimulating hormone? A
    cost-effectiveness analysis derived by particularizing the number
    needed to treat from a published meta-analysis.** B. Ola, S.
    Papaioannou, M. A. Afnan, N. Hammadieh, S. Gimba. Fertil Steril
    2001: 75(6); 1106-10.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11384634&dopt=Abstract)
27. **Unqualified success and unmitigated failure:
    number-needed-to-treat-related concepts for assessing treatment
    efficacy in the presence of treatment-induced adverse events.** M
    Schulzer, GB Mancini. International Journal of Epidemiology 1996:
    25(4); 704-12.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8921446&dopt=Abstract)
28. **Updated New Zealand cardiovascular disease risk-benefit prediction
    guide.** R. Jackson. Bmj 2000: 320(7236); 709-10.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10710588&dopt=Abstract)
    [[Full
    text]](http://bmj.bmjjournals.com/cgi/content/full/320/7236/709)
    [[PDF]](http://bmj.bmjjournals.com/cgi/reprint/320/7236/709.pdf)
29. **Using numerical results from systematic reviews in clinical
    practice.** H. J. McQuay, R. A. Moore. Ann Intern Med 1997: 126(9);
    712-20.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9139558&dopt=Abstract)
30. **When should an effective treatment be used? Derivation of the
    threshold number needed to treat and the minimum event rate for
    treatment.** J. C. Sinclair, R. J. Cook, G. H. Guyatt, S. G.
    Pauker, D. J. Cook. J Clin Epidemiol 2001: 54(3); 253-62.
    [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11223323&dopt=Abstract)

**Additional references that I need to add to my bibliography**

1.  BMJ 1999;318:1548-1551 ( 5 June )
    <http://bmj.bmjjournals.com/cgi/content/full/318/7197/1548>
2.  J Clin Epidemiol. 2002 Jan;55(1):102-3. PMID: 11781128.
3.  JAMA. 2002 Jun 5;287(21):2813-4. PMID: 12038920

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at [Category: Measuring benefit and
risk](../category/MeasuringBenefitRisk.html)
<!---More--->
risk](../category/MeasuringBenefitRisk.html)
this one at [Category: Measuring benefit and
with general help resources. You can also browse for pages similar to
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
****[StATS]:** Number Needed to Treat (created
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at [Category: Measuring benefit and
risk](../category/MeasuringBenefitRisk.html)
--->

