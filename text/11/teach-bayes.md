---
title: How you can teach Bayesian methods in an introductory Statistics class and why you should
author: Steve Simon
date: 2011-10-17
categories:
- Blog post
tags:
- Bayesian statistics
output: html_document
page_update: complete
---

There's been a discussion among members of the Statistics in Epidemiology Section of the American Statistical Association about what topics should be covered in an introductory Statistics class. Within that discussion there has been a polite but heated debate about whether it is worthwhile to teach Bayesian methods in such a class. Some people were for it, but others thought it would be too confusing. Here's what I wrote about the topic.

<!---More--->

I'm not a Bayesian, partly because every time I try to understand Bayesian arguments it gives me a headache. Even so, I think that Bayesian methods should be taught as a part of an introductory course in Statistics.

A colleague of mine showed me a paper he had written about introducing Bayesian methods about around the time that you introduce one factor ANOVA. It's a good time to start this because you've already shown them a few classical approaches to hypothesis testing (various forms of the t-test and tests involving one and two proportions). So they are ready at this point to tackle something more complex.

I marked up his copy of the paper something fierce and did this to a second and third draft, and he liked the comments so much that he offered to make me a co-author (thanks Byron!). Anyway, you can find that paper at

Gajewski BJ, Simon SD. A One-Hour Training Seminar on Bayesian Statistics for Nursing Graduate Students. The American Statistician. August 1, 2008, 62(3): 190-194.

I've not had the chance to use this approach because I only teach one and two hour stand alone seminars. But I did try to use an approach first suggested in

Jim Albert. Teaching Inference about Proportions Using Bayes and Discrete Models. Journal of Statistics Education. 1995;3(3). Available in [html format][alb1].

I used the ECMO example and I probably mangled it, but you can see some PowerPoint slides on [my webinar page][sim3] (Go to 2010-09-23 webinar).

I've done this a couple of other times with mixed results. It has been in a two-hour webinar, but I've also crammed it in to the second hour of a talk that discussed p-values and confidence intervals in the first hour.

I do think that a student needs to have a good understanding of general concepts in Bayesian data analysis. It's not because I find the traditional approach to be fatally flawed. In fact, I find much of the debate about p-values to be demotivating. Seriously demotivating. It always ends up in an abstract discussion of the philosophy of science and makes me think that Bayesians are more interested in being right than being popular.

I believe we need to teach Bayesian approaches not because of problems in the classical approach but because Bayesian methods provide answers to many complex problems in Statistics where a classical approach is convoluted or impossible. There are attractive Bayesian solutions to herarchical models where the classical approach is to create random effects and then create BLUPs to go along with the BLUEs (if you don't know what these acronyms are, you are lucky!). Bayesian methods allow you to combine studies in a meta-analysis where some studies are of lower quality. Bayesian methods provide an attractive solution to the Missing Not At Random (MNAR) case. Bayesian methods provide simple approaches for adaptive randomization. Bayesian methods can correct for the deficiencies in stepwise based model selection procedures. Bayesian methods provide an attractive framework for the positive false discovery rate. Bayesian methods provide shrinkage estimates for small area estimation.

Now an introductory class will not discuss any of these advanced topics, but we do need to set the framework so that the first time a student sees these advanced approaches, they can handle them better. The Bayesian approach is a very useful approach for solving a broad range of statistical problems. It deserves to be mentioned in an introductory class.

More importantly, a student without an understanding of prior and posterior distributions will never be able to read and understand a paper using Bayesian methods. Bayesian methods are being used in the peer-reviewed literature and they will become an increasing percentage of all data analysis over time.

In a traditional 3 semester hour class, I'd suggest that one week would be worth devoting to Bayesian data analysis. Will it be easy? No. But it does need to be done.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/TeachBayes.html
[sim2]: http://www.pmean.com/original_site.html 

[alb1]: http://www.amstat.org/publications/jse/v3n3/albert.html
[sim3]: http://www.pmean.com/webinars/archive.html