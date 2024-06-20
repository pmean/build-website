---
title: More than 90% censored values
author: Steve Simon
date: 2005-04-22
categories:
- Blog post
tags:
- Survival analysis
output: html_document
page_update: partial
---

Someone asked me about running a Cox proportional hazards regression model when over 90% of the observations were censored. That means (if the outcome of interest was death), that your research subjects did not cooperate and die fast enough. Good news from the patients' perspective, but bad news for the statistician.

90% censored observations is not a problem, though, as long as your sample size is adequate. As a rough rule of thumb, you need to have 25 to 50 events (uncensored observations) in each treatment group to have reasonable precision. Of course, if you have fewer events, the model is still valid, but your confidence intervals may end up being wider than you'd really like.

This person also asked if logistic regression would be a better option in this case. In logistic regression, you code the data as 0 or 1 depending on whether the event occurred and do not include any information about the time of the event. Logistic regression is okay except you lose information when you ignore the time of the event. If both groups have the same number of events, but one group has the events occur much earlier, you will not be able to pick up this type of difference in a logistic regression model. Furthermore, logistic regression will have the same general sample size requirements (25 to 50 events in each group) as a Cox regression model.

I got another email back asking if the Cox regression model didn't have the underlying assumption that eventually, everyone experiences the event. That's okay for a mortality study, but what if the event is some disease, and a large number of patients never get the disease.

There really isn't anything in the framework of the Cox regression model that requires 100% of the patients to experience the event. As I understand it, this is not the case. The Cox regression model can be formulated in terms of two counting processes. The two processes are,

- $N_i(t)$ = number of events for patient i in the time interval from 0 up to and including t .
- $Y_i(t)$ = 1 if patient i is under observation and at risk at time t, 0 otherwise.

Looking at how N and Y are defined, I see nothing that implies that N eventually has to equal 1 for a large enough value of t. The model is still well defined if, no matter how long you wait, the probability that N equals 1 never creeps above 10% or even 1%.

Another way to think of this is that you could, if you wanted to, define a hazard function that equaled zero after a certain amount of time. Such a hazard function would imply that if you failed to have an event by a certain time, you chances of still having the event would become zero.

By the way, in a typical mortality study, the two processes are linked in that once a patient dies, the researcher stops observing that patient. But in other studies involving infection, hospitalization, etc., this formulation allows for multiple events per patient. You continue to monitor the patient after the first infection, because there is a chance of eventually seeing a second or a third infection. These types of studies with more than one event possibly occurring per patient are quite messy, because you often have to account for heterogeneity among patients. Some patients are more infection prone and are at greater risk of infection than other patients. The models that account for this source of heterogeneity are called frailty models.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/CensoredValues.html
[sim2]: http://www.pmean.com/original_site.html
