---
title: "Imbalanced sample sizes in the Fisher Exact test"
author: "Steve Simon"
source: new
date: "2020-01-17"
categories:
- Blog post
tags:
- Measuring benefit and risk
output: html_document
page_update: complete
---

*Dear Professor Mean, We are conducting a study in which mice receive one of four different injections (various combinations of hormones and receptor antagonists)receive a bolus injection of a hormone (or vehicle, or hormone plus receptor antagonist, or receptor antagonist alone) and then we document whether an arrhythmias has occurred. Each of these treatment groups has a different number of animals (as few as six or as many as twelve). My understanding is that you cannot use Chi square with this low of sample size and you can<U+FFFD>t use Fisher<U+FFFD>s Exact Test when the groups have unequal sample size. What statistical test do we need to see if there are differences in responses between these groups.*

<!---More--->

So you have a two by four table where the rows are arrhythmia yes or no and the columns are treatment groups. The Fisher Exact test works for two by two tables only, but there is an extension to bigger tables. For some tables, the distribution becomes computationally intensive, but it should be okay for your setting.


Not all software packages will compute the extension of the Fisher Exact test, so if you need help with this, just let me know. Some people prefer to run multiple Fisher Exact tests on every possible two by two table, or maybe every two by two comparison involving each of multiple treatment groups compared to a single control. There are reasons to prefer a single test using the extension of the Fisher Exact test, but there are enough examples out there of various alternative approaches that you are probably safe.


As far as unequal sample sizes goes, this is not an issue and never has been. Most published examples have equal sample sizes because this is convenient from a research perspective and it does maximize power (but only slightly better power over small imbalances). If you find a published citation that claims that the Fisher Exact test can only be used with equal sample sizes, let me know and I will send a letter to the author/journal setting them straight.


Here's an example of a peer reviewed publication where the Fisher Exact test was used on several tables with unequal sample sizes (see Table 3).


https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6932840/
