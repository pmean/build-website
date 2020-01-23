---
title: Poisson regression? Maybe not!
author: Steve Simon
source: http://www.pmean.com/06/PoissonRegression-06.html
date: 2006-03-10
category: Blog post
tags: Poisson regression
output: html_document
---
**[StATS]:** **Poisson regression? Maybe not!
(created 2006-03-10)**.

I get a lot of questions about Poisson regression, even though I have
very little about it on my web pages. My guess is that there is even
less information out there on the rest of the web, so even my meager
offerings still place me at the top of the Google search list. I have
been wanting to expand my material in this area for quite some time, but
just have not had the time.

Anyway, someone asked me today if they could use Poisson regression when
their outcome variables was the answer to the question \"How many
children would you like to have?\"

That\'s an interesting question. One clue that often points me in the
direction of the Poisson distribution is a count variable with no
obvious upper bound. If there is an obvious upper bound, then a model
using a binomial distribution may make more sense. But here, I just have
too many misgivings. I suspect that the Poisson distribution would not
fit the data well, because the Poisson distribution would exhibit much
more variation than I would likely expect for an answer to a question
like this.

One quick check would be to compute the mean and variance of the outcome
variable. A Poisson random variable would have a variance that is equal
to the mean. This is a very crude test, of course.

A good alternative approach might be to use ordinal logistic regression,
another model that I\'d like to spend some time describing on these web
pages.

**Related pages:**

-   [Stats: Guidelines for poisson regression
    models](../model/poisson.asp)
-   [Definition: Poisson
    distribution](www.childrensmercy.org/definitions/poisson.htm)
-   [Stats: Sample size for an ordinal outcome (September
    22, 2004)](http://www.childrensmercy.org/stats/weblog2004/OrdinalLogistic.asp)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Poisson
regression](../category/PoissonRegression.html).
<!---More--->
regression](../category/PoissonRegression.html).
for pages similar to this one at [Category: Poisson
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Poisson regression? Maybe not!
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Poisson
regression](../category/PoissonRegression.html).
--->

