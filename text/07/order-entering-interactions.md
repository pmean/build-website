---
title: The order of entering interactions into a model
author: Steve Simon
date: 2007-09-20
categories:
- Blog post
tags:
- Logistic regression
output: html_document
page_update: complete
---

### Dear Professor Mean,

I like your titanic example! But shouldn't you enter the interaction term on a second step following entry of the main effects on the first step? If you enter the terms all at the same time, the interaction term will compete for variance with the two main effects on which is depends.

### Dear Reader,

This is an interesting question. You have to be a bit careful with logistic regression because “competing for variance” is a bit hard to define when your outcome variable is binary. Nevertheless, I understand your concern.

In a balanced design, the contrasts associated with the interaction term are orthogonal to the main effects. So for a balanced design, how and when you enter the interaction term in the model is of no direct concern.

In an unbalanced design, you could still have orthogonality. Consider the following design

```
 A  B A*B
-2 -2  4
-2  1 -2
-2  1 -2
 1 -2 -2
 1  1  1
 1  1  1
 1 -2 -2
 1  1  1
 1  1  1
```

It’s unbalanced, but the contrast for the interaction is orthogonal to the contrasts for the main effects.

I suspect you could find an unbalanced design where the contrasts for the interaction are not orthogonal to the contrasts for the main effects, but I doubt that it would deviate substantially from orthogonality.

In a linear regression model, even lack of orthogonality is not an issue. The p-value in a linear regression model typically represents a test based on partial sum of squares. As such, it is testing the effect of the interaction after adjusting for the two main effects. It is not clear to me if you can draw a similar analogy to logistic regression, because there is no such thing as a partial sum of squares in logistic regression. Nevertheless, I believe that the logistic regression model is testing the effect of the interaction after adjusting for the two main effects.

So you don’t have to worry? Well, not so fast. The test of main effects in the presence of an interaction is a bit problematic. What does it mean to test for Factor 1 after adjusting for Factor 2 and the interaction between Factors 1 and 2? I’m not sure and I’d be very cautious about the interpretation of the main effects in a model with an interaction.

One thing that you should always avoid, of course, is fitting an interaction in a model that does not include contrasts for one or both of the main effects. The interpretation of such a model is quite difficult and you may end up with results quite different than you had expected.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/07/OrderEnteringInteractions.html
[sim2]: http://www.pmean.com/original_site.html
