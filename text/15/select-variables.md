---
title: "How do you select variables for a risk adjusted model?"
author: "Steve Simon"
source: "http://blog.pmean.com/select-variables/"
date: "2015-07-16"
categories: 
- Blog post
tags:
- Risk adjustment
output: html_document
page_update: complete
---

I was helping a colleague write a response to a reviewer who asked about a risk adjusted model. How did you select the variables for adjustment? He/she speculated that we had used some type of stepwise selection. I used to do this, but stopped doing it in favor of adjusting for any or all variables that were known or suspected to be important. There are serious problems with screening using stepwise approaches to select variables for risk adjustment. But the literature is quite complex and there is no apparent consensus on what is best. Here are some quotes from a few publications about this issue.

<!---More--->

First, several sources said that you should not adjust for intermediate variables or variables in the causal pathway.

"Confounders should not be confused with intermediate variables, which are part of the causal pathway (Figure 1b), because adjusting for an intermediate variable would attenuate the measure of association." Wakkee (2014)

"An intermediate variable is generally thought of as a post-treatment variable influenced by treatment that may or may not lie on the causal pathway between the treatment and the outcome. When the goal of CER is to estimate the total causal effect of the treatment on the outcome, adjustment for variables on the causal pathway between treatment and outcome is unnecessary and likely to induce bias2 toward a relative risk of 1.0, though the direction can sometimes be in the opposite direction." Sauer (2013)

In general, it is better to include a variable in a risk adjusted model than to exclude it, provided that you have enough data.

"When unmeasured confounding remains, strong arguments exist for error on the side of over-adjustment (adjusting for instruments and colliders) rather than failing to adjust for measured confounders (under-adjustment)." Sauer (2013)

Of course, you need a lot of data for this, sometimes.

"For multiple logistic regression and Cox proportional hazards analysis, it is recommended that for every independent variable screened for association there are at least 10 events (Harrell, 2001). In multivariable linear regression it is recommended that for every independent variable approximately 10 subjects are included (Harrell, 2001)." Wakkee (2014)

If you try to avoid this problem by a preliminary screening step or by using some type of stepwise selection of variables, you may be jumping from the frying pan into the fire.

"One option is bivariable analysis, where confounders that change the studied association by 10% or more are included in the final model (Vandenbroucke et al., 2007). Variables can also be selected based on a certain P value (e.g., \<0.05) in univariable analysis, although a disadvantage of this technique is that variables that are not important in the univariable association, and are therefore excluded, can be important in the full model. Another option is to allow the statistical program to choose the variables by forward or backward selection. In this technique the role of each independent variable is evaluated stepwise based on statistical significance. The most significant variables are added one by one, starting with an empty model (forward selection), or nonsignificant variables are removed stepwise (backward selection), starting with a full model. This can lead to unpredictable effects because the significance may depend on the order of adding or removing covariates. In addition, this technique may also lead to the exclusion of variables you might have preferred to keep in your model based on clinical reasons." Wakkee (2014)

"Variable selection procedures also suffer from the fact that estimates about treatment effects are made after having already used the data to decide on covariates." Sauer (2013)

"In practice, variable selection is dogged by the fact that the final variance estimates tend to be downwardly biased if they do not account for the selection, while the point estimates may suffer related distortions" Greenland (2008)

Greenland suggests various shrinkage approaches here, which are difficult to summarize with a few brief quotes. Also it is worth looking at some of the approaches in Sauer (2013).

References

Marlies Wakkee, Loes M Hollestein and Tamar Nijsten. "Multivariable Analysis" Journal of Investigative Dermatology (2014) 134, e20. doi:10.1038/jid.2014.132. Available in [html format][wak1].

Sander Greenland (2007) "Invited Commentary: Variable Selection versus Shrinkage in the Control of Multiple Confounders"? American Journal of Epidemiology. Volume 167, Issue 5, Pp. 523-529. Available in [html format][gre1]

Brian C. Sauer, Alan Brookhart, Jason Roy, and Tyler Vanderweele (2013) "A Review of Covariate Selection for Nonexperimental Comparative Effectiveness Research" Pharmacoepidemiol Drug Saf. 2013 Nov; 22(11): 1139--1145. doi: 10.1002/pds.3506. Available in [html format][sau1].

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/select-variables/
[sim2]: http://blog.pmean.com

[gre1]: http://aje.oxfordjournals.org/content/167/5/523.full
[sau1]: http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4190055/
[wak1]: http://www.nature.com/jid/journal/v134/n5/full/jid2014132a.html
