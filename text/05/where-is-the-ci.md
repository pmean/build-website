---
title: Where is the confidence interval?
author: Steve Simon
date: 2005-03-31
categories:
- Blog post
tags:
- Being updated
- Clinical importance
- Confidence intervals
output: html_document
page_update: partial
---

A recent letter to the editor,

- **Child Psychopharmacology, Effect Sizes, and the Big Bang.** Mathews M, Adetunji B, Mathews J, Basil B, George V, Mathews M, Budur K, Abraham S. Am J Psychiatry 2005: 162(4); 818-. 

[\[Full
text\]](http://ajp.psychiatryonline.org/cgi/content/full/162/4/818)
[\[PDF\]](http://ajp.psychiatryonline.org/cgi/reprint/162/4/818.pdf)

complains about an article claiming that a drug, citalopram, can reduce depressive symptoms

- **A randomized, placebo-controlled trial of citalopram for the treatment of major depression in children and adolescents.** Wagner KD, Robb AS, Findling RL, Jin J, Gutierrez MM, Heydorn WE. Am J Psychiatry 2004: 161(6); 1079-83.

[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15169696&dopt=Abstract)

The letter writers dispute (among other things) the claim of a statistically and clinically significant reduction. In the original paper, the authors show several results, and the one that is perhaps the most important is the proportion of patients who score 28 or less on the Children's Depression Rating Scale. By this criteria, 36% of the treated patients and 24% of the control patients showed improvement.

One way to see if the results of a study are clinically significant is to present a number needed to treat plus confidence limits. The difference in percentages is 12% and when you invert it, you get a value of NNT=8.1. This means that you have to treat 8 patients with the drug in order to see one additional improvement over placebo.

Is an NNT of 8 clinically significant? I can't answer this question because I am not a psychiatrist. I will point out that you have to balance the costs of the treatment (economic costs, the inconveniences caused by having to take the medication, and the side effects that these patients will have to endure) against the benefits.

The thing to keep in mind is that all eight patients pay the costs of the drugs to accrue benefits for a single patient. If the benefit of pushing one additional patient below 28 on the Children's Depression Scale is more than 8 times as valuable as the costs that each patient endures, then a change from 24% to 36% is worthwhile from a clinical viewpoint.

Another interesting thing to consider though is the confidence interval. The original paper presents no confidence intervals, and none are mentioned the reply to the letter.

- **Dr. Wagner and Colleagues Reply.** Wagner KD, Robb AS, Findling RL, Jin J. Am J Psychiatry 2005: 162(4); 818-a-819.

[\[Full
text\]](http://ajp.psychiatryonline.org/cgi/content/full/162/4/818-a)
[\[PDF\]](http://ajp.psychiatryonline.org/cgi/reprint/162/4/818-a)

The [CONSORT guidelines](http://www.consort-statement.org) for reporting of randomized clinical trials recommends the use of confidence intervals for presenting research results. There are [175 journals that have endorsed the CONSORT guidelines](http://www.consort-statement.org/endorsements/journals/journals.html), but not the American Journal of Psychiatry.

A crude calculation for the 95% CI gives a NNT that could be as small as 4 or as large as infinity. An infinite NNT is equivalent to no effect whatsoever.

Perhaps the authors used a more sophisticated method to determine statistical significance, but even then, I suspect that the upper limit for the confidence interval for NNT would be in the hundreds or thousands.

I shouldn't pick on these particular authors. There is a general problem with reporting confidence intervals

- **Confidence intervals rather than P values: estimation rather than hypothesis testing.** Gardner MJ, Altman DG. Br Med J (Clin Res Ed) 1986: 292(6522); 746-50.

- **The case for confidence intervals in controlled clinical trials.** Borenstein M. Controlled Clinical Trials 1994: 15(5); 411-28.

[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8001360&dopt=Abstract)

and discussing clinical importance.

- **How well is the clinical importance of study results reported? An assessment of randomized controlled trials.** Chan KB, Man-Son-Hing M, Molnar FJ, Laupacis A. Cmaj 2001: 165(9); 1197-202.

[\[Abstract\]](http://www.cmaj.ca/cgi/content/abstract/165/9/1197)
[\[Full text\]](http://www.cmaj.ca/cgi/content/full/165/9/1197)
[\[PDF\]](http://www.cmaj.ca/cgi/reprint/165/9/1197.pdf)

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/ConfidenceInterval.html
[sim2]: http://www.pmean.com/original_site.html
