---
title: Nonlinear Least Squares in S-plus and R
author: Steve Simon
source: http://www.pmean.com/04/nonlinear-04.html
date: 2004-06-28
category: Blog post
tags: Nonlinear regression
output: html_document
---
**[StATS]: Nonlinear Least Squares in S-plus and R
(June 28, 2004)**.

> I\'ve worked on a brief explanation of [how to fit an S-shaped
> curve](../model/scurve.asp) using [SPSS](http://www.spss.com/spss/)
> and someone wanted to know how to do this in
> [S-plus](http://www.insightful.com/products/splus/default.asp).
> Here\'s a simple example.
>
> `xc <- c(0.8,0.5,0.2,-0.2,-0.5,-0.8)    yn <- c(0.02,0.10,0.29,0.20,0.80,1.00)    nls.mod1 <- nls(yn~1/(1+exp(b*xc-a)),start=list(a=0,b=10))    summary(nls.mod1)        Formula: yn ~ 1/(1 + exp(b * xc - a))        Parameters:      Value Std. Error t value     a -2.70380     1.4019 -1.92867    b  7.90714     3.7126  2.12981        Residual standard error: 0.149848 on 4 degrees of freedom        Correlation of Parameter Estimates:        a     b -0.908        plot(xc,yn,xlim=c(-1,1))    x.grid <- seq(-1,1,by=0.01)    lines(x.grid,predict(nls.mod1,newdata=list(xc=x.grid)))         `
>
> This same code should also work in [R](http://www.r-project.org/).

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Nonlinear
regression](../category/NonlinearRegression.html).
<!---More--->
regression](../category/NonlinearRegression.html).
for pages similar to this one at [Category: Nonlinear
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Nonlinear Least Squares in S-plus and R
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Nonlinear
regression](../category/NonlinearRegression.html).
--->

