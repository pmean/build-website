---
title: "Simulating power for a test of association in a two by two table"
author: "Steve Simon"
source: "http://blog.pmean.com/simulating-power/"
date: "2016-02-05"
categories:
- Blog post
tags:
- Incomplete page
- Sample size justification
output: html_document
page_update: complete
---

In an earlier blog post, I slogged through the calculation of power for a test of association in a two by two table. You can also approximate power using a simulation. It is done quite easily in R, but I want to show it in SPSS. Why? Just because.

<!---More--->

First set up a column in SPSS that represents a counter for each row. It should go from 1 to 10,000, but for the sake of simplicity, I am only showing the first ten rows. Now, you don't have to type the numbers 1 to 10,000. Open an Excel spreadsheet, put 1 in the top leftmost cell, 2 in the cell beneath it, highlight both cells, and then extend down to 10,000. Import this file into SPSS.

![](http://www.pmean.com/new-images/16/simulating-power01.png)

Now, we want to compute the power of a test of association in a two by two table where the treatment group has 200 patients and a probability of success of 60% and the control group has 100 patients and a probability of success of 50%. We want a one-sided test at an alpha level of 0.05. First simulate the number of successes in the treatment group as binomial with n=200 and p=0.6.

![](http://www.pmean.com/new-images/16/simulating-power02.png)

Next simulate the number of success in the control group as binomial with n=100 and p=0.5.

![](http://www.pmean.com/new-images/16/simulating-power03.png)

Calculate the difference in proportions

![](http://www.pmean.com/new-images/16/simulating-power04.png)

and the standard error.

![](http://www.pmean.com/new-images/16/simulating-power05.png)

Then calculate for each row whether you exceeded the 0.95 percentile of a standard normal distribution.

![](http://www.pmean.com/new-images/16/simulating-power06.png)

Here's what the first few rows of your simulation look like.

Now tally your results.

Hey look at that. You rejected the null hypothesis exactly 50% of the time. That means that your power is 50%. Re run this simulation with twice as many subjects in each group. What do you get? 

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/simulating-power/
[sim2]: http://blog.pmean.com
