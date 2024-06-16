---
title: Exploring interactions in a linear regression model
author: Steve Simon
date: 2002-08-01
categories:
- Blog post
tags:
- Ask Professor Mean
- Linear regression
output: html_document
page_update: partial
---

*Dear Professor Mean, I have a model with two factors. When I ran the model, it showed a significant interaction between the two factors. What do I do now?*

<!---More--->

Dear Reader,

Interactions are tricky. It depends a lot on the context of your problem. If you are looking at an intervention, then an interaction implies, perhaps, that the effectiveness of the intervention is different in different subgroups.

Ideally, you should have specified how you would handle the analysis of a significant interaction in your research protocol, but most people don't do this ahead of time.

I would look at some graphs first to try to detect the nature of the interaction. There is a PLOT button on the dialog box of the SPSS General Linear Model that is probably worth a click. I would also look at residuals to make sure that the interaction is not caused by a single outlier that pulls one cell totally out of whack.

SPSS also offers the standard contrasts, though you should read a good text on ANOVA before applying these mindlessly. Which contrast is best depends in part on whether your factor represents a nominal, ordinal, or interval variable.

You also might consider consolidating some of your levels if it makes sense in the context of your problem, and then see what happens to the interaction. Or possibly focus on just two levels that are of special interest to you.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/lin_int.html
[sim2]: http://www.pmean.com/original_site.html
