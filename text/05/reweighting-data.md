---
title: Re-weighting the data
author: Steve Simon
source: http://www.pmean.com/05/ReweightingData.html
date: 2005-01-25
categories:
- Blog post
tags:
- Being updated
- Covariate adjustment
output: html_document
page_update: partial
---
**[StATS]:** **Re-weighting the data (January 25,
2005)**.

A recent article

- **Two Statistical Paradoxes in the Interpretation of Group
Differences: Illustrated with Medical School Admission and Licensing
Data.** Wainer H, Brown LM. The American Statistician 2004: 58(2);
117-23.

shows how a simple re-weighting of the data can lead to a fairer
comparison between two groups. An expanded version of this paper is
available on the Statistical Literacy website.

- <http://www.statlit.org/PDF/2004Wainer_ThreeParadoxes.pdf>

Wainer and Brown show data on a state by state basis for the National
Assessment of Educational Progress (NAEP). Two states, Nebraska and New
Jersey show interesting results. The average score for Nebraska is 277
and is only 271 for New Jersey. But interestingly enough, New Jersey
outperforms Nebraska among whites (283 vs 281), blacks (242 vs 236) and
other non-white (260 vs 259).

This is an example of Simpson's paradox. New Jersey has much different
demographics than Nebraska. In New Jersey 66% of the population is
white, 15% black, and 19% other non-white. In Nebraska, 87% of the
population is white, 5% is black, and 8% is other non-white. It is this
differing demographic mix that causes the paradox.

The average score for each state is a weighted average. For Nebraska,
the calculation is

281\*0.87 + 236\*0.05 + 259\*0.08 = 277

and for New Jersey, the calculation is

283\*0.66 + 242\*0.15 + 260\*0.19 = 272

Nebraska benefits because a higher weight (0.87) is placed on the race
that scored highest in both states. What would happen to Nebraska's and
New Jersey's scores if the demographic mix was changed to the overall
percentages in the U.S. (69% white, 16% black, and 15% other non-white)?

Here are the re-weighted calculations for Nebraska

281\*0.69 + 236\*0.16 + 259\*0.15 = 271

and New Jersey

283\*0.69 + 242\*0.16 + 260\*0.15 = 273

This re-weighting to a common demographic risk is often used to make
adjustments between two groups that have sharply differing mixes of age,
gender, and/or racial characteristics.

Here are a few additional references about Simpson's paradox.

- Appleton, David R., French, Joyce M. and Vanderpump, Mark P. J.
(1996) Ignoring a covariate: An example of Simpson's paradox. The
American Statistician, 50, 340-341.
- Wagner, Clifford H. (1982) Simpson's paradox in real life. The
American Statistician, 36, 46-48.
- Morrell, Christopher H. (1999) Simpson's paradox: An example from a
longitudinal study in South Africa. Journal of Statistics Education,
7, 7-7.

You can also browse
for pages similar to this one at [Category: Covariate
adjustment](../category/CovariateAdjustment.html).

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/ReweightingData.html
[sim2]: http://www.pmean.com
