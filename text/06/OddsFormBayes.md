---
title: Mathematical derivation of the odds form of Bayes theorem
author: Steve Simon
source: http://www.pmean.com/06/OddsFormBayes.html
date: 2006-10-16
categories:
- Blog post
tags:
- Diagnostic testing
output: html_document
page_update: partial
---

I had included some rather technical details on my web page about
likelihood ratios, but I thought it would be best to move it to a
separate page. Define the following terms:

![](http://www.pmean.com/new-images/06/OddsFormBayes01.gif)

![](http://www.pmean.com/new-images/06/OddsFormBayes02.gif)

With this notation, we can describe all the classic measures for
diagnostic tests:

![](http://www.pmean.com/new-images/06/OddsFormBayes03.gif)

![](http://www.pmean.com/new-images/06/OddsFormBayes04.gif)

![](http://www.pmean.com/new-images/06/OddsFormBayes05.gif)

![](http://www.pmean.com/new-images/06/OddsFormBayes06.gif)

![](http://www.pmean.com/new-images/06/OddsFormBayes07.gif)

![](http://www.pmean.com/new-images/06/OddsFormBayes08.gif)

Bayes Theorem, a classic result of probability theory, tells us that

![](http://www.pmean.com/new-images/06/OddsFormBayes09.gif)

![](http://www.pmean.com/new-images/06/OddsFormBayes10.gif)

Notice that the denominators are the same for the above two fractions.
So when you compute the ratio of these two probabilities, you get

![](http://www.pmean.com/new-images/06/OddsFormBayes11.gif)

When the test is negative, we get a similar result:

![](http://www.pmean.com/new-images/06/OddsFormBayes12.gif)

Note that Se/(1-Sp) is the formula for the likelihood ratio of a
positive result and that (1-Se)/Sp is the formula for the likelihood
ratio for a negative result.
