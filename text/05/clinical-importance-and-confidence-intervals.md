---
title: Confidence intervals are needed to evaluate clinical importance
author: Steve Simon
date: 2005-12-15
categories:
- Blog post
tags:
- Clinical importance
output: html_document
page_update: partial
---

Back in March, I sent a letter to the American Journal of Psychiatry complaining about their failure to include confidence intervals in their published reports. The journal decided not to publish this letter, but since it discusses an important general issue, I thought I would place the submitted letter here.

For publication in the letters to the editor.

A recent letter to the editor (1) highlights a problem with the peer review policy of the American Journal of Psychiatry. The article disputed the claims of a paper (2) that "citalopram produces statistically and clinically significant reduction in depressive symptoms."

The only effective way to assess clinical significance is through the use of confidence intervals, but there is not a single confidence interval to be found anywhere in the disputed publication. This is a serious omission that should have been caught during peer review.

The research community has long ago endorsed the use of confidence intervals rather than p-values (Gardner et al 1986), and these recommendations are included in the definitive guidance for reporting of clinical trials, the CONSORT statement (www.consort-statement.org). 175 medical journals have endorsed the CONSORT guidelines, but not the American Journal of Psychiatry. If your reviewers had used the checklist provided by CONSORT, they would have requested the presentation of the original study data using confidence intervals rather than p-values and would have provided your readers the necessary information to evaluate clinical significance.

Stephen D. Simon, Ph.D.

References:

1. Mathews M, Adetunji B, Mathews J, Basil B, George V, Mathews M, Budur K, Abraham S. Child Psychopharmacology, Effect Sizes, and the Big Bang. Am J Psychiatry 2005: 162(4); 818.

2. Wagner KD, Robb AS, Findling RL, Jin J, Gutierrez MM, Heydorn WE. A randomized, placebo-controlled trial of citalopram for the treatment of major depression in children and adolescents. Am J Psychiatry 2004: 161(6); 1079-83.

3. Gardner MJ, Altman DG. Confidence intervals rather than P values: estimation rather than hypothesis testing. Br Med J (Clin Res Ed) 1986: 292(6522); 746-50.

The reliance on p-values instead of confidence intervals is a problem in many medical journals. I submitted a similar letter to BMJ back in 1999, which they also did not publish, though it did appear in their eletters section. You can read my submission to BMJ [here][sim3].

Here is the text of that letter:

Two very similar studies published back to back in the May 1, 1999 issue of the British Medical Journal offer an interesting contrast in interpretability. Both studies examine an adverse event that might be associated with vaccination: type 1 diabetes with Haemophilus influenzae type B vaccine (1) and wheezing illnesses with pertussis vaccine (2). Both studies use a cohort design. Both studies summarize the association using risk ratios. Both studies even include identical risk ratios, 1.06, among the risk ratios studied. But one study uses p-values to summarize statistical significance and the other uses confidence intervals. The study using confidence interval is easier to interpret because you can assess the practical significance of the findings.

You assess practical significance by examining whether the results of a study, even after allowing for sampling error, fail to exceed a threshold of clinical relevance. The threshold is a change of sufficient size to convince you to change your practice.

Confidence intervals are valuable for studies that achieve statistical significance. With large sample sizes, it is possible to achieve statistical significance, even though the results of the study lie well within a range of clinical indifference.

Confidence intervals are even more valuable for studies that fail to demonstrate statistical significance. If the confidence interval is sufficiently narrow, then absence of a statistically significant effect also implies absence of a clinically relevant effect. The narrow interval assures you that this finding could not be caused by an inadequate sample size.

In the pertussis vaccination article, it is easy to judge practical significance because the authors present the statistical summary using confidence intervals. For example, the relative risk for intermittent wheezing is 1.06 and the 95% confidence interval is 0.81 to 1.37. This interval clearly excludes the possibility that vaccination is associated with a large relative change in either direction.

As a statistician, I am in a poor position to judge how large a risk would have to be in order to achieve clinical relevance. Such a decision would require medical judgement about the frequency and severity of the adverse event, the cost of treating the adverse event, and would have to balance this against the benefits of vaccination. The decision should examine both relative and absolute changes in risk. But suppose an expert decided in this situation that a change in clinical practice should only happen for a relative risk smaller than 0.67 or larger than 1.5. With this guidance, you have evidence that no change in practice is warranted, because the confidence interval in the pertussis vaccination article lies entirely inside a range of clinical indifference.

In the H. influenzae type B vaccination article, it is much harder to judge practical significance because the authors use p-values. The relative risk of type 1 diabetes comparing children first vaccinated at 3 months (cohort 2) to children first vaccinated at 24 months (cohort 3) is also 1.06, but the authors only tell us that the p-value is 0.545. This p- value does not inform us how large the relative risk might plausibly be.

It only takes a little effort to calculate a confidence interval for this risk ratio and presenting this information adds very little to the length of the article. Using SPSS version 8 software (SPSS Inc. Chicago IL), I found the 95% confidence interval to be 0.88 to 1.27. The authors were fortunate that lack of statistical significance also happened to coincide with lack of practical significance. This is not always the case.

Suppose that the adverse event studied was more common, so that we saw 4,700 events in cohort 2 and 4,280 events in cohort 3 and that the sizes of the two cohorts remained the same (59,238 and 57,114 respectively). You have the same relative risk, but now this value is statistically significant (p=0.0049).

A confidence interval, however, informs us about the lack of practical significance of this finding. The narrow interval (1.02 to 1.10) would allow us to rule out the possibility of anything except a very small increase in relative risk.

Consider another scenario: a very rare adverse event. If there were 12 events in cohort 2 and 11 in cohort 3, and the sample sizes remained the same, you would see a relative risk of 1.05. The p-value would be non- significant (p=0.90). Yet you could take little comfort from this finding.

In this case, the confidence interval is extremely wide, 0.46 to 2.4. The data is consistent with a finding of no effect, but it is also consistent with a finding that one cohort has half the risk of the other. It is even consistent with a finding that the cohort has twice the risk.

These are extreme and artificial examples, but they illustrate an important point: you can't judge clinical relevance by looking at the p- value. The study with a small p-value gives you more evidence of no practical effect than the study with a large p-value.

It is unfortunate that the authors and reviewers and editors involved with the H. influenzae type B vaccination article have failed to heed advice about confidence intervals that is well known, especially to readers of this journal. The BMJ web pages link to a current article stressing the importance of confidence intervals (3) in its collection of articles about randomized control trials. The conclusions of this article apply equally well to cohort studies. This idea is not new either, having been discussed in BMJ thirteen years earlier (4).

In summary, two articles examine the association between an adverse event and vaccination and present relative risks of 1.06. Both papers claim lack of statistical significance, but only in the paper that uses confidence intervals can you also assess the practical significance of these findings.

Steve Simon, Research Biostatistician Children's Mercy Hospital, Kansas City MO, USA

Competing interests: none declared.

(1) Karvonen M, Cepaitis Z, Tuomilehto J. Association between type 1 diabetes and Haemophilus influenzae type b vaccination: birth cohort study. BMJ 1999; 318: 1169-1172.

(2) Henderson J, North K, Griffiths M, Harvey I, Golding J. Pertussis vaccination and wheezing illnesses in young children: prospective cohort study. BMJ 1999; 318: 1173-1176.

(3) Tarnow-Mordi WO, Healy MJR. Distinguishing between "no evidence of effect" and "evidence of no effect" in randomised controlled trials and other comparisons. Arch. Dis. Child. 1999; 80: 210-211.

(4) Confidence intervals rather than P values: estimation rather than hypothesis testing Martin J Gardner and Douglas G Altman BMJ 1986; 292: 746-750.

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/ClinicalImportanceA.html
[sim2]: http://www.pmean.com/original_site.html
[sim3]: https://www.bmj.com/content/318/7192/1169/rapid-responses
