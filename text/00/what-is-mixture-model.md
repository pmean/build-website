---
title: Mixture models
source: http://www.pmean.com/00/mixture.html
author: Steve Simon
date: 2000-01-27
categories:
- Blog post
tags:
- Ask Professor Mean
- Unusual data
output: html_document
page_update: partial
---
*Dear Professor Mean, I have read a journal article where the authors used a mixture model . What is this?*

There are two interpretations for mixture models that I am aware of.

A mixture model is a model where **some or all of the independent variables are measured not in specific units like weight or length, but as a fraction or percentage of a total**. A lot of research involves blending several ingredients together. Some people make a martini, for example, as three parts gin and one part vermouth and others use a different mix like four parts gin and one part vermouth.

The challenge in a mixture experiment is **to recognize and handle the inherent restriction that the sum of the mixture components is always 100%**. So if you are mixing three items, once you specify the percentages for the first two items, the percentage for the third item is known.

**Diet studies** can offer a good example of mixture models. We want to compare health outcomes of people on the basis of the **percentage of calories that these people get from fat, carbohydrates, and protein**. Certain diets try to increase or decrease the relative percentages of some of these three components.

A quite different type of mixture model is **when you know that your data are a mixture of apples and oranges, but you don't know which are the apples and which are the oranges**. You might, for example, see a bimodal distribution on a histogram that looks suspiciously like peaks from two separate normal populations. The mixture model is a way of identifying the two separate distributions without knowing which data values comprise the first peak and which data values comprise the second peak.

**Genetics studies** offer a good example of this type of mixture model. Certain **genetic experiments involving quantitative traits** like metabolism lead to **data with a bimodal population**, but we **can't look at the individual genes** and identify which animals are genetically slow metabolizers and which ones are genetically fast metabolizers. We can use the distribution of metabolic rates, however, to identify the mean and standard deviations for the population of genetically slow metabolizers and genetically fast metabolizers.

**Both types of mixture models require specialized software**. You shouldn't embark on a serious mixture model analysis without a face-to-face consultation with a professional statistician.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/mixture.html
[sim2]: http://www.pmean.com/original_site.html
