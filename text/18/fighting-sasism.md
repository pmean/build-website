---
title: "Fighting SASism"
author: "Steve Simon"
source: "http://blog.pmean.com/fighting-sasism/"
date: "2018-10-30"
categories:
- Blog post
tags:
- R software
- SAS software
output: html_document
page_update: complete
---

I told a story today in a webinar workshop that I thought I should get down in writing for my blog. It involves a prejudice unique among statisticians called SASism.

<!---More--->

Somehow a talk on survival analysis mutated to a discussion of Tobit regression, and I had to share a story from the 1980s that illustrated the narrow-minded thinking that I had back then.

I was working with some very nice (and very smart) Economists back then because I was teaching Business Statistics in the College of Business at Bowling Green State University. We were discussing some data set that had an interesting feature. It had a continuous variable representing something like charitable contributions on your IRS tax form. It was using some sort of independent variables like the taxpayer's age, income, etc.

This is an example of data that can never be negative. I guess it could be negative if you stole money from the collection plate at church on Sunday. Don't do this, by the way.

The other interesting feature is that in addition to non-negative values, there were a whole bunch of values piled up at zero. These were people who did not claim any charitable deductions on their tax returns, either because they were as stingy as Ebenezer Scrooge or because they didn't keep records of their contributions. So it's an odd mix of categorical and continuous data.

The Economists suggested that I use a Tobit model and I had to confess my ignorance. I had never heard of Tobit regression, and I pointed out that SAS could not do Tobit regression with the hidden implication that if SAS couldn't do it, it wasn't important. That comment received a lot of scorn from the Economists, and deservedly so.

For what it's worth, SAS can do Tobit regression today, but the lesson I took from this was not to limit my scope of interest only to statistical models that could run in a single software system, even if it was as good a system as SAS. So I tried my best to not become totally dependent on SAS.

Fast forward to the 1990s and I was attending a talk on post hoc tests for analysis of variance. There's a whole slew of these: Tukey, Scheffe, Duncan, etc., and the speaker ran some simulations of the "most important" of these. But it really was the most important, it was only the post hoc tests that were available in SAS. I knew of several post hoc tests that SAS had not yet included in their package. I didn't say anything, but I realized that this speaker was making the same mistake that I was making a decade earlier. It was then that I coined the term SASism, which I defined as the belief that the only important statistical models are the ones available in SAS.

I've switched from SAS to R, but I've come to notice the same sort of bias among some R users. I'd call it Rism, but that just doesn't have the resonance of SASism.

When I teach these days, I try to do it from a software agnostic perspective. This is not easy, but what you do is try to show examples of the models you are teaching using more than one statistical package. Because no one package, not SAS, not R, not anything, has a monopoly on all the good statistical tools.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/fighting-sasism/
[sim2]: http://blog.pmean.com