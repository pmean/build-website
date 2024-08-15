---
title: "Never consult by email if you can help it"
author: "Steve Simon"
source: "http://blog.pmean.com/consult-by-email/"
date: "2016-07-27"
categories: Blog post
tags:
- Human side of statistics
output: html_document
page_update: complete
---

Consulting is always a back and forth process and often you will find yourself re-working things because of communication problems. That's okay, but keep in mind that communication problems are even worse when they are done solely through email. Sometimes you have to consult this way, but it greatly increases the amount of rework needed. Here's an example.

<!---More--->

I was helping out a client who is working on several grants. So I've gotten some data from him, some sample programs for an analysis that was run elsewhere, and some other documentation. We last met a couple of weeks ago, and I've been scanning and storing all the emails that have been coming my way since then.

So I get an email on Friday asking how my progress was coming on a sample size justification. Panic time! What sample size justification? I go through my emails and assemble all of the attachments in a single folder and print a few PDF files of key email messages. I think I missed something in one of the earlier emails, but I can crank out the sample size justification without too much delay. Most sample size justifications take me about 15 minutes.

There's a fly in the ointment, though. This is a study that needs a p-value adjustment known as the Benjamini-Hochberg false discovery rate (I've [written about it before][sim3], and I might write something new about it in the next couple of days). So I take a data set with 20 rows and 1431 columns and crank out some numbers. I was hoping that I could justify the sample size based on the ultra-conservative Bonferroni adjustment, but the numbers just didn't work. So I remind myself how to do the false discovery rate calculations, run a quick simulation and get the results.

I'm quite proud of myself and write to the client while the simulation is running that I should have some answers soon. So he writes back, are you using the experiment-X data (names changed to protect the innocent) or the experiment-Y data? I write back that because experiment-X and experiment-Y are so similar, it is probably safe to use either data set because we extrapolate all the time when we do sample size justifications. In particular, even if X and Y have different means, it is not too unlikely that the standard devations are close because both are using the same outcome measure. And even better, I point out that the control groups are likely to be as close a match as you can get.

Then I do a panicked search through all my old emails. I have the experiment-X data, but where is the experiment-Y data. I find the same experiment-X data stored as attachments with slightly different names, but experiment-Y data is nowhere to be found.

I get another email back from the client stating that his collaborator is still working on the experiment-Y data. Well, "working on" is a bit ambiguous, as it could mean working on cleaning and organizing the data or it could mean working on a preliminary analysis. If the latter, I can still run a sample size justification and all the time I invested on the simple simulation of Benjamini and friends should run just fine as long as the data from experiment-Y is structured much like the data in experiment-X. I'm still waiting on a response for this, but as fast as email is, the speed at which we can resolve this issue is glacial compared to doing the same work face-to-face. And if the client was in my office while I was running the simulation, he would have noticed in 30 seconds that I was using experiment-X data instead of experiment-Y data.

I'm not blaming the client for all this confusion and I am not trying to avoid blame for any problems that I may have caused. Anytime you have communication you have the risk of miscommunication and you may end up having to scrap all the work you've done and start over again. That happens a lot in consulting. I'm writing this up because I have noticed over time that the rework seems to be more common when you are consulting predominantly by email.

So whenever a client wants me to do something, I try to do it while they are watching. Not the tedious data management perhaps, though sometimes I make them watch that but certainly the data analysis. It goes a lot faster and there is a lot less rework. Most clients seem to like watching as I do my work. They understand things at a deeper level than if I just hand them the results in an email attachment. I can also explain things in greater detail and they can ask questions in real time rather than after the fact.

I couldn't arrange a face-to-face meeting for this sample size justification, and that's okay. Just always remember that the time you save by working at home might get lost because of the delays and misunderstandings that crop up more often in email. That shouldn't stop you from using email, but use it consciously and be aware of its limitations.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/consult-by-email/
[sim2]: http://blog.pmean.com

[sim3]: http://www.pmean.com/05/MultipleComparisons.html
