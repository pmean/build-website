---
title: "Claims lacking specificity are meaningless"
author: "Steve Simon"
source: "http://blog.pmean.com/claims-lacking-specificity/"
date: "2013-12-10"
categories:
- Blog post
tags:
- Critical appraisal
output: html_document
page_update: complete
---

I recently encountered a claim about the unlimited applications for a new statistical model. I, for one, tend to view "unlimited applications" as a negative comment rather than a positive comment. Any new model that pretends to be applicable in all areas is probably applicable in no areas. Here's why.

<!---More--->

Applications that make unlimited claims lack specificity. It is specificity that is one of the nine criteria set forth by Sir Austin Bradford Hill in 1964 to establish a causal relationship. If an exposure is associated with a specific disease, you are more likely to believe that it is a causal exposure. An exposure that is associated with all diseases is less likely to be a causal exposure. It indicates instead a systematic bias in patient selection where the sicker patients are allocated to the unexposed group and the healthier patients are allocated to the exposed group.

You can actually exploit specificity to your advantage in a research design. Suppose you are studying exposure to carbon monoxide (CO) in a group of toll booth workers. There are certain effects of CO exposure, such as headaches, weakness, and nausea. So you should look at all these outcomes in your study. If these rates are elevated in the toll booth workers compared to your control group, that is evidence that CO poisoning may be a problem.

But you should also look at other outcomes that are unrelated to CO poisoning. Ask about muscle pain, rashes, coughing, sneezing, fevers, and so forth. If toll booth workers are elevated on these measures, you need to worry that maybe this is a group that tends to report all sorts of problems, not just problems associated with CO poisoning. Hey, if I worked in a toll booth all day, I'd be pretty grumpy. I'd tend to complain about anything and everything. I'm not sure if that's true for others, but when you see an elevated rate in all problems, and not just in problems specific to CO poisoning, then you should worry about some type of systematic bias. In contrast, showing an increase in rates associated with CO poisoning and stability in rates not associated with CO poisoning greatly strengthens your claim that toll booth workers are experiencing problems with CO relative to your control group.

There are exceptions to this rule about specificity, of course. An exposure that hampers your immune system would lead to a broad range of bad effects. But even here, you should still look for specificity. Some medical problems are caused by something other than an infectious agent, and these problems should not appear when you are looking at an exposure that compromises your immune system.

In an [earlier entry on my website][sim3], I noted a problem of lack of specificity in claims of problems that can be cured with craniosacral therapy.

> "Impingement of cranial nerves or spinal nerves, left-right imbalances, head injuries, confusion, feelings of compression or pressure, anxiety, depression, circulatory disorders, organ dysfunctions, learning difficulties, neuro-endocrine problems, TMJ and dental problems, and trauma of all kinds --- birth, falls, accidents and other injuries, physical, sexual or emotional abuse, PTSD, loss/grief, surgery, anesthesia --- all are good indicators that a visit to your craniosacral therapist will be helpful."  [Note 2024-05-30: the link to this quote is broken]

This list is so long that it makes it impossible to believe. This list lacks specificity. Any therapy that claims to cure everything probably cures nothing. A more credible list would be narrower. It would be even better if it included contra-indications for treatment.

Now the claim that a specific statistical model has unlimited applications is also problematic for the same reasons. No model works for an unlimited number of applications. It would have been better to specify the types of statistical problems where this model works well and either implicitly or explicitly state the types of statistical problems where the model may not work well.

This is a common problem with new data mining tools. These tools are sometimes claimed to be able to solve every type of problem out there. Their proponents would be better off making specific claims, such as "this model works well in an supervised learning setting with a large number of categorical predictors." Such a statement would exclude unsupervised learning and models with mostly continuous variables and would, therefore, be more credible.

So be careful when you advocate something. If you make very specific claims rather than broad sweeping claims, we are more likely to believe you.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/claims-lacking-specificity/
[sim2]: http://blog.pmean.com

[sim3]: http://www.pmean.com/04/Craniosacral.html
