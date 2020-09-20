---
title: Modeling a declining count variable
author: Steve Simon
date: 2008-06-14
categories:
- Blog post
tags:
- Poisson regression
output: html_document
---
I\'ve been working on an interesting project that requires Poisson
regression. A company sends out a mailing and gets a certain number of
telephone calls back on each of the days following. The number of phone
calls is typically (but not always) highest on the first day afterwards
and declines rapidly on successive days. I wanted to develop a simple
Poisson regression model for this data.

Here\'s an example of this data

`1 9   2 4   3 2   4 3   5 0   6 0   7 1`

You can fit a simple Poisson regression model in R using the following
code:

`ct <- c(9,4,2,3,0,0,1)   tm <- 0:6   pmod <- glm(ct~tm,family=poisson)`

Using 0 as the starting point rather than 1 makes the interpretation of
this model simpler. When you list the contents of� pmod, you get the
following

`Call: glm(formula = ct ~ tm, family = poisson)       Coefficients:   (Intercept)���������� tm      ���� 2.1063����� -0.5505       Degrees of Freedom: 6 Total (i.e. Null); 5 Residual   Null Deviance:����� 22.06    Residual Deviance: 5.289������� AIC: 24.21`

How would you interpret these coefficients?� The Poisson regression
model uses a log link function. This means that the average value for
the data is assumed to be linear on a log scale.

In a linear regression model, the intercept is the estimated average
value of the dependent variable when the independent variable is equal
to zero. In a Poisson regression model, the antilog of the intercept
represents the estimated average count when the independent variable is
zero. Since exp(2.1) = 8.2, you would say that the estimated average
count at time zero is 8.2.

You might be tempted to make the intercept equal to 9. While this is not
an outrageous thing to do, it is not quite as efficient. The Poisson
regression model has to fit all of the counts well, not just the count
at 0.

In a linear regression model, the slope represents the estimated average
change in the dependent variable when the independent variable increases
by one unit. In a Poisson regression model, the antilog of the slope
represents the estimated average change in the count when the
independent variable increases by one unit. An important difference,
though, is that the change is a multiplicative change. Since exp(-0.55)
= 0.58, you would say that the estimated average count declines by a
factor of 0.58 (a 42% decline) when time increases by one day.

A zero slope in a Poisson regression model corresponds to a
multiplicative change of 1 which, of course, is no change. A positive
slope in a Poisson regression model corresponds to a multiplicative
change greater than 1. You could call this an exponential rise. A
negative slope in a Poisson regression model corresponds to a
multiplicative change less than 1. This is an exponential decline.

The predict function in R produces estimated average values on a log
scale for each time point.

`> round(predict(pmod),4)   ���� 1����� 2�����    3����� 4������ 5������    6������ 7   2.1063 1.5558 1.0053 0.4548 -0.0957 -0.6462 -1.1967 `

I\'ve rounded these data slightly from the actual output to save space.
Note that R places an index of 1 through 7 above each predicted value.
This is a bit confusing, perhaps, because the first value corresponds to
time=0 and the last value corresponds to time=6.

If you take the antilog of these values, you get the estimated average
count at each time point.

`> round(exp(predict(pmod)),4)   ���� 1����� 2�����    3����� 4����� 5�����    6����� 7    8.2177 4.7388 2.7327 1.5758 0.9087 0.5240 0.3022`

To demonstrate that this is an exponential decline, note that

`8.2*0.58^0 = 8.2   8.2*0.58^1 = 4.8   8.2*0.58^2 = 2.8   8.2*0.58^3 = 1.6   8.2*0.58^4 = 0.93   8.2*0.58^5 = 0.54   8.2*0.58^6 = 0.31`

There is a bit of rounding here, but the series matches the values shown
using the antilog of the predicted values.

You might wonder if you are likely to see any more values beyond time=6.
The estimated average counts for times 7, 8, etc. are

`8.2*0.58^7 = 0.18   8.2*0.58^8 = 0.11   �.   �.   �.`

You can sum the infinite series from time=0 to time=infinity if you
like. Notice that the terms in the above expression can be represented
by a classic [geometric
series](http://en.wikipedia.org/wiki/Geometric_series)

`a   ar   ar2   ar3   �.   �.   �.`

For r\<1, the sum of this infinite series is

`a/(1-r)`

For a=8.2 and r=0.58, this equals 19.5. Since we\'ve already seen 19
events, we would expect to see half an event on average for the
remainder the time. You can use the dpois function to estimate
probabilities for a Poisson random variable with a mean of 0.5.

`> round(dpois(0:4,0.5),2)   [1] 0.61 0.30 0.08 0.01 0.00`

You would estimate that it is more than likely (61% probability) that
you will not see any more events. There is still a reasonable chance
(30%) that you will see one more event. It is unlikely (9% probability)
that you will see 2 or more events.

You can find an [earlier version](http://www.pmean.com/08/DecliningCount.html) of this page on my [original website](http://www.pmean.com/original_site.html).
