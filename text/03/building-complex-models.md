---
title: Building a complex model
author: Steve Simon
source: http://www.pmean.com/03/complex.html
date: 2003-04-23
categories:
- Blog post
tags:
- Linear regression 
output: html_document
page_update: complete
---

When you have a lot of variables that might possibly influence your outcome, your desire is to find some automated procedure that will select your model for you. Using an automated approach is a mistake, because you need to use your own medical and scientific intuition to build the model.

You should always start by looking at each variable individually and see if it is related to your outcome. A graph is an excellent way to do this. Graphs will help you get a feel for what variables are related to your outcome, how strongly they are related and if any of the relationships are nonlinear. For example, does your outcome increase rapidly at first and then tend to level off, maybe even decreasing at the high end? This is an example of nonlinearity.

Now you need to bring your medical and scientific background to bear. You know enough to make some educated guesses about these variables. Note carefully when the graphs are consistent with your intuition and when they are inconsistent. When the graphs are inconsistent with your general medical and scientific understanding, think a lot about the situation and see what you can learn.

After you understand how each of the variables is individually related to your outcome, then develop some models that look at 2 or 3 of these factors combined. Use your knowledge again to make educated guesses about how variables might interact.

Always check the more complex models against your intuition and against the simpler models. Are the models with two or more variables behaving the way you would expect based on the single variable models? Are they behaving in a way consistent with your intuition? When you encounter surprises, think hard about the situation and see what you can learn.

Don't rely on stepwise regression or other automated procedures. Stepwise regression fails to incorporate what you already understand even if only imperfectly) from a medical and scientific perspective and has been shown to often develop inferior models.

You can find an [earlier version](http://www.pmean.com/03/complex.html) of this page on my [original website](http://www.pmean.com/original_site.html).
