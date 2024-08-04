---
title: "How detailed should I make my data analysis plan."
author: "Steve Simon"
source: "http://blog.pmean.com/pmean-analysis-plan/"
date: "2016-02-03"
categories: Blog post
tags:
- Research design
output: html_document
page_update: complete
---
Dear Professor Mean, I could use some advice on defining and following analysis plans for research proposals. I can see how in well-trodden research, where the nuances of the data are well understood, and reasonable distributional assumptions are already identified, a detailed analysis plan may be straightforward to develop. But what about cases where you collect observational data, and though you may have specific hypotheses in mind prior to collecting it, you can't really pin down the most appropriate analysis until after you've done some exploration? Is there generally an acceptable amount of leeway in cases like these, where your analysis doesn't follow the original plan to the dot, but it's still designed to address the same question? Or must one be as specific and detailed in the plan as possible, and consider every contingency (e.g., if the distribution is noisy, switch to this non-parametric test)? Or does it really vary with whoever the reviewer is?

<!---More--->

Dear Reader,

The detail that you provide depends a lot on where you work. There is an effort to hold researchers accountable to pre-specifying important information about their research through clinical trials registries. In particular, these registries ask for which outcome variables are primary and which are secondary.

When I write a data analysis plan, I tend to provide as few details as possible so I don't paint myself into a corner. Often, many groups that review the research protocol only want to see that you have a reasonably competent plan to handle the research and will look at global details, such as whether you plan to account for cluster effects and they don't really care if you do this using Generalized Estimating Equations versus Random Coefficient models.

It's always smart to have a fallback option in case things don't go right, as Robert Elston mentions, but in reality it is impossible to anticipate all the things that might go wrong. If this happens, you do the right thing not the planned thing, and identify it as a protocol deviation in your publication. Protocol deviations weaken the strength of the evidence, and failure to mention them could be construed as fraud. But protocol deviations are not as much of a problem as some people make them out to be. Always remember the Stephen Senn quote about this:

"Medical statistician: one who will not accept that Columbus discovered America ... because he said he was looking for India in the trial plan."

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/pmean-analysis-plan/
[sim2]: http://blog.pmean.com
