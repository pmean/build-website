---
title: "What does large mean when talking about negative values?"
author: "Steve Simon"
source: "http://blog.pmean.com/large-negative/"
date: "2017-10-13"
categories:
- Blog post
tags:
- Diagnostic testing
- Human side of statistics
output: html_document
page_update: partial
---

*Dear Professor Mean, I saw a paper where the authors said that they
wanted a diagnostic test with a large negative likelihood ratio, because
it was important to rule out a condition. False negatives mean leaving a
high risk condition untreated. But don't they mean that they want a
diagnostic test with a small likelihood ratio?*

<!---more--->

Okay, I agree with you, but it's an understandable mistake. Let's
quickly review the idea of likelihood ratios. A positive likelihood
ratio is defined at Sn / (1-Sp) where Sn is the sensitivity of the
diagnostic test and Sp is the specificity. For a diagnostic test with a
very high specificity, you get a very large ratio, because you are
putting a really small value in the denominator. For Sp=0.99, for
example, you would end up getting a positive likelihood ratio of 50 or
more (assuming that Sn is at least 0.5).

The positive likelihood ratio is a measure of how much the odds of
disease are increased if the diagnostic test is positive.

A negative likelihood ratio is defined as as (1-Sn) / Sp. For a
diagnostic test with a very large sensitivity, the negative likelihood
ratio is very close to zero. For Sn=0.99, the likelihood ratio is going
to be 0.02 or smaller, assuming that Sp is at least 0.5.

The negative likelihood ratio is a measure of how much the odds of
disease are decreased if the diagnostic test is negative.

The two likelihood ratios should remind you of the acronyms SpIn and
SnOut. SpIn means that if specificity is large, then a positive
diagnostic test is good at ruling in the disease. This isn't always the
case, sadly, and for many diagnostic tests, the next step after a
positive test is not to treat the disease, but to double check things
using a more expensive or more invasive test.

SnNout means that if the sensitivity is large, then a negative
diagnostic test is good at ruling out the disease. You can safely send
the patient home in some settings, or start looking for other diseases
in different settings.

That sounds great, but sometimes you are very concerned about false
negatives, and you don't want to send someone home if they actually have
the disease. If you are worried about a cervical fracture, ruling out
the fracture and sending someone home might lead to paralysis or death
if you have a false negative. So you want to be very sure of yourself in
this setting.

Now with regard to the comment above, I think it is just a case of
careless language. When the authors say "large negative likelihood
ratio", they should have said "extreme negative likelihood ratio"
meaning a likelihood ratio much much smaller than one. I've done it
myself when I talk about a correlation of -0.8 as being a "big"
correlation because it is very far away from zero.

We tend to shy away from words like "small" when we talk about a
negative likelihood ratio being much less than 1, because "small" in
some people's minds means "inconsequential" when the opposite is true.
When I am careful in my language, I try to use the word "extreme" to
mean very far away from the null value (1 for a likelihood ratio or 0
for a correlation) rather than "large" or "small".


