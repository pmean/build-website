---
title: Interpretation of an odds ratio
author: Steve Simon
source: http://www.pmean.com/07/InterpretationOddsRatio.html
date: 2007-03-21
category: Blog post
tags: Logistic regression
output: html_document
---
**[StATS]:** **Interpretation of an odds ratio
(March 21, 2007)**

Someone sent me some data on crime. In a sample of 2,957,239 people, 961
were criminals. 41 of the criminals were in the first group (who
numbered 20,109). The remaining 920 were in the larger group
(2,937,130). This person computed an odds ratio of 6.5 and wondered what
it meant.  Does this mean that for every criminal in the larger group,
there are 6.5 criminals in the smaller group?

I had to explain that that sort of ratio would only occur if the two
groups each constituted exactly 50% of the total. What makes more sense
here is to estimate the probability of being a criminal in each group.
For the small group it is 0.2% (41/20,109) and for the larger group it
is 0.03% (920/2,937,130). The ratio of these two probabilities is 6.7
telling you that the probability is almost seven times higher in the
small group compared to the large group. Another way of looking at this
is that the smaller group represents 0.7% (20,109/2,957,239) of the
total, but are responsible for 4.5% (41/920) of the crimes. Their
contribution is approximately 6.4 times larger than you would expect.

The math works out nicely in this example because crime is a rare event.
If the proportion of crimes in either group was large (say 20% of more)
then interpretation of the odds ratio and other related ratios becomes
more difficult.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Logistic
regression](../category/LogisticRegression.html).
<!---More--->
regression](../category/LogisticRegression.html).
for pages similar to this one at [Category: Logistic
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Interpretation of an odds ratio
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Logistic
regression](../category/LogisticRegression.html).
--->

