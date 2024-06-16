---
title: Jargon in Statistics
source: http://www.pmean.com/00/jargon.html
author: Steve Simon
date: 2000-01-27
categories:
- Blog post
tags:
- Ask Professor Mean
- Critical appraisal
output: html_document
page_update: partial
---

*Dear Professor Mean, I have to review a paper for journal club and I don't understand all the obscure statistical jargon that the authors use.*

<!---More--->

I have a fictional story that I tell people. It's about someone who comes to my office and says he has trouble understanding a recently published paper. I look at the title "In vitro and in vivo assessment of Endothelin as a biomarker of iatrogenically induced alveolar hypoxia in neonates" and say that I understand why you would have trouble with a paper like this. Yeah, he says in return, I don't understand what this boxplot is.

Don't be intimidated by technical terms. **You should focus not on how the data was analyzed, but on how the data was collected**. The four big issues in data collection are

+ randomization,
+ blinding,
+ exclusions/dropouts, and
+ protocol deviations.

You don't need a Ph.D. in Statistics to assess these issues.

**Interpreting the statistical jargon**

**Some of the statistical details are there only for the benefit of those who want to reproduce the research**. Most of you recognize that you can safely skim over phrases like "reverse ion phase chromatography" so you likewise skim over phrases like "bootstrap confidence intervals using bias corrected percentiles (Efron 1982)."

When a statistical method is followed by a reference as in the example above, then you can take some solace in the fact that the authors do not expect you to be familiar with this method.

**If a statistical term has several words, focus first on the one word in the term you are most familiar with**. You may not know what "reverse ion phase chromatography" is, but you probably have a good general idea about "chromatography." Similarly, with the phrase "bootstrap confidence intervals using bias corrected percentiles" focus on the term "confidence intervals."

You do have to know some statistical terminology, of course. Anyone reading research papers should be familiar with Type I and II errors, odds ratios, survival curves, etc. **A basic appreciation of simple statistical methods is enough for nine out of ten papers**.

I don't want to discourage people from learning more about Statistics, of course, but neither do I want people to be intimidated by statistical jargon. I have thought that a fun prank would be to go to a poster session at a medical conference, look over each poster carefully and then say something like "Very interesting, but aren't you worried that your results would be invalidated by the presence of heteroscedascity?" And then I would slowly walk away.

**But why are there so many different statistical terms?**

Why there are so many different statistics to choose from is sort of like asking why are there so many tools in a carpenter's shop. **Different data sets require different approaches to understanding them.** There isn't one single statistic that will magically work to explain every possible trend or pattern that you might see in a data set.

Even so, I have to admit that we statisticians sometimes are a **bit too clever for our own good**. We invent all sorts of new statistics, and it is unclear if all of these are truly necessary. In linear regression, for example, we statisticians have developed alternative methods with names like least absolute values regression, the Brown-Mood estimator, the Tukey resistant line, repeated median regression, and least median of squares regression, just to name a few. I myself added some regression estimators to this list as part of my Ph.D. dissertation. Most of the methods mentioned above protect against the undue influence of outliers. But do we really need all of these estimators?

John Tukey coined a phrase **"practical power"** which is **the true power of a test multiplied by the probability that it will be used**. Although it was developed for a different context, I think it might also apply to our tendency to develop more statistical estimates than we can practically use.

**Example**

Let's look at a publication with some statistical jargon.

+ [Buchdahl R, Parker A, Stebbings T, Babiker A.][buc1] Association between air pollution and acute childhood wheezy episodes: prospective observational study. BMJ 1996 Mar 16; 312(7032): 661-5.

[buc1]: http://www.bmj.com/cgi/content/full/312/7032/661

This publication uses the following terms:

+ Locally weighted regression scatterplot smoothing averages
+ Spearman's rank correlation coefficients
+ Poisson regression models
+ Normal models with log-link functions
+ Adjustment for autocorrelation
+ Restricted natural cubic spline function

It sounds pretty bad, doesn't it? Before we tackle these terms, let's read the abstract to get a general overview of the paper.

OBJECTIVE--To examine the association between the air pollutants ozone, sulphur dioxide, and nitrogen dioxide and the incidence of acute childhood wheezy episodes. DESIGN--Prospective observational study over one year. SETTING--District general hospital. SUBJECTS--1025 children attending the accident and emergency department with acute wheezy episodes; 4285 children with other conditions as the control group. MAIN OUTCOME MEASURES--Daily incidence of acute wheezy episodes. RESULTS--After seasonal adjustment, day to day variations in daily average concentrations of ozone and sulphur dioxide were found to have significant associations with the incidence of acute wheezy episodes. The strongest association was with ozone, for which a non-linear U shaped relation was seen. In terms of the incidence rate ratio (1 at a mean 24 hour ozone concentration of 40 microg/m3 (SD=19.1)), children were more likely to attend when the concentration was two standard deviations below the mean (incidence rate ratio=3.01; 95% confidence interval 2.17 to 4.18) or two standard deviations above the mean (1.34; 1.09 to 1.66). Sulphur dioxide had a weaker log-linear relation with incidence (1.12; 1.05 to 1.19 for each standard deviation (14.1) increase in sulphur dioxide concentration). Further adjustment for temperature and wind speed did not significantly alter these associations. CONCLUSIONS--Independent of season, temperature, and wind speed, fluctuations in concentrations of atmospheric ozone and sulphur dioxide are strongly associated with patterns of attendance at accident and emergency departments for acute childhood wheezy episodes. A critical ozone concentration seems to exist in the atmosphere above or below which children are more likely to develop symptoms.

Part of the complexity of this paper is due to the non-linear relationship between ozone and acute wheezy episodes. Here is what appears in the Statistical Methods section.

Data were analysed with the STATA statistical software package.17

**This detail is only for someone who wants to recreate or replicate these findings**. It also has a reference attached, which means that the average reader is not expected to be familiar with this software.

Scatterplots, locally weighted regression scatterplot smoothing averages,18 and Spearman's rank correlation coefficients were initially used to examine possible associations between daily (case and control) incidence and each of the pollutants (ozone, sulphur dioxide, and nitrogen dioxide) and weather variables.

Locally weighted regression is our first technical term, and it also has a reference behind it. The details aren't too critical, because this was used only as an initial screen. The *Dictionary of Statistics in the Medical Sciences* has a paragraph explaining this approach. A key part of their description states that this method is used "for identifying possible non-linear relationships".

You should also notice a reference to "Spearman's rank correlation coefficients" in this sentence. There is no reference here, so the presumption is that the average reader is already familiar with this term. The *Dictionary of Statistics* is not too helpful here, as it just discusses the details of computing Spearman's correlation. But just about any introductory book on Statistics will have a description of this method. I found it in Norman and Streiner (1994), Polit (1996), and Rosner (1990). Each of these references emphasized the use of this correlation for non-normal and/or ordinal data. As we will see in just a minute, non-normality is a serious concern.

If you didn't have the time or inclination to look up details on the Spearman correlation, you should still not be intimidated. The phrase "Spearman's rank" is just a modifier for a term "correlation coefficient" that you are probably already familiar with. A correlation coefficient is: a measure of the strength of the relationship between two variables.

Poisson regression models were then used to explore formally the effect of each pollutant on daily incidence.19 These models assume that the daily incidence followed a Poisson distribution with mean (daily incidence rate) log-linear in the predictor variables, with initially season as a four level factor (spring, 22 March to 21 June; summer, 22 June to 21 September; autumn, 22 September to 21 December; and winter, 22 December to 21 March). The analysis was repeated, with the addition of temperature and then temperature and wind speed, and then in the case of ozone the weather variables plus the other two pollutants. The weather factors have previously been shown to affect incidence of asthma within seasons.10 11

We used the Poisson distribution because the distribution of the daily incidence was highly skewed.

The *Dictionary of Statistics* discusses the Poisson distribution, but not Poisson regression. But we learn that the Poisson distribution is useful for the "number of occurences of some random event." The outcome measure in this study, "acute childhood wheezy episodes" fits this definition well.

Finding a good description of Poisson regression models is difficult, but it helps to focus on the part of this phrase that you are most familiar with, "regression." The *Dictionary of Statistics* tells you that regression analysis examines a "relationship between a response variable and one or more explanatory variables." In the context of this paper, you can see that the response variable is acute childhood wheezy episodes and the explanatory variables are pollutant and weather variables. If you look up the term "log-linear" you will find additional information that corroborates the emphasis on count data.

Normal models but with log-link functions, however, gave qualitatively similar results, as did adjustment for autocorrelation by incorporating the previous day's incidence in the model.

Don't worry about these terms. They are an alternative to the previously proposed methods that gave similar results. If you do bother to look up the term "autocorrelation" you will get information that will help you understand the term "lag effect" used later on.

For each variable v, a restricted natural cubic spline function with knots at the 10th, 50th, and 90th centiles was used in the Poisson model to test formally for non-linearity in the relation between v and the daily incidence.20

You're not expected to know this term since it has a footnote. The *Dictionary of Statistics* tells you that splines are used for "interpolation and some forms of regression analysis."

This amounted to adding a completely specified piecewise cubic function S(v) to the variable v in the model (see appendix). The test for non-linearity is equivalent to testing the significance of S(v).

Don't worry about anything that belongs in a appendix.

The possibility of a lag effect of each of the pollutants was also explored by comparing rank correlation coefficients of daily incidence with each variable lagged by 1, 2, 3, 4, 5, 6, or 7 days and by comparing the resulting deviances obtained when each of the lagged variables was fitted separately in a Poisson model.

The lag effect is what it sounds like. Today's hospitalization might be caused by ozone from one to seven days earlier.

All P values quoted are for two tailed tests, and results are significant if P<0.05.

After handling all these technical terms, it's a relief to come across familiar terms like "P value" and "two tailed tests".

Let's summarize the statistical analysis.

+ The researchers are trying to predict a count variable, which is why they need to use Poisson regression.
+ The data are skewed, so the preliminary screen uses a correlation    coefficient, Spearman, that can handle non-normality.
+ There is some evidence of non-linearity, which is why the authors used smoothing and splines.
+ Autocorrelations and lag effects help determine if a current hospitlaization is related to pollution over the past one to seven days.

**Summary**

While statistical jargon may seem intimidating, it is no worse than the medical terminology you have already learned.

+ Focus on how the data was collected rather than how it was analyzed.
+ Realize that some of the statistical details are only of interest to those who want to replicate the research.
+ If a statistical term has several words, focus on the word you are most familiar with.

**Further reading**

+ Norman GR, Streiner DL. Biostatistics. The Bare Essentials. St. Louis MO: Mosby-Year Book, Inc. (1994) ISBN: 1-55664-369-1.

+ Polit DF. Data Analysis and Statistics for Nursing Research. Stamford CT: Appleton & Lange (1996) ISBN: 0-8385-6329-5.

+ Rosner B. Fundamentals of Biostatistics, Third Edition. Belmont CA: Duxbury Press (1990) ISBN: 0-534-91973-1.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/jargon.html
[sim2]: http://www.pmean.com/original_site.html
