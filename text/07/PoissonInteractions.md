---
title: A Poisson regression model with interactions
author: Steve Simon
source: http://www.pmean.com/07/PoissonInteractions.html
date: 2007-12-12
categories:
- Blog post
tags:
- Poisson regression 
output: html_document
page_update: complete
---

I got a question about how to interpret an interaction term in a Poisson regression model. The first thing to remember is that the estimates in a Poisson regression model are computed using a log link function. When you transform them back using an anti-log, you get an estimate of a ratio. Sometimes it is called an incidence density ratio.

In this particular model, there were two independent variables, temperature and height (2M, 22M, and 48M). Height has three levels, so he coded an indicator variable for the 22M category and the 48M category. The coefficient for temperature is 0.08, the coefficient for the two dummy variables are 0.38 and 0.01. This model has a separate interaction term for each dummy variable and temperature. These coefficients are both -0.03. He did not specify an intercept. Let's pretend it is 3.52.

The temperature coefficient is positive and it shows that in the reference category (2M), there is an increase in count as temperature increases. The antilog of 0.08 is 1.08, which tells you that the average count increases by 8% for each unit increase in temperature in the 2M category. A ten unit increase would produce a relative shift in the average count equal to the antilog of 0.80 or 2.22. In other words, a ten unit shift produces more than a doubling in average count (again remember that this is for the reference category of 2M).

The interaction terms show how much the effect of temperature changes when you are in the 22M or 48M categories. In this setting, both interactions are -0.03, so this tells you that the increase in the average rate per unit increase in temperature is the antilog of 0.08 -0.03 or 1.05. So in the other two categories, temperature has a less pronounced effect. It is sitll probably an important effect, though since a 10 unit shift in temperature yields an relative increase in the average count of antilog(0.50) or 1.64. This still seems like a sizable increase to me.

The intercept term represents the estimate average log count when temperature equals zero and for 2M. Take the antilog of 3.52 to get 33.8. Now a temperature of zero is well below the range of possible values, so we will not attach too much importance to this estimate.

The coefficients of the two dummy variables show how the intercept changes for the 22M and 48M groups. Take the antilog of 0.38 and 0.01 to get 1.46 and 1.01 respectively. This tells you that the average count is about 50% higher in the 22M than the 2M and almost the same in the 48M. This is only true when temperature equals zero, however, since there is an interaction. If there were no interaction, then the 1.46 would represent the relative difference in the two average counts at any fixed temperature.

What does this model tell you for more reasonable temperatures, such as 10 or 20. You could get a predicted average rate in the 2M group of 75.2 (antilog of 3.52 + 10\*0.08), in the 22M group of 81.5 (antilog of 3.52 + 0.38 + 10\*0.05), and in the 48M group of 56.3 (antilog of 3.52 + 0.01 +10\*0.05). Note that at 10 degrees the 2M group no longer lags the 22M group by about 50%. Instead they are almost equal. Note that the 2M group has surpassed the 48M group at 10 degrees (they were almost identical at 0).

It is an interesting exercise to ask where the 2M line (3.52 + 0.08 T) and 22M line (3.90 + 0.05 T) cross. It occurs right around 12.67. For temperatures at or below this value, the 22M line has a higher average count, but this reverses for temperatures above 12.67.

The 2M and 48M lines also cross, but at a point very close to zero. For most reasonable values of temperature, 2M is better than 48M, and the relative gap widens as temperature increases.

A second model had an interaction between two continuous variables, wind speed and rain. The coefficients for wind, rain, and the interaction are 0.9, -0.04, and -0.11 respectively. Wind increases the average count by 2.46 (antilog of 0.9) per unit increase, when rain is held constant at zero. A unit increase in rain leads to a 0.96 (antilog of -0.04) relative change, assuming that wind is held constant at zero.

The interaction is negative which means two things: the effect of wind is weaker when rain is positive, and the effect of rain is stronger (even more negative) when wind is positive.

For example, the slope for wind when rain equals 5 units is 0.9 - 0.11\*5 = 0.45. The antilog here is 1.56 meaning a slightly more than 50% increase when wind increases by one unit on a day when rain equals 5 units. At zero, the effect was 2.46 (antilog of 0.9), a much more pronounced effect.

The slope for rain when wind equals 10 is -0.04 - 0.11\*10 = -1.14. The antilog is 0.32, which means that a one unit increase in rain lower the average count roughly by a factor of 3. This statement is only true when wind equals 10. When wind equals zero, the relative change is 0.96 (antilog of -0.04) per unit increase in rain, which is hardly a change at all.

An interesting exercise again is to see at what value of rain, does the interaction cancel out the positive slope for wind. That value is 8.2 (= 0.9 / 0.11). So when rain is at 8.2, the average count does not change as wind changes.

So what's the general conclusion. A dry wind increases count compared to a dry calm, but a wet wind compared to a wet calm does so to a much lesser degree. Too much wetness cancel out or even reverse this relationship. Rain has a slightly negative impact when it is calm, but has an increasingly strong influence as the weather gets windier.

You can get confidence intervals for all of these values, but you need to know both the standard error of the individual coefficients and the correlations among the coefficients.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/PoissonInteractions.html
[sim2]: http://www.pmean.com
