---
title: How good is my prediction?
author: Steve Simon
source: http://www.pmean.com/07/HowGood.html
date: 2007-08-13
categories:
- Blog post
tags:
- Modeling issues
output: html_document
---*Dear Professor Mean, I have two time series of data, one actual andone predicted. Since I'm quite new to statistical methods, I wouldlike to know what methods are used to evaluate the different betweenthe two time series. I would like to able to say something like "thepredicted values were 70% accurate."*See what others in your area are doing and emulate them, as there isno one measure that is used uniformly. Most formulas are based on theresidual.To compute the residual, subtract the predicted value from the actualvalue. The residual is used in many statistical models, not just timeseries. Then there are several statistics that you can compute on theresiduals. The simplest is the standard deviation of the residuals.Another possibility is the average absolute residual. The closer thatthese values are to zero, the better your prediction.If you are interested summaries that represent a percentage, you mightwant to consider a relative measures such as the absolute residualdivided by the actual time series, as long as the actual time seriesis never zero or negative. This would give you a percentage error.Another possibility is to compare the residuals from your predictionto a much simpler prediction (for example, a prediction that uses themean for every single value). Then the ratio of the variances (thesquared standard deviation) of the two predictions is a measure of howwell your predictions are doing. Place the variance of the simplerprediction in the denominator. In linear regression, this is known asR-squared or multiple R-squared depending on the context, but itshould also work for time series data.
