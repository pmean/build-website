---
title: "Odds ratio with a zero in the table"
author: "Steve Simon"
source: "http://blog.pmean.com/zero-in-table/"
date: "2016-01-19"
categories:
- Blog post
tags:
- Ask Professor Mean
- Measuring benefit and risk
output: html_document
page_update: complete
---

### Dear Professor Mean,

I have a data set where 94 out of 100 patients with cancer have activation of a gene, while 0 out of 50 of the controls have activation. When I compute the odds ratio, I get (94\*50) / (6\*0) = 4700 / 0 = ???. What should I do?

<!---More--->

### Dear reader,

Whatever you do, don't run that last calculation. Your computer will explode, it will take down the entire Internet with it, and we'll all end up living in caves. Either that or you'll get a brief error message.

Seriously, this happens all the time. Any positive number divided by zero is infinite. So simply state that the odds ratio is infinity. Go ahead and use the word, infinity, an abbreviation like Inf, or that sideways 8 symbol. Then use Fisher's Exact test to calculate the statistical significance. Looking at your data, I think that a p-value is overkill here, but calculate it anyway to make things official. Here's an example of what you might write:

**There was a strong association between gene activation and cancer (OR=Infinity, P\<0.0001).**

There are also ways that you can place a confidence limit around this odds ratio, but it typically requires specialized software. Some people recommend that you add a small value to each cell (usually 0.5) before calculating the odds ratio. I can't recommend that approach (too ad hoc), but will note that some people think it is a good solution.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/zero-in-table/
[sim2]: http://blog.pmean.com
