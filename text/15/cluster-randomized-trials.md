---
title: "The pros and cons of cluster randomized trials"
author: "Steve Simon"
source: "http://blog.pmean.com/cluster-randomized-trials/"
date: "2015-08-13"
categories: 
- Blog post
tags:
- Multilevel models
- Research design
output: html_document
page_update: complete
---

I'm helping out a researcher with sample size justification for a cluster randomized trial. I may write a bit about that soon, but in the process of double checking my formulas and calculations, I ran across several articles that discussed the pros and cons of cluster randomized trials.

<!---More--->

### Torgerson et al

Torgerson DJ, Contamination in trials: is cluster randomisation the answer? BMJ. 2001 Feb 10; 322(7282): 355--357. Available in [html format][tor1].

This article talks about one of the big reasons why you might want to run a cluster randomized trial: contamination. If you randomize within a cluster, patients in the treatment and control group are sometimes in close physical proximity. If so, it is possible that some of the patients in the control group will learn about and adopt the intervention that is being given to the treatment group. This is known as contamination, and it can often attenuate the effect of the treatment, leading to an increase in the chances of a Type II error. True enough, but you can't let the threat of contamination ruin your perspective. Since a cluster randomized trial has less precision than an individually randomized trial, it also increases the chances of a Type II error. So adopting a cluster randomized trial to avoid contamination could be a leap from the frying pan into the fire.

Another problem with cluster randomization is recruitment bias, which in this case means the tendency of patients recruited at one cluster to be different from patients recruited at another cluster. The authors fail to mention that randomization at the cluster level is supposed to prevent this, but to be fair, randomization doesn't work as well as you want it to when the number of clusters is small (say 10 to 20) as is often the norm for many cluster randomized trials.

There are some trials where it is impossible to randomize at the individual level, because the intervention at a cluster level might involve something like a redesign of the workflow at an entire clinic. In these cases, you're stuck with a cluster randomized trial whether you like it or not.

### Donner et al

Donner A, Klar N, Pitfalls of and Controversies in Cluster Randomization Trials. Am J Public Health. 2004 March; 94(3): 416--422. Available in [html format][don1].

This article talks in much more general terms about cluster randomization. The first issue is informed consent. When you randomize at the cluster level, you need to get approval from the person(s) in charge of the cluster (e.g., if the cluster is a clinic, then you need to get approval from the person in charge of the clinic). This, however, should not be considered a substitute for getting informed consent from the individuals inside the cluster. Depending on the context of the intervention, this may prove difficult or impossible. In such a case, you may need to adopt more stringent ethical safeguards. It's certainly something that you should talk about with your IRB.

The article reminds you also that you need to think about whether your intervention is targeted to the cluster or the individual. If your cluster is a community, for example, then is your goal to make the community better or the individuals who visit the community better? This is a subtle issue, but can be very important. An improvement that may make sense at the community level may not be big enough for any individual patient to care about.

The article also has a critique of matching or stratification of clusters in a cluster randomized trial. I'll be honest in that I'm not sure I share some of the concerns of the authors, but read the article and decide for yourself.

The article also talks about whether you are safe sampling some of the members of a cluster rather than collecting data on everyone in the cluster. There's a point of diminishing returns: where sampling more patients in a cluster does not really help you all that much with precision, and the authors suggest that this occurs when the number of patients sampled in an average cluster, m, is larger than 1/ICC, where ICC is the intraclass correlation. So if your ICC is 0.02 (a reasonable value for some cluster randomized trials), you get a fair amount of benefit by increasing the number of patients within a sample until about 50 or so. When planning a cluster randomized trial, you should certainly look at the tradeoffs between getting more clusters compared to getting more patients within each cluster, and you need to consider the economics here, as getting additional clusters is often quite a bit more expensive than getting more patients per cluster.

### Campbell et al

Campbell MK, Mollison J, Steen N, Grimshaw JM, Eccles M. Analysis of cluster randomized trials in primary care: a practical approach. Family Practice (2000) 17 (2): 192-196. Available in [html format][cam1].

Always be cautious about an article that talks about the state of the art for data analysis when the article is 15 years old, but this article is quite good. There are two simple and one complex solution when you are analyzing data from a cluster randomized trial.

First, if you are only concerned about inference at the cluster level, you can average across the individuals in a cluster and treat theses averages as if they were independent. This is usually safe for a cluster randomized trial, even though measurements on patients within a cluster are usually not independent. They suggest that you use a weighted test statistic if the clusters vary quite a bit in size, but I'd be a bit cautious about this.

Second, you can apply a design effect to data analyzed at the individual patient level. This has the effect of reducing any test statistic by an amount appropriate to the degree of correlation that is seen within each cluster.

Third, you can use a multi-level model (sometimes called a mixed model or random effects model). This is the complex solution, but, as is often the case, the complex solution is the best solution.

The nice thing about knowing the simple solutions is that you can often get a quick answer to get a rough idea of what you will end up seeing when you run the complex analysis.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/cluster-randomized-trials/
[sim2]: http://blog.pmean.com

[cam1]: http://fampra.oxfordjournals.org/content/17/2/192.long
[don1]: http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1448267/
[tor1]: http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1119583/
