---
title: Unrealistic scenarios for sample size calculations
author: Steve Simon
date: 2011-12-20
categories:
- Blog post
tags:
- Sample size justification
output: html_document
page_update: complete
---

I'm not a doctor, so when someone presents information to me about the clinically important difference (a crucial component of any sample size justification), I should just accept their judgement. After all, I've never spent a day in a clinic in my life (at least not on the MD side) so who am I to say what's clinically important. Nevertheless, sometimes I'm presented with a scenario where the clinically important difference is so extreme that I have to raise a question. Here's a recent example.

<!---More--->

Somone was looking at a study of pain relief. A standard drug was being compared to a combination of that drug and a second new drug. The outcome was the proportion of patients who needed additional analgesic relief, which is a binary outcome. It's odd that the researcher is not using a continuous outcome, like pain measured on the visual analog scale, but I didn't comment on that. What I did comment on though, was the researchers expectations for the proportion needing extra analgesic relief in both groups. In the first group, he expected 30% of the patients to need additional analgesic relief. In the second group, he expected 0% to need additional analgesic relief. 0% seemed like a really extreme value to me. I'd be very surprised if there were absolutely no treatment failures in the second group. No drug, even in combination with another drug, is perfect, is it?

But a more important question is why this researcher chose 0% for the expected proportion in the second group. What you are supposed to specify in a sample size calculation like this is the minimum clinically important difference. That's the difference that is just barely large enough to get the attention of the clinical community and to convince them to change their clinical practices. Any difference smaller than the minimum clinically important difference is clinically trivial and would represent a change so small that there would be no desire to change your clinical practice.

I'd be very surprised that someone would not adopt the combination therapy if it cut the proportion of patients needing additional analgesic relief in half from 30% to 15%. Wouldn't that be a large enough difference to change your practice? If not, wouldn't a three fold reduction be clinically important. You're reducing the need for additional analgesic medication from 30% to 10%. I'd be shocked if that was considered a clinically trivial change.

I suspect that the researcher is not using the minimum clinically important difference, but is rather using the difference that he expects to see. Now, I don't know enough to answer a question like this, but I can still raise the question. It's important to see how the person answers the question. If they are able to make a strong and coherent argument, then I'm glad to do the sample size calculation for them. But if they hem and haw and offer a weak justification, then I stand my ground.

By the way, if you really want to do a sample size calculation here, you cannot use the traditional power calculation programs. Almost all of them rely on the normal approximation to the binomial distribution, and that approximation does not work when one of the proportions is zero. Instead, you need to use a program that calculates power for the Fisher's Exact test.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/unrealistic.html
[sim2]: http://www.pmean.com/original_site.html 
