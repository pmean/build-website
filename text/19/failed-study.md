---
title: "Slapping the word pilot on a failed study"
author: "Steve Simon"
source: "http://blog.pmean.com/failed-study/"
date: "2019-03-03"
categories:
- Blog post
tags:
- Early stopping
- Pilot studies
output: html_document
page_update: complete
---

Someone was asking on the MedStats listserv about a study that had gone off the rails. They had recruited only about a third of the patients that they had wanted. Things were going pretty well in the first arm of the study but the second arm had a dropout rate of 50%.

Anyway, they decided to end the study (good call!) and wanted to know what they should do with the data that they had already collected. There were three options that they were considering (I'm paraphrasing a bit here).

1.  Analyze the study as originally planned including a classic test of hypothesis for the primary outcome.
2.  Call this a pilot study and provide descriptive analyses only.
3.  Recognize that the data is so fatally flawed that any analysis of the data would be inappropriate.

This is what I suggested.

<!---More--->

If you stop a study early because of reasons that are related to the p-value that you are seeing (either so large that you don't see a good reason to move forward or so small that you can longer justify randomizing patients into the inferior arm) you have to be careful about any inferential statistics. The Type I error rate will be too small in the first case or too large in the second case.

If you stop a study for other reasons,  such as slow accrual, the theory is a bit fuzzy, but your Type I error rate should be okay.

Stopping because of a very high dropout rate could be a problem because the dropout rate might be correlated with efficacy. But I would analyze the data normally and then mention all the qualifications and concerns in the discussion section.

If you are a stickler for accuracy you could argue that the data is so flawed that any analysis would be misleading. I've found that most researchers understand and appreciate limitations when they are presented openly and honestly.

So go ahead and analyze the data.

But please, please, please do not stick the label "pilot" on your work. That gives the false impression that pilot studies are just weaker versions of normal studies. No, no, no! A pilot study is intended to produce results that are primarily intended to help for the planning of a second study. It is run with just as much rigor, but only differs in
the goal.

There are too many people who can't afford to run a good study and know that it is way under-powered so they slap the label "pilot" on it to get the study through the IRB. They know it's not a pilot but they want to run the study because of selfish reasons like helping with their tenure and promotion.
