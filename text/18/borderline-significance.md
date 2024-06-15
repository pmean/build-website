---
title: "What to do about claims of borderline statistical significance"
author: "Steve Simon"
source: "http://blog.pmean.com/borderline-significance/"
date: "2018-09-21"
categories:
- Blog post
tags:
- Hypothesis testing
output: html_document
page_update: complete
---

A comment about the phrase "trend towards efficiency" on the Statistical Consulting Section discussion board raised a lot of interesting commentary. The phrase refers to a setting where the p-value is not small enough to allow you to claim statistical significance, but still was close enough to 0.05 to be worth commenting on. Most of responses were fairly negative and stressed that we need to refuse to sign off on any report of publication using that phrase. I posted a response that differed from the others. Here's the gist of what I said.

<!---More--->

There are several reasons why we should encourage the use of terms like "trend towards efficacy" or (one I've seen more often) "borderline statistical significance."

First, we statisticians have been at the forefront of trying to get researchers to recognize the arbitrariness of the alpha=0.05 cutoff. In a class on survival analysis, I recently used a data set where the Wald test gave a p-value of 0.0491 and the likelihood ratio test gave a p-value of 0.0527. I argued that the two p-values were saying pretty much the same thing. Some researchers (and apparently some statisticians) think that we should say something very different about 0.0527 versus 0.0491. This is a mistake. I'd be happier if researchers used the term "borderline" to refer to anything that comes within kissing distance of 0.05 whether from the left side or the right side. But if someone recognizes that a p-value slightly larger than 0.05 is still worth discussion, I think that is a step in the right direction.

A term like "trend towards efficacy" tends to minimize the "black and white" nature of hypothesis testing. If you want to draw a "black" conclusion for p-values greater than 0.10, a "gray" conclusion for p-values between 0.05 and 0.10, and a "white" conclusion for p-values smaller than 0.05, that's an improvement because a trichotomy always throws away less information than a dichotomy.

Second, researchers tend to focus too much on the p-value and not enough on other pieces of evidence to support or refute their hypothesis. Things like plausible mechanisms, consistency with other findings, dose-response patterns, etc. What I've noticed is that scientists are very eager to bring in other evidence like mechanisms when they have a "borderline" p-value. That's a habit that we want to develop and encourage. If they get in the habit of doing this for "borderline" p-values, they may eventually adopt these approaches for p-values that are not borderline.

Finally, I believe that the recommendation of Dr. Bristol makes us appear arrogant to our colleagues. We are saying that most readers of this research are stupid and need to be protected by us from drawing false conclusions about a p-value of 0.08. In my experience, most readers are pretty smart at interpreting Statistics. They do not over react to a borderline p-value. They approach it cautiously and try to bring other evidence to bear on the problem.

One of my teachers from the University of Iowa made the interesting observation that statisticians are the guardians of the scientific method. This is a great quote, but I think with it comes a bit too much pride. Others also have a mission of upholding the scientific method, and we should not dictate to them and lecture them too much. We are getting self-righteous about a choice of words that is already well established in the research community, is well understood by the research community, and is treated with an appropriate amount of skepticism.

We should also view the "borderline" p-values as a teaching opportunity. In particular, the confidence interval becomes very important in these settings. More important than the location of the p-value relative to 0.05 or 0.10 is the location of the upper confidence limit relative to the minimum clinically important difference. So if someone wants to use the phrase "trending to efficacy," that's okay but they should also talk about whether the confidence interval, though including the null value, still stretches up far enough to include values that are clinically important.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/borderline-significance/
[sim2]: http://blog.pmean.com