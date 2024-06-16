---
title: SPSS dialog boxes for linear regression models
author: Steve Simon
date: 2002-06-21
categories:
- Blog post
tags:
- Linear regression
output: html_document
page_update: partial
---

This handout will show the SPSS dialog boxes that I used to create linar regression examples. I will capitalize variable names, field names and menu picks for clarity.

**Fit a general linear model**

Select ANALYZE | GENERAL LINEAR MODEL from the menu. For most simple models, you would then select UNIVARIATE from the menu. Select MULTIVARIATE if you wanted to examine the simultaneous effect of more than one dependent variable. Select REPEATED MEASURES if you have multiple measurements per subject with each measurement in its own column. Select VARIANCE COMPONENTS from the menu if you want to estimate multiple sources of variation (e.g., between and within subjects).

When we select UNIVARIATE, we get the following dialog box.

![Figure 1. Dialog box for glm](http://www.pmean.com/new-images/02/lin_spss01.gif)

Insert your outcome variable in the DEPENDENT VARIABLE field. If you are examining how a categorical variable influences your outcome, insert that categorical variable in the FIXED FACTOR(S) field. If you are examining how a continuous varaibles influences your outcome, insert that continuous variable in the COVARIATES(S) field.

Some of the tables discussed in this presentation require you to select additional options. Click on the OPTIONS button to get the following dialog box.

![Figure 2. Dialog box for glm options](http://www.pmean.com/new-images/02/lin_spss02.gif)

Add your categorical variable to the DISPLAY MEANS FOR field and check the DESCRPTIVE STATISTICS and PARAMETER ESTIMATES options.

**Compute residuals.**

Residuals are useful for examining the assumptions of your general linear model. Select ANALYZE | GENERAL LINEAR MODEL | GLM - GENERAL FACTORIAL from the SPSS menu. After you have defined your model, click on the SAVE button. You will see the following dialog box:

![Figure 3. Dialog box for saving variables](http://www.pmean.com/new-images/02/lin_spss03.gif)

Check any or all of the option boxes for information that you want stored in your data set. The UNSTANDARDIZED RESIDUALS have the simplest definition, but some of the other types of residuals, especially the STUDENTIZED RESIDUALS and the DELETED RESIDUALS provide a clearer picture when your data set has outliers and influential observations. When you have selected all your options, click the CONTINUE button in this dialog box and the OK button on the previous dialog box.

Here is the data set after we have saved the residuals and predicted variables.

![Figure 4. Dialog box for data editor](http://www.pmean.com/new-images/02/lin_spss04.gif)

SPSS numbers the newly created columns of data, in case you want to compute residuals from several competing models.

**Draw a normal probability plot.**

Select GRAPHS | Q-Q from the SPSS menu. You will see the following dialog box:

![Figure 5. Dialog box for Q-Q plots](http://www.pmean.com/new-images/02/lin_spss05.gif)

Select the continuous variable that you want to examine normality for and add it to the VARIABLES box.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/lin_spss.html
[sim2]: http://www.pmean.com/original_site.html
