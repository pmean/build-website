---
title: What is a beta coefficient?
author: Steve Simon
source: http://www.pmean.com/06/BetaCoefficient.html
date: 2006-04-04
categories:
- Blog post
tags:
- Linear regression
output: html_document
page_update: partial
---
**[StATS]:** **What is a beta coefficient? (April 4,
2006)**

> When you are examining the relative impact of several independent
> variables on an outcome variable, the estimated slopes may be
> deceptive. A variable with a wide range might have a very flat slope
> compared to a variable with a large range, even though the former may
> be a much more powerful predictor. You can see this intuitively by
> drawing a graph with a large aspect ratio (much wider than it is tall)
> and comparing it with the same graph with a smaller aspect ratio
> (closer to square). The slope looks so much bigger in the square
> graph, but nothing has fundamentally changed. The statistics community
> has developed "beta coefficients" that are the regression
> coefficients using a standardized variables. When you standardize, you
> allow for a "fair" comparison of the predictive power of variables
> measured on disparate ranges or even expressed in noncomparable units
> of measurement.
>
> > *The great value of the beta-coefficient is that it expresses the
> > "effect" of one variable on another without regard to how
> > differently the variables are scaled.*
> > [janda.org/c10/Lectures/topic10/R4-multivariate.htm](http://janda.org/c10/Lectures/topic10/R4-multivariate.htm).
>
> The interpretation of a beta coefficient is slightly different than
> the interpretation of a slope coefficient. The slope coefficient
> represents the estimated average change in the outcome variable when
> the independent variable increases by one unit. The beta coefficient
> represents the estimated average change in standard deviation units.
> So a beta coefficient of 0.5 means that every time the independent
> variable changes by one standard deviation, the estimated outcome
> variable changes by half a standard deviation, on average.
>
> It's impossible for a beta coefficient to be greater than one, and if
> you think about this long enough, that is a good thing. If the outcome
> variable increased by two standard deviations every time the
> independent variable increased by a single standard deviation, that
> would eventually lead to the explosion of the universe.
>
> In a simple linear regression model, the beta coefficient is just the
> correlation between the independent variable and the outcome variable.
>
> **WARNING!** In Finance, there is an alternate use of the term "beta
> coefficient" to represent the level of risk associated with an
> individual stock or of a<U+FFFD> portfolio of stocks. This is not the same
> thing as the beta coefficient described above.

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Linear
regression](../category/LinearRegression.html).
<!---More--->
regression](../category/LinearRegression.html).
for pages similar to this one at [Category: Linear
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]:** **What is a beta coefficient? (April 4,
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Linear
regression](../category/LinearRegression.html).
page_update: partial
--->

