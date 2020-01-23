---
title: Are we assuming a normal sample or a normal population?
author: Steve Simon
source: http://www.pmean.com/07/NormalSample.html
date: 2007-08-30
category: Blog post
tags: Modeling issues
output: html_document
---
**[StATS]:** **Are we assuming a normal sample or a
normal population? (created 2007-08-30)**

> *Dear Professor Mean, I\'m fitting an ANOVA model to a sample of 25
> observations, and the data is quite skewed. I\'m quite worried about
> this, but my husband reassures me that this is not a problem. He says
> that the assumption is that the population is normal, not the sample.
> Should I listen to him?*
>
> As a husband myself, my every fiber wants to scream out YES, ALWAYS
> LISTEN TO THE HUSBAND!! THE HUSBAND IS ALWAYS RIGHT!! But
> unfortunately, I can\'t say this.
>
> Your husband is technically, correct. The ANOVA model does indeed
> assume that the population of residuals is normally distributed. There
> is a possibility that the sample of residuals could indeed be skewed,
> but still could come from a symmetric population. But how likely is
> this? You can get a rough feel for this by taking repeated samples of
> 25 normally distributed random variables and drawing a histogram. I
> did this below.
>
> ![](images/Normal1.gif){width="393" height="373"}
>
> Notice a slightly skewed pattern once in a while (such as in the lower
> right corner). But in general, the sample of 25 does not appear to
> have marked departures from symmetry. There are other things that you
> see from time to time like a bimodal pattern. If you\'ve done enough
> data analysis, you get used to seeing a few minor departures from
> normality and these sorts of things don\'t really faze you. What is
> lacking in these graphs is a marked departure from normality.
>
> If your sample of 25 residuals shows a dramatic degree of skewness,
> that\'s a fairly good indicator that the underlying population of
> residuals is not normal.
>
> Perhaps I can avoid problems with the HCDNWS (Husbands Can Do No Wrong
> Society) by pointing out that the assumption of normality is not
> terribly critical in most settings. This is because of the [Central
> Limit Theorem](../ask/clt.asp), which comforts us by reminding us that
> even non-normal populations can produce reasonably normal looking
> averages if the sample size is large enough. And it is the
> distribution of the averages that influences the validity of ANOVA.
> How large is large enough? There is no answer that works in all
> situations. It depends a lot on how extremely different the population
> distribution for individual items departs from normality.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Modeling
issues](../category/ModelingIssues.html).
<!---More--->
issues](../category/ModelingIssues.html).
for pages similar to this one at [Category: Modeling
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Are we assuming a normal sample or a
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Modeling
issues](../category/ModelingIssues.html).
--->

