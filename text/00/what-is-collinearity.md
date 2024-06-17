---
title: What is collinearity?
source: http://www.pmean.com/00/collinearity.html
author: Steve Simon
date: 2000-01-27
categories:
- Blog post
tags:
- Ask Professor Mean
- Modeling issues
output: html_document
page_update: partial
---
*Dear Professor Mean, Could you describe the term collinearity for me? I understand that it has to do with variables which are not totally independent, but that is all I know!*

Collinearity is a situation where there is close to a near perfect linear relationship among some or all of the independent variables in a regression model. In practical terms, this means there is **some degree of redundancy or overlap** among your variables.

Some authors describe this as multicollinearity, near collinearity, or ill conditioning. Coming up with four different technical terms for the same condition is one way that we statisticians keep our discipline mysterious and awe inspiring.

Collinearity can appear as a **very high correlation** among two independent variables, but it doesn't have to work that way. Another type of collinearity is when **several of the variables add up to something that it very close to a constant** value.

Collinearity is not a fatal flaw, but it does cause a **loss in power** and it **makes interpretation more difficult**.

A simple example of collinearity is when you are using both **gestational age** and **birth weight** as independent variables. These two measures are highly correlated, of course, since low gestational ages tend to be associated with low birth weights.

Interpretation is difficult in this situation, because when both variables are in a regression model, the parameter for birth weight is measuring the effect of a change in one unit in birth weight on the dependent variable, assuming that all of the other variables are held constant. **It's hard to envision what it means to change birth weight while gestational age is held constant**. What you are looking at, in effect, is the size of a baby for a gestational age.

Collinearity also causes a loss in power. **When you have overlap among some of the variables, it takes more data to disentangle the individual effects of these variables**. Think of it as a table where you push two of the four legs away from the corners and close to the middle of the table. Such a table will be very unstable.

In the previous example, we have very few 1000 gram babies who are 40 weeks gestational age and very few 2500 gram babies who are 32 weeks gestational age. Without data at these two "corners" of the table, it's hard to get stable statistical estimates.

It should be noted, though, that **you can make sense of your data, even when you have collinearity**. It just takes more data and a bit of care in interpretation. Some health outcomes, it turns out, are related more closely to gestational age than to birth weight. It's not how small you are that is as important as how early you make your entry into the world. Keep in mind that I'm not a doctor, so check my limited knowledge of medicine out with the experts. Especially if you are a newborn baby.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/collinearity.html
[sim2]: http://www.pmean.com/original_site.html
