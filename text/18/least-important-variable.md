---
title: "And the least important variable is"
author: "Steve Simon"
source: "http://blog.pmean.com/least-important-variable/"
date: "2018-03-28"
categories:
- Blog post
tags:
- Human side of statistics
- Linear regression
output: html_document
page_update: partial
---

I heard a story a long time ago
- and I don't remember who told it to me
and I'm probably getting all the details wrong
- but I wanted to try to
recreate the story from memory because it illustrates one of the perils
of blind reliance on statistical models to identify "important"
variables.

<!---More--->

A statistician was asked to analyze some data about an industrial
process and there were about a dozen or so independent variables that
affect the outcome. So the statistician did some sort of stepwise
regression or R-squared calculation and came up with an ordering for all
the independent variables. The most important variable was the one with
largest correlation or the first variable entered in the stepwise model
(I'm not sure which
- but the point is the same either way). The second
most important variable was the one with the second largest correlation
or the second variable entered in the stepwise model.

The statistician reviewed each variable in order starting with the most
important variable. It was rather dull
- of course
- until the
statistician got to the bottom of the list. He proclaimed "and the least
important variable is the amount of water in the raw material."

At this point the engineers in the room burst into laughter. It turns
out that water was the most important variable. If you had even a small
amount of water in the raw material
- the entire production process would
explode. The engineers spent a huge amount of effort to keep the water
down to a level that was barely measurable.

If a variable has very little variability in it by design
- you cannot
expect to see a large correlation. This is sometimes called a
restriction of range problem. The SAT test for college applicants has an
upper bound of 2400 and for some high end Universities
- they may end up
admitting only students scoring 2350 or higher. That's a very narrow
range
- and if it turns out that the SAT scores at this place are a poor
predictor of future performance (like GPAs or graduation rates)
- that
may be more a function of the very narrow range of students that were
admitted than anything else.

Now whenever I hear a story like this
- I think of the preachers quote
"There but for the grace of God go I" that has been attributed to John
Bradford. I bet I've said stuff even stupider than what this
statisticians is supposed to have said. It is just dumb luck
- or God is
looking out for me
- or something else that keeps me from the one being
publicly humiliated.

How do you avoid saying something so stupid that everyone laughs at you?
Well
- the obvious answer is to talk to one of the engineers first and
show them what you are going to say. Better for that one Engineer to
laugh at you in private than having a whole room of Engineers laugh at
you in public.

What do you do if you recognize that have a restriction of range
problem? Well
- first
- drop the correlations in favor of a regression
model. A linear regression model is not perfect
- but it is a lot better
than a correlation coefficient in this situaiton. Second
- draw lots of
graphs. Third
- talk to the experts. Fourth
- disclose the restriction of
range as a possible limitation to your findings. A restriction of range
means that you may be trying to extrapolate beyond the range of your
data (your graphs will help show this) and this type of extrapolation
will often require making untestable assumptions.

And if anyone knows the source of this story or can point me to a
reference
- I would be forever in your debt.


