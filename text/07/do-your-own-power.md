---
title: Do your own power and sample size calculations
author: Steve Simon
source: http://www.pmean.com/07/DoYourOwnPower.html
date: 2007-01-30
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: complete
---

Someone asked me for some power calculations and the problem was stated very tersely and completely.

*Alpha .05, Power 0.8. What is sample size to detect an outcome difference of 20% vs 30% for an adverse event. Thank you.*

Usually people have difficulty in elaborating the conditions of the power or sample size calculation, and I am always glad to help with that process. But if you already know the conditions, you can find very nice web sites that will do power calculations for you. One of my favorite sites is

+ **[Java applets for power and sample size][len1]**. Russ Lenth, University of Iowa. Accessed on 2007-01-30. *Each selection provides a graphical interface for studying the power of one or more tests. They include sliders (convertible to number-entry fields) for varying parameters, and a simple provision for graphing one variable against another.*

Here is a screen shot showing that a sample of 294 patients in each arm of the study would be needed to achieve 80% power

![Figure 1. Screenshot of Javal applet](http://www.pmean.com/new-images/07/DoYourOwnPower01.gif)

I made two assumptions

1.  Equal sample size in each arm of the study.
2.  Two-sided test.

If either of those assumptions was incorrect, then I would have to rerun the calculations.

I'm always glad to help people by running programs like this myself, but for anyone who likes to do things on their own, the web based calculators like the one shown here are very good and very easy to use.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/DoYourOwnPower.html
[sim2]: http://www.pmean.com

[len1]: http://www.stat.uiowa.edu/~rlenth/Power/