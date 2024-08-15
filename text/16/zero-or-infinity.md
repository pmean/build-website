---
title: "Is my odds ratio zero or infinity?"
author: "Steve Simon"
source: "http://blog.pmean.com/zero-or-infinity/"
date: "2016-03-30"
categories: Blog post
tags:
- Measuring benefit and risk
output: html_document
page_update: complete
---

### Dear Professor Mean, 

I know you told me that when one of the row probabilities in a two by two table is 0% or if one of the row probabilities is 100%, then the odds ratio is either 0 or infinity? But how do I tell which?

<!---More--->

### Dear Reader,

It depends on how you define odds and what you place in the numerator versus the denominator. Here's a simple example to orient yourself. On the Titanic, there were 851 male passengers and 462 female passengers. This ship sailed in an era when people actually believed in the concept "women and children first". So the death rate was very high among the men. 709 men died and only 142 lived. Among the men, there were almost five deaths for every one survivor. This means almost a 5 to 1 odds in favor of death among males (4.993 to 1 if you want to be precise).

A lot of women died also, 154 to be exact, but more women (308) survived. Among the women there were exactly 2 survivors for every death. This means exactly a 2 to 1 odds in favor of survival among women.

Now how you compute the odds ratio depends on two factors:

+ whether you consider the odds in favor of death or the odds in favor of survival, and
+ which odds you put in the numerator of the odds ratio.

Let's look at one possible case: odds in favor of death and the odds for men in the numerator.

Odds ratio = (5 to 1) / (1 to 2) = 5/0.5 = 10 (actually 9.986 without rounding).

But you could look at odds in favor of survival and odds for men in the numerator.

Odds ratio = (1 to 5) / (2 to 1) = 0.2/2 = 0.1 (or 0.1001 without rounding).

There are two more cases. One is odds in favor of death and odds for women in the numerator.

Odds ratio = (1 to 2) / (5 to 1) = 0.5/5 = 0.1 

The last case is odds in favor of survival and odds for women in the numerator.

Odds ratio = (2 to 1)/(1 to 5) = 2/0.2 = 10.

Now this is something that you'll have to get used to. The odds ratio of 10 and the odds ratio of 0.1 are the flip sides of the same coin. These are complementary ratios. Get used to it. Half of the software packages out there will compute an odds ratio of 10 and the other half will compute an odds ratio of 0.1.

Some people try to standardize the notation for odds ratios. The Cochrane Collaboration defines an odds ratio in such a way that for any efficacy measure, if the new treatment is superior, it is associated with an odds ratio less than 1. But not everyone does it the Cochrane way.

So the answer to your question, "Is my odds ratio zero or infinite?" is "yes!"

Let's be more specific, though. If you are looking at the odds of death in a group where everyone dies (compared to a group where there's a mix of deaths and survivors), AND the odds for that group is placed in the numerator for all your other odds ratios, then you have an odds ratio with an infinite odds in the numerator and a finite odds in the denominator. That creates an infinite odds ratio.

BUT, if you are looking at the odds of survival instead then your odds ratio has a zero odds in the numerator and a finite (non-zero) odds in the denominator, which makes your odds ratio zero.

If you have an infinite odds in the denominator, then your odds ratio is zero. Finally, if you have a zero odds in the denominator, then your odds ratio is infinite.

The only case you can't handle is when both groups have 100% survival or 0% survival. This forces you to divide infinity by infinity or zero by zero. Either way, your result is indeterminate.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/zero-or-infinity/
[sim2]: http://blog.pmean.com
