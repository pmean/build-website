---
title: "So you're thinking about a pilot study"
author: "Steve Simon"
source: "http://blog.pmean.com/pilot-study/"
date: "2016-06-14"
categories: Blog post
tags:
- Pilot studies
- Research design
output: html_document
page_update: complete
---

If you are designing a retrospective chart review, you should talk to a statistician early in the process. There are lots of statistical issues that you must think about during the concept development phase of your research. Here is a broad overview of these issues.

<!---More--->

First things first. Some of you who are reading this page were originally going to do a "regular" research study, but then you realized that your budget was too small to get the sample size that you really needed.? It's not just the sample size that you can afford is just a little bit small. Your sample size is so small that your chances of finding something interesting are next to impossible. But you really, really, really want to do this study.

So you put the label "pilot study" on your research and hope that somehow you can get the research approved by your boss and the regulatory review boards and anyone else who might otherwise try to talk sense into you.

Please don't go down that road. If your sample size is inadequate for testing a particular hypothesis, consider testing a related hypothesis that still answers a question that you're interested in. For example, you might use a surrogate outcome. Surrogate outcomes have a bad reputation in the research community, but this is only partly deserved. The big benefit of surrogate outcomes is that you can usually measure them cheaply, quickly, and with greater precision than more direct outcome measures.

You might also consider abandoning the idea of testing a hypothesis altogether and conduct a descriptive research study. In a descriptive study, you abandon the idea of comparing a treatment or exposure to a control group. You also sacrifice your ability to physically intervene somehow during the course of the research. Your goal in a descriptive study is, quite simply, to describe things. You're interested, for example, in characterizing how a certain group of patients behave, but you don't compare them with other groups. In a descriptive study, you still have to justify your sample size for a descriptive research study, but often the sample size requirements for a descriptive study are more modest than for a hypothesis driven study. Typically, you justify the sample size for a descriptive study by demonstrating that you'll get a reasonably narrow confidence intervals for some of the important things you're measuring in your descriptive study.

Maybe you should consider conducting an exploratory study. This is a study intended to generate new hypotheses rather than to test an existing hypothesis. Notice the use of the plural "hypotheses" in describing an exploratory study. A hypothesis driven study usually has a single hypothesis. If it has multiple hypotheses, it is still a small number of hypotheses, small enough to be counted on the fingers of one hand. And these hypotheses are specified prior to data collection. An exploratory study casts your net broadly. Your goal is to examine a large number of potential hypotheses and see which ones are promising candidates for future research. In some sense, an exploratory study has some of the same spirit in it as a pilot study. But there are important distinctions. In particular, the focus of an exploratory study is on the general direction of future research. You will probably notice the difference in a pilot study, which, as described below, typically provides information for a single future study of larger scale and scope than the pilot study.

If your budget cannot stretch enough to give you a decent sample size, you might also consider saving money by dispensing with randomization. This sounds like heresy for a statistician like me to recommend that you sacrifice randomization, but it's not. I like randomization a lot, but I'd be less than honest with you if I didn't admit that randomization takes lots of time and lots of money. And all those advantages of randomization are pretty meaningless if you end up with a confidence interval that is wide enough to drive a truck through. So think about reallocating the money by, for example, using a historical control group. You may find that the extra precision that you get by paying only for treatment subjects gives you enough extra precision that you don't mind the loss of rigor that randomization would have provided you.

Of course, these recommendations may not make sense for you. Switching to a descriptive or exploratory study, relying on a surrogate outcome measure, or giving up randomization may be too big a price to pay. Or perhaps, you've already done the math and even with these changes your budget won't stretch far enough to make the research viable. I'm sorry that I couldn't help you salvage the study. It's time to go back to the drawing board and think about spending your limited research budget on something else entirely.

So if a pilot study isn't a "regular" research study with an inadequate sample size, what is it? That's the question you have to answer. If you don't have an answer to this question, then stop everything else until you can get an answer. There's an old saying that if you don't know what your destination is, any road will get you there.

In brief, a pilot study is a study that does not exist for its own benefit, but to help with the planning of a future study on a larger scale than your pilot study. Before you do anything else you need to describe what this future study might look like. It may or may not be a study that you yourself would conduct. But the value of your pilot study is expressed only in terms of the value of the future large scale study.

It was the physicist, Niels Bohr, who first noted that "prediction is difficult, especially if it's about the future." No one knows for sure what the weather will be like tomorrow. So how can you tell what a half million dollar study that won't start until early in the next decade might look like? Well, you can't. In fact, whether you run the future large scale study at all might be in question, and the pilot study might end up with findings so terrible that you decide to abandon the future study altogether, burn any documentation of your involvement in this enterprise, and find ways to pin the blame on one of your co-workers.

That's okay. When you are proposing a pilot study, you have to make a good faith effort to describe details of the future large scale study with the knowledge that many of the details you describe are likely to change. It is somewhat akin to one of the Steven Covey's principles, begin with the end in mind. Your pilot study will be a better study if you always keep the future large scale study in the back of your mind as you plan your pilot.

Once you have identified what that future large scale study might be and have established that the benefits of that future study have a value well beyond the money that you plan to spend on this pilot study, then you need to answer the question: what information will this pilot study provide that will help you (or someone else) plan the future large scale study.

The information that your pilot study provides falls into two major categories. A pilot study can provide you with quantitative data that you need to plan the future large scale study or it can provide qualitative data about how well the complex machinery of a large scale study might work.

What sort of quantitative data might a pilot study provide? One of the most common reasons to run a pilot study is to estimate the standard deviation of your outcome measure. This is a very important thing to know. You must have an estimate of the standard deviation if you want to conduct a power calculation for your large scale study.

There's a technical qualifier here. If your outcome is binary (only two possible values), then you might run the pilot study to get an idea of how common or how rare the particular outcome is. In general, a very rare outcome, such as mortality in a group of patients that is not seriously ill, requires much larger sample sizes than a more common outcome.

Now, how many subjects do you need in your pilot study to get a good estimate of the standard deviation? That's a tricky question. I've seen a couple of sources that say you need 20, 30, 40 or 80 subjects,? but it's hard to understand the justification for any of these numbers. [One other recommendation][pub1] is that you don't use the standard deviation directly in your power calculation, but instead rely on the upper 80% confidence limit for the standard deviation if you're shooting for 80% power.

Now that standard deviation isn't the only valuable piece of quantitative information from a pilot study. Some other things that might be worth estimating:

1.  Various participation rates. What fraction of your subjects refuse to offer their consent once they understand what the study is about? What fraction drop out during the course of the study? What fraction fail to comply with the various requirements of the study?

2.  Accrual rates. You should measure how much time it takes to recruit a given number of patients in your study. It always seems to take a lot longer than you'd expect.

3.  Resource requirements. How much does it cost per patient to run a trial? How many people do you need on staff to handle the work required by the study?

4.  Participant burden. How much time does the average subject need to answer all the questions on your seventeen page questionnaire?

Pilot studies also can provide useful qualitative information. Here's a partial list:

1.  Do you get the types of subjects you are hoping to get or are important demographic subgroups being left out?

2.  Are subjects confused by questions on your survey? Do they answer in ambiguous ways, such as circling two answers when you were expecting a single answer? Does everyone provide the exact same answer to a particular question (indicating that maybe you don't need to ask it)?

3.  Does the surge of research subjects overwhelm your phone lines, your waiting room, or your staff?

4.  Is the equipment that you need for the study available when you need it? Does the equipment tend to break down at the wrong times?

5.  Can you handle the data as it arrives? Can you properly match data from different sources as it comes in?

6.  Does your data look weird? Does it have too much or too little variability? If your measurements have a limit of detection, are more than just a handful of values below that limit?

Finally, a pilot study is quite useful for identifying the unexpected. Recall the Peter Principle (whatever can go wrong will go wrong). You won't know what this thing is that will go wrong, at least if you believe Niels Bohr. But even though you may not know what will go wrong, you can still be fairly confident that something bad and unexpected will happen. Far better to experience the bad and unexpected event during the pilot study. The stakes are a lot lower in the pilot study and if you learn from the bad experience, you'll be in a better position to plan the future large scale study.

This is the second in a series of blog entries: So you're thinking about research. The first entry is:

[So you're thinking about a retrospective chart review][sim3].

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/pilot-study/
[sim2]: http://blog.pmean.com

[sim3]: http://new.pmean.com/chart-review/

[pub1]: http://www.ncbi.nlm.nih.gov/pubmed/8532986?dopt=Abstract
