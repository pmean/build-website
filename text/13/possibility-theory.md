---
title: "Is Possibility Theory better than Probability Theory?"
author: "Steve Simon"
source: "http://blog.pmean.com/possibility-theory/"
date: "2013-12-09"
categories:
- Blog post
tags:
- Bayesian statistics
output: html_document
page_update: complete
---

Someone on a LinkedIn group posted a question about "Possibility Theory." The question itself had a lot of hype, claiming that "time has expired for Probability Theory." Still, it is an interesting question and here's how I responded.

<!---More--->

Possibility Theory is defined in several places and the [Wikipedia article][wik1] is as good a place to start as anywhere. There is uncertainty associated with any probability statement. Rather than a precise mathematical value, our assessment of the likelihood of a particular event is "fuzzy." So you can assign two numbers to an event, the possibility and the necessity, with the former being larger than the latter. The spread between the necessity and the possibility is a measure of the fuzziness or uncertainty associated with the probability of a particular event.

Possibility Theory lead to some interesting properties such as the possibility of an event and its complement adding up to more than 1.0. This is not necessarily bad, but it is something that you need to be comfortable with if you are going to adopt this approach.

Some people like Possibility Theory because it is more general than Probability Theory. But it is unclear to me whether there are any pragmatic examples where Possibility Theory provides a different and better answer than Probability Theory. In particular, there is a way in a Bayesian model to adapt Probability Theory to quantify the degree of uncertainty or fuzziness associated with a certain event. It's not the same as Possibility Theory, but I'm not convinced that you can't model a complex setting just as well with a Bayesian approach.

Another problem I have with Possibility Theory is that I know several ways of you can assign a probability to an event. You can, for example, pose some hypothetical wagers and see which side of the wager someone wishes to take. Or you can calculate a probability using the product of several independent components. Or you can think of the probability as a long-run average.

Is there a simple way of assigning both a possibility and a necessity to an event? The only way I think you can do this is to use a SWAG. Now, I use SWAGs all the time, but that doesn't mean I like them. And I try, whenever possible, to replace a SWAG with something more defensible.

Maybe some of the readers of this blog have seen interesting applied examples where Possibility Theory has produced interesting results. I'm a minimalist, and I tend to shy away from more complex models unless the simpler models do serious violence to the data. But if there are good examples out there, I might change from being skeptical about Possibility Theory to advocating its use in some settings.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/possibility-theory/
[sim2]: http://blog.pmean.com

[wik1]: http://en.wikipedia.org/wiki/Possibility_theory
