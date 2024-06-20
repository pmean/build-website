---
title: "Advice for a beginner Bayesian"
source: new
date: "2020-11-20"
categories:
- Blog post
tags:
- Bayesian statistics
output: html_document
page_update: complete
---

I was asked for some advice about how to get started with Bayesian data analysis. This person had taken a course on this topic, but did not know how to use he learned on a practical problem. Here's some advice that I offered.

<!---more--->

I had a terrible time when I first started with Bayesian analysis. I couldn't get ANYTHING to run. But I found a simple beta-binomial example and got that to run. It made all the difference for me. So when I switch to something new (I started with WinBUGS and moved to OpenBUGS, then JAGS and now Stan) I always do a beta-binomial first.

Definitely buy ["Doing Bayesian Data Analysis: A Tutorial with R, JAGS, and Stan" by  John Kruschke](https://sites.google.com/site/doingbayesiandataanalysis/). He gives lots of great examples and he doesn't swamp you with a bunch of theory.

Then I would look at some of the examples that come with Stan and see if you can get them to run. The Stan examples were originally developed for BUGS, but I (and people a lot smarter than me) have switched to Stan. The code is a lot cleaner and (to me anyway) that is the most important thing for a beginner.

Stan can run from either Python or R, and either choice works well. Choose whatever you are most comfortable with.

I have not had a chance to try this, but there is another closely related package, rstanarm. This package automates many common Bayesian regression models. I suspect that you will love rstanarm.

If I had to identify two areas where Bayesian analysis shines, it would be in hierarchical models and imputation of missing values. You should focus your efforts on these areas once you master the simpler models.
