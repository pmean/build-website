---
title: SPSS dialog boxes for logistic regression
author: Steve Simon
date: 2002-07-22
categories:
- Blog post
tags:
- Logistic regression
output: html_document
page_update: partial
---


This handout shows some of the dialog boxes that you are likely to encounter if you use logistic regression models in SPSS.

Before we can use the bf data set for binary logistic regression, we need to create a variable which is coded as binary. In this case, we want to compare exclusive breast feeding as one category with partial, supplement, and none combined as a second category. To do this, select **Transform | Recode from the SPSS menu**.

![Figure 1. Dialog box for recode](http://www.pmean.com/new-images/02/logist_spss01.gif)

Be sure to define your output variable name and label and click on the CHANGE button. Then click on the **Old and New Values button**.

![Figure 2. Dialog box for old and new values](http://www.pmean.com/new-images/02/logist_spss02.gif)

We convert the values

+ Exclusive (1) to 1;
+ Partial (2), Supplement (3), and None (4) to 0;
+ All other values to System-missing.

To fit a logistic regression model, select **Analyze | Regression | Binary Logistic from the SPSS menu**. Shown below is the dialog box you will see.

![Figure 3. Dialog box for logistic regression](http://www.pmean.com/new-images/02/logist_spss03.gif)

In this dialog box, add your binary outcome variable to the **Dependent field**. Add all of your independent variables to the **Covariates field**. If one or more of your independent variables is categorical, click on the **Categorical button**. Shown below is the dialog box you will get.

![Figure 4. Dialog box for defining categorical variables](http://www.pmean.com/new-images/02/logist_spss04.gif)

Add any of your categorical covariates to the **Categorical Covariates field**. By default, SPSS will use one or more indicator variables to represent your categorical variables and will reserve the last category as a reference level. This is a reasonable choice for most situations. In this data set, feed_typ has two levels, 1=bottle, and 2=ng tube, and SPSS will set up a single indicator variable which equals one for the bottle group and 0 otherwise.

Click on the **Continue button** to close this dialog box and return to the earlier dialog box.

SPSS offers additional analysis options for the logistic regression model. Click on the **Options button** to see your choices.

![Figure 5. Dialog box for logistic regression options](http://www.pmean.com/new-images/02/logist_spss05.gif)

This dialog box shown above illustrates all of the additional options for the logistic regression model. The one option I would always recommend is the **CI for exp(B) option box**. This gives you a confidence interval for all of the odds ratios produced in this logistic regression analysis.

The **Hosmer-Lemeshow goodness of fit option box** allows you to evaluate the assumptions of your logistic regression model.

The **Classification plots option box** and the **Classification cutoff field** are useful when you are using a logistic model to evaluate a diagnostic test.

Click on the **Continue button** to close this dialog box and return to the earlier dialog box.

SPSS also lets you choose whether to save some information from this logistic regression model in your data set. Click on the **Save button** to see your choices.

![Figure 6. Dialog box for saving new variables](http://www.pmean.com/new-images/02/logist_spss06.gif)

The dialog box shown above lists all of the information that SPSS can save in your data set. The most useful information is in the **Probabilities option box**.

The **Group membership option box** is useful when you are evaluating a diagnostic test.

The various measures under the **Influence options group** and the **Residuals options group** are useful for examining the assumptions of your logistic model and for identifying individual data values which the model is highly sensitive to.

Click on the **Continue button** to proceed and then click on the **OK button** in the earlier dialog box.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/logist_spss.html
[sim2]: http://www.pmean.com/original_site.html
