---
title: "Stretching an already borderline sample size"
author: "Steve Simon"
source: "http://blog.pmean.com/already-borderline/"
date: "2014-04-16"
categories: Blog post
tags:
- Sample size justification
output: html_document
page_update: complete
---

I was working with a client who had a limited population of medical
residents to choose from, and it would be a struggle to get even 60 of
them. The primary outcome was binary: whether a certain medical
procedure was run properly in a test setting. The intervention was
special training on a model; the control was normal training without the
model. I got a phone call back that said, what would the power be if I
used three groups rather than two? I thought to myself "Good grief!"
You can't say that to a client, of course, so here's what I
said.

<!---More--->

For reference, here is the original power calculation. With a sample of
30 subjects per group, you would have 80% power for detecting a three
fold decline in error rates: from 50% in the control group to 16.7% in
the treatment group. I should note here that this is a pretty big
decline, and declines that might be almost as important, such as a two
fold decline, would not be readily detected using this sample size. We
had gone over this at the earlier consulting session.

When I was presented with the proposed modification, here's what I
explained:

Adding a third group to the study adds to the complexity of the study
and would require more than 30 observations per group. Since it was a
struggle for you to find 60 total subjects, I presume that any study
that would require quite a bit more than 90 total subjects would be
impossible to conduct.

I can work out the exact numbers if you like, but as a general rule, any
change to the design that increases the complexity will require a
substantial increase in sample size.

The problem here is that your primary outcome measure is binary, and
binary outcomes typically require larger sample sizes than other types
of outcome measures.

There is a temptation to try the experiment by splitting the 60
available subjects into three groups, making the sample size 20 per
group rather than 30. This is unadvisable. We are already looking at a
research design which can only detect a three fold change in the
proportions. If you were to further decrease the sample size, you would
not be able to detect even a three fold change in proportions with
reasonable power.

The only time that a sample size as small as 20 per group makes sense in
a study like this, looking at binary outcomes, is if you expect
something close to an "all or nothing" response. This means, for
example, that almost no subject in your control group inserts the screw
correctly and almost every subject in your treated group inserts the
screw correctly. It's not quite that extreme, but it's close. Do you
really want to run a research study that is only capable of detecting
differences that even the best possible intervention is unable to
achieve?

If the focus of the study were solely on a continuous variable, such as
the time of the procedure, then perhaps a sample size of 20 per group
MIGHT work. But I strongly suspect that your binary outcome (failure to
conduct the procedure properly) is far more important than time.

Now, if you decide that you want to run the experiment with three groups
and 20 subjects per group, I would be glad to continue to work with you
on the project. Just because I advise against a certain choice during
the design phase, I won't abandon you if you make a different choice.

Final thoughts: The person running the research didn't really want three
groups, but was being pushed in that direction by other members of the
research team. So he was happy with my explanation. The moral of the
story is that when you have a borderline sample size to begin with,
there is no way that you should think about adding additional
complexities to the research design.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/already-borderline/
[sim2]: http://blog.pmean.com
