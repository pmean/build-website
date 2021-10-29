---
title: Differences between the Chi-square test, Fisher\'s Exact test, and logistic regression
author: Steve Simon
source: http://www.pmean.com/07/DifferencesBetweenTests.html
date: 2007-01-09
categories:
- Blog post
tags:
- Logistic regression
output: html_document
---
I received an email from India (isn\'t the Internet wonderful?) that
asked me to comment on the differences between a Chi-square test,
Fisher\'s Exact test, and logistic regression. Let\'s take each of these
in sequence.

A Chi-square test can mean a variety of different things depending on
the context of the problem. I outline some of these in

-   [Stats: Chi-square](../ask/chisquared.asp).

For the record, there is no standard spelling for this. The terms \"Chi
square\" and \"Chi squared\" are both acceptable, and you can also
hyphenate the two words (Chi-square) or make them a single word
(Chisquare). You can also use an initial capital letter or lower case
for \"Chi\" and/or \"Square\". I use different versions throughout my
web pages. Two quotes about consistency (found at
[en.thinkexist.com](http://en.thinkexist.com)) capture my feelings on
the topic:

-   *Consistency is the last refuge of the unimaginative*. Oscar Wilde,
    and
-   *A foolish consistency is the hobgoblin of little minds, adored by
    little statesmen and philosophers and divines*. Ralph Waldo Emerson.

In the context of the original email, the Chi-square test was intended
to compare the proportion of patients who die under two separate
surgical procedures. This produces a two-by-two table. I outline some of
the data entry issues associated with two-by-two tables at

-   [Stats: Inputting a two-by-two table into SPSS](../data/table.asp)

and discuss some of the alternative statistical summaries (odds ratio,
relative risk, number needed to treat) at

-   [Stats: Odds ratio versus relative risk](../journal/oddsratio.asp)
    and
-   [Stats: Number needed to treat](../ask/nnt.asp)

The Chi-square test has some flexibility in that if there are more than
two rows or more than two columns in your table, you can still use this
test. Beware, though, that the Chi-square test can be inefficient if the
variable representing multiple rows or multiple columns is
[ordinal](www.childrensmercy.org/definitions/ordinal.htm) rather than
[nominal](www.childrensmercy.org/definitions/nominal.htm).

Fisher\'s Exact test is an alternative to the Chi-square test for
two-by-two tables. The adjective \"exact\" stresses that this test does
not rely on an approximation. Although some have cautioned about the
conservative nature of Fisher\'s Exact test, there is general consensus
in the research community that this test is preferred to the Chi-square
test for small data sets, though there are varying rules for deciding
whether a data set is small enough to warrant the use of Fisher\'s Exact
test.

There used to be some reluctance to use Fisher\'s Exact test for
moderate size data sets because the calculations needed for this test
increase rapidly as the sample size increases. But with recent
improvements in the computational algorithms, and with the ever
increasing speed and power of computers, there is no reason to avoid
this test, except, perhaps, for the very largest of data sets.

There are extensions of Fisher\'s Exact test to situations where there
are more than two rows/columns, but these extensions are not available
in most statistical software packages.

I discuss the use of Fisher\'s Exact test including some examples of how
to report the results in a publication at

-   [Stats: Fisher\'s Exact Test](../ask/fishers.asp).

A simple logistic regression model will produce results that are very
similar to the Chi-square test and Fisher\'s Exact test. A more complex
logistic model, though, such as one that includes additional covariates,
may produce radically different results than either of these tests. The
reason for this is that Fisher\'s Exact test cannot adjust for possible
confounding variables.

Logistic regression is also preferred when you are trying to predict a
binary outcome using a continuous predictor variable. Logistic
regression uses odds ratios as a measure of the relationship between the
outcome variable and the predictor variable. I discuss what this means
and how to interpret results from a logistic regression model at

-   [Stats: The concepts behind the logistic regression
    model](../model/logist_concepts.asp),
-   [Stats: Interactions in logistic regression (April
    8, 2004)](http://www.pmean.com/weblog2004/interactions.asp)
-   [Stats: Categorical variables in a logistic regression model (June
    1, 2004)](http://www.pmean.com/weblog2004/categorical.asp)
-   [Stats: Guidelines for logistic regression
    models](../model/logistic.asp), and
-   [Stats: SPSS dialog boxes for logistic
    regression](../model/logist_spss.asp).

I also have a cautionary tale about overfitting in the context of a
logistic regression model:

-   [Stats: Overfitting](../model/overfit.asp)
