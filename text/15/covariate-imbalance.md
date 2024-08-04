---
title: "Forget confounding, and think of things in terms of covariate imbalance"
author: "Steve Simon"
source: "http://blog.pmean.com/covariate-imbalance/"
date: "2015-03-04"
categories:
- Blog post
tags:
- Risk adjustment
output: html_document
page_update: complete
---

Someone noted in a passing comment in their email that they found the term "confounding" to be difficult and confusing. I've been doing this stuff for over thirty years, but to be quite honest, I get a little nervous about this as well. But I took the time to explain a simpler concept, "covariate imbalance."

<!---More--->

A covariate is a variable that is not of direct interest in your study, but one that you need to account for because it might potentially influence your outcome variable. If a covariate is imbalanced between the treatment and control group, then there is potential for bias and you need to look at an adjusted model (sometimes called risk adjustment).

For example, I was looking at a study of soldiers who were part of the artillery. They would fire these big guns and it would shoot forward a large projectile. But at the same time, the big guns would send a puff of smoke backwards. This smoke has a fair amount of lead in it. The scientist wanted to know if the lead exposure caused problems with the soldiers' sperm counts.

This was a study that you could not randomize because (among other things) if you randomly assigned half of a group of soldiers who had never fired artillery before to go out and fire the big guns for an afternoon, their lack of training would probably cause them to kill themselves.

So you had to take a cohort of soldiers with artillery experience and compare them to a cohort of solders with a totally different and lead free experience.

So that's what this scientist did and when he collected the data he noticed an imbalance in a key covariate: smoking.

Anyone who works around artillery is strongly discouraged from smoking anywhere near the ammunition. Maybe they could smoke while off duty, but it turns out that smokers were almost non-existent in the artillery cohort. In the controls, smoking was not very high but certainly a lot higher than in the artillery group.

Does smoking influence sperm counts? The data is mixed on this, but we decided that we had to adjust for smoking in any comparison of artillery soldiers versus the controls.

So that's an example of covariate imbalance. I'm sure your application doesn't require your subjects to fire Howitzers, but I hope you can still draw a rough analogy to your work.

Now covariate imbalance is not quite the same thing as confounding, but the distinction between the two is often not that important.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/covariate-imbalance/
[sim2]: http://blog.pmean.com
