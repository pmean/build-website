---
title: "No power calculation for a Phase II trial"
author: "Steve Simon"
source: "http://blog.pmean.com/phase-ii/"
date: "2014-01-22"
categories: Blog post
tags:
- Sample size justification
output: html_document
page_update: complete
---

There was an discussion on the message board for the Statistical Consulting Section of the American Statistical Association started by a question about a Phase II trial. The questioner was part of an Institutional Review Board and was reviewing a proposal for a Phase II clinical trial. This particular trial had a fairly small sample size with no justification of the choice of sample size. The questioner wanted to know if this was the norm for Phase II trials. Here are some of my thoughts combined with a synthesis of other comments.

<!---More--->

A study without a justification of sample size is rare these days, and most IRBs will send a study back for revision if they do not see some sort of justification. All trials involve some level of inconvenience for the study participants. They may, in addition, be asked to undergo painful procedures as part of the research. Sometimes they may even be asked to endure an increase in risk of certain adverse events (though hopefully not a serious increase in risk).

You need to balance the inconvenience, pain, and increased risk in a study against the benefits that the study might produce for society. This principle was first established in the Nuremberg Code ("The degree of risk to be taken should never exceed that determined by the humanitarian importance of the problem to be solved by the experiment") and has been re-affirmed in all further recommendations about the ethical conduct of research.

A sample size justification is some insurance that you provide to the IRB that the study will provide reasonable benefits to society. So a sample size justification is always needed. The level of rigor needed in establishing an appropriate sample size will be dependent on the amount of inconvenience, pain, and increase risk associated with participation in this research.

A Phase II trial will typically lack the singular focus of a primary research hypothesis, unlike Phase III trials. Phase II trials are typically preparatory for the large scale Phase III trials that establish efficacy of a drug. The main goal in a Phase II trial is often to find the proper dose to use in the bigger Phase III trial. You need to balance efficacy against safety in the decision about what dose to choose for the big trial.

There are sometimes other considerations, as well. The Phase II trial might be intended to see if the new drug has promising hopes for showing efficacy, but it is not intended to demonstrate efficacy with sufficient rigor to warrant approval of the drug. In this setting, it may make sense to use a larger alpha level, perhaps as large as 0.20.

The Phase II trial might be demonstrate a reasonable safety profile or an acceptable level of tolerability by patients. You don't want to go charging off into a big Phase III trial if patients refuse to take your new drug because it tastes as bad as skunk stew.

It's probably an oversimplification to think of a Phase II trial as a pilot study, but you might find that some of the methods for justifying sample size in a pilot study would be helpful in justifying sample size in a Phase II trial. I touch on this topic briefly in a [2007 article on my website][sim3].

Since there is often not a research hypothesis, you may not be able to make a power calculation. Even if there is a research hypothesis, it may be a mistake to conduct a power calculation. The sample size might be fine for your research hypothesis, but it could still be woefully inadequate for finding an optimal dose, which you might feel is far more important for your Phase II trial.

Now you and I will often rely on power calculations to justify our proposed sample sizes, but that's not the only way you could approach this. You might consider this an estimation problem instead and make sure that items estimated in your Phase II trial are done with sufficient precision. You might, for example, be more interested in estimating the shape of the dose response curve than in proving any particular hypothesis about it. Thus, it might be the width of your confidence intervals rather than the power of your statistical tests that justifies your sample size.

You might define a criteria for optimality and run simulations under a wide range of scenarios. Then choose a sample size to insure that you have a reasonably high probability that you end up choosing the optimal dose, across all these scenarios. There will be some judgment here as to what scenarios are plausible and how high you want the probability of choosing the optimal dose to be. You might even loosen your concept of optimal and be happy if the dose that you choose in the Phase II trial is at worst only a tiny bit inferior to the optimal dose.

If you really wanted to get fancy, you might simulate both the Phase II and the Phase III trials under these scenarios and choose a sample size for the Phase II trial that gives you the greatest chance of running a successful Phase III trial. Or simulate the costs of the trials themselves and the costs of both false negative and false positive findings and then choose a sample size that minimizes your expected total costs.

All of these approaches have been used, in fact, to justify sample sizes for Phase II trials. So don't let a lack of a primary research hypothesis lull you into the belief that you can't justify your choice of a sample size. You might have to work a bit harder (well, maybe a lot harder) than running a stock power calculation, but you should make this effort.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/phase-ii/
[sim2]: http://blog.pmean.com

[sim3]: http://new.pmean.com/irb-review-pilot.html
