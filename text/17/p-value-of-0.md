---
title: "A p-value of .000"
author: "Steve Simon"
source: "http://blog.pmean.com/p-value-of-0/"
date: "2017-05-08"
categories: Blog post
tags:
- Ask Professor Mean
- Hypothesis testing
output: html_document
page_update: complete
---

#### Dear Professor Mean,

I ran a statistical test in SPSS and got a p-value of .000. I re-ran the same data in Microsoft Excel and got a p-value of 3.9433E-9. I know from scientific notation that this is the same as 0.0000000039433. Why are these numbers different?

<!---More--->

#### Dear Reader,

Before I say too much I have to point out that many statisticians hate, hate, hate Microsoft Excel. There are [good reasons for this][exc1]. But for your analysis, it might be okay.

The discrepancy that you are seeing is due to rounding. When SPSS reports a p-value that prints as .000, it means that when you round to three decimal places it is closer to .000 than it is to .001. So you know the p-value is smaller than .0005. A p-value of 0.0000000039433 is also smaller than .0005. So the two p-values are consistent.

As a general rule, I round any p-value smaller than .001 up to .001. Some people think that very small p-values should be reported in all their microscopic glory because they make the results seem more impressive. It's almost like a competition. Ha! My p-value has more zeros in front of it than your p-value. But beyond three decimal places, the p-value is extremely sensitive to even very minor departures from the underlying assumptions.

There are a few exceptions to this in Physics and Genetics, but reporting more precision in your p-value than you really need marks you as an amateur. So be a reasonable person and report the p-value as .001.

Some people might prefer p \<.001 and I won't complain about that. But never, never, never use scientific notation on very small p-values to give your p-value a false sense of precision.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/p-value-of-0/
[sim2]: http://blog.pmean.com

[exc1]: http://people.umass.edu/evagold/excel.html
