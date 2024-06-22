---
title: "Sample size calculation for a logistic regression model"
source: http://www.pmean.com/09/SampleSizeLogistic.html
author: Steve Simon
date: 2009-02-26
categories:
- Blog post
tags:
- Being updated
output: html_document
page_update: complete
---

I might need to do a sample size justification for a logistic regression model. How would this be done? Let me outline some simple cases.

If you are using a binary independent variable, the logistic regression model simplifies to a two by two table. Specify the margin distribution of the independent variable. Is it likely to split about 50-50, or is it more likely to split 20-80? Then for the "control" level, specify what you expect the proportion to be. Specify how much of a change from the "control" level to the "treatment/exposure" level is considered important from a clinical perspective. Then run some calculations based on this table. You have several choices including a power calculation for the difference in two proportions and a power calculation based on the asymptotic normality of the log odds ratio.

Here's an example based on a publication using logistic regression:

Harling M, Strehmel P, Schablon A, Nienhaus A. Psychosocial stress, demoralization and the consumption of tobacco, alcohol and medical drugs by veterinarians. Journal of Occupational Medicine and Toxicology. 2009;4(1):4. Available at: www.occup-med.com/content/4/1/4 [Accessed March 9, 2009].

Here are some key webpages:

cran.r-project.org/web/packages/asypow/index.html

cran.at.r-project.org/web/packages/MBESS/index.html

cran.at.r-project.org/web/packages/pwr/index.html

PASS: Power Analysis and Sample Size Software for Windows. Design of Experiments. Experimental Design. Scientific Studies. N.

www.statsol.ie/index.php?pageID=2

www.cs.uiowa.edu/~rlenth/Power/

cran.r-project.org/web/packages/PwrGSD/index.html

cran.r-project.org/web/packages/powerGWASinteraction/index.html

cran.r-project.org/web/packages/powerpkg/index.html

biostat.hitchcock.org/MeasurementError/Analytics/PowerCalculationsforLogisticRegression.asp

www.pitt.edu/~wpilib/statfaq/3power.html

biostat.mc.vanderbilt.edu/twiki/bin/view/Main/PowerSampleSize

www.imperial.ac.uk/nhli/r.newson/papers/powergen.pdf

 

Power Calculations for Logistic Regression with Exposure Measurement Error. Dartmouth-Hitchcock Medical Center. This website is cited in Category: Sample Size, Logistic. This website was last verified on 2003-04-23. URL: www.biostat.hitchcock.org/MeasurementError/Analytics/PowerCalculationsforLogisticRegression.asp

Multivariable prognostic models: issues in developing models, evaluating assumptions and adequacy, and measuring and reducing errors. F. E. Harrell, Jr., K. L. Lee, D. B. Mark. Stat Med 1996: 15(4); 361-87. This article is cited in Category: Sample Size, Logistic. Multivariable prognostic models: issues in developing models, evaluating assumptions and adequacy, and measuring and reducing errors.

Regression modelling strategies for improved prognostic prediction. Jr Harrell, Frank E, Kerry L Lee, Robert M Califf, David B Pryor, Robert A Rosati. Statistics in Medicine 1984: 3; 143-152. This article is cited in Category: Sample Size, Logistic Regression Model. Sample Size >> Logistic Regression Model Regression modelling strategies for improved prognostic prediction. Sample Size >> Logistic Regression Model

Regression models for prognostic prediction: advantages, problems, and suggested solutions. Jr Harrell, Frank E, Kerry L Lee, David B Matchar, Thomas A Reichert. Cancer Treatment Reports 1985: 69(10); 1071-77.

Sample size tables for logistic regression. F. Y. Hsieh. Stat Med 1989: 8(7); 795-802. [Medline].

A simple method of sample size calculation for linear and logistic regression. F. Y. Hsieh, D. A. Bloch, M. D. Larsen. Stat Med 1998: 17(14); 1623-34. [Medline].

Some Free Public Health & Epidemiology Software. Mark Myatt.

A simulation study of the number of events per variable in logistic regression analysis. P. Peduzzi, J. Concato, E. Kemper, T. R. Holford, A. R. Feinstein. J Clin Epidemiol 1996: 49(12); 1373-9.

Power and sample size calculations for generalized regression models with covariate measurement error. TD Tosteson, JS Buzas, E Demidenko, M Karagas. Stat Med 2003: 22(7); 1069-82. [Medline] [Abstract].

Sample size calculations for ordered categorical data. J. Whitehead. Stat Med 1993: 12(24); 2257-71.

Sample size for logistic repression with small response probability. Alice Whittemore. Journal of the American Statistical Association 1981: 76(373); 27-32.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/09/sample-size-logistic.html
[sim2]: http://www.pmean.com
