---
title: Conditional Frailty Models
author: Steve Simon
date: 2011-10-11
categories:
- Blog post
tags:
- Being updated
output: html_document
page_update: complete
---

One of the people I am working with is interested in using gap time analysis with a conditional frailty model. I was impressed with this request and asked her to send any relevant references that she had.
<!---More--->

She gave me a pointer to the following PDF file:

Box-Steffensmeier J. Repeated events survival models: the conditional frailty model. Accessed on 2011-10-11. [Abstract] Repeated events processes are ubiquitous across a great range of important health, medical, and public policy applications, but models for these processes have serious limitations. Alternative estimators often produce different inferences concerning treatment effects due to bias and inefficiency. We recommend a robust strategy for the estimation of effects in medical treatments, social conditions, individual behaviors, and public policy programs in repeated events survival models under three common conditions: heterogeneity across individuals, dependence across the number of events, and both heterogeneity and event dependence. We develop a new model for repeated events processes that accurately accounts for the various conditions of heterogeneity and event dependence by using a frailty term, stratification, and gap time formulation of the risk set. We examine the performance of these models and others that are commonly used in applied work using Monte Carlo simulations, and apply the findings to data on chronic granulomatous disease and cystic fibrosis. Key Words: repeated events survival models, heterogeneity, event dependence, frailty.http://polisci.osu.edu/faculty/jbox/papers/repeatedevents.pdf

Probing around a bit, I found out that this was a presentation on May 10, 2005 at the Program in Statistics & Methodology, Department of Political Science, The Ohio State University. Details about this talk and other talks in the series are [here][osu1].

The particular application being used in this seminar involved factors associated with the onset of civil war inlcuding a [paper][osu2] discussing this particular application, and a [data appendix][osu3].

The both papers cites a very good book on survival analysis:

Modeling Survival Data. Extending the Cox Model. Therneau TM, Grambsch PM (2000) New York NY: Springer-Verlag. ISBN: 0387987843.

When I get more time, I want to document some of the features of the frailty model. It is very useful for modeling events that can occur repeatedly, like infection and re-hospitalization.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/06/FrailtyModel.html
[sim2]: http://www.pmean.com/original_site.html 

[osu1]: http://psweb.sbs.ohio-state.edu/prism/sseries.htm
[osu2]: http://psweb.sbs.ohio-state.edu/prism/civil_peace_m16.pdf
[osu3]: http://psweb.sbs.ohio-state.edu/prism/Data_Appendix_1.pdf
