---
title: SPSS dialog boxes for linear regression models
author: Steve Simon
source: http://www.pmean.com/02/lin_spss.html
date: 2002-06-21
category: Blog post
tags: Linear regression
output: html_document
---
****[StATS]:** SPSS dialog boxes for linear
regression models (June 21, 2002)**

This handout will show the SPSS dialog boxes that I used to create linar
regression examples. I will capitalize variable names, field names and
menu picks for clarity.

**Fit a general linear model**

Select ANALYZE \| GENERAL LINEAR MODEL from the menu. For most simple
models, you would then select UNIVARIATE from the menu. Select
MULTIVARIATE if you wanted to examine the simultaneous effect of more
than one dependent variable. Select REPEATED MEASURES if you have
multiple measurements per subject with each measurement in its own
column. Select VARIANCE COMPONENTS from the menu if you want to estimate
multiple sources of variation (e.g., between and within subjects).

When we select UNIVARIATE, we get the following dialog box.

![](../../../web/images/02/lin_spss01.gif)
height="441"}

Insert your outcome variable in the DEPENDENT VARIABLE field. If you are
examining how a categorical variable influences your outcome, insert
that categorical variable in the FIXED FACTOR(S) field. If you are
examining how a continuous varaibles influences your outcome, insert
that continuous variable in the COVARIATES(S) field.

Some of the tables discussed in this presentation require you to select
additional options. Click on the OPTIONS button to get the following
dialog box.

![](../../../web/images/02/lin_spss02.gif)
height="398"}

Add your categorical variable to the DISPLAY MEANS FOR field and check
the DESCRPTIVE STATISTICS and PARAMETER ESTIMATES options.

**Compute residuals.**

Residuals are useful for examining the assumptions of your general
linear model. Select ANALYZE \| GENERAL LINEAR MODEL \| GLM - GENERAL
FACTORIAL from the SPSS menu. After you have defined your model, click
on the SAVE button. You will see the following dialog box:

![](../../../web/images/02/lin_spss03.gif)
height="359"}

Check any or all of the option boxes for information that you want
stored in your data set. The UNSTANDARDIZED RESIDUALS have the simplest
definition, but some of the other types of residuals, especially the
STUDENTIZED RESIDUALS and the DELETED RESIDUALS provide a clearer
picture when your data set has outliers and influential observations.
When you have selected all your options, click the CONTINUE button in
this dialog box and the OK button on the previous dialog box.

Here is the data set after we have saved the residuals and predicted
variables.

![](../../../web/images/02/lin_spss04.gif)
height="484"}

SPSS numbers the newly created columns of data, in case you want to
compute residuals from several competing models.

**Draw a normal probability plot.**

Select GRAPHS \| Q-Q from the SPSS menu. You will see the following
dialog box:

![](../../../web/images/02/lin_spss05.gif)
height="391"}

Select the continuous variable that you want to examine normality for
and add it to the VARIABLES box.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at [Category: Linear
regression](../category/LinearRegression.html).
<!---More--->
regression](../category/LinearRegression.html).
this one at [Category: Linear
with general help resources. You can also browse for pages similar to
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
****[StATS]:** SPSS dialog boxes for linear
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at [Category: Linear
regression](../category/LinearRegression.html).
--->
