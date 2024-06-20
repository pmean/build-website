---
title: Is my confidence interval too wide?
author: Steve Simon
source: http://www.pmean.com/06/IntervalTooWide.html
date: 2006-09-21
categories:
- Blog post
tags:
- Clinical importance
- Confidence intervals
output: html_document
page_update: partial
---
*Dear Professor Mean, Is there a rule of the thumb to judge if a 95% CI
is wide or narrow?\
*\
I tell a story about a researcher who gets a six year, ten million
dollar NIH grant and writes up in the final report "This is a new and
innovative surgical procedure and we are 95% confident that the cure
rate is somewhere between 3% and 96%." That's an example of a
confidence interval that is too wide.

In order to define whether a confidence interval is sufficiently narrow,
you have to first define a range of clinical indifference. This is a
range of values that represent changes or differences that are so small
that you could not justify changing your clinical practice. Anything
outside the range of clinical indifference is a value that is important
enough to justify all the time, trouble, and expense of switching.

If the confidence interval is narrow enough so that it lies entirely
inside or entirely outside the range of clinical indifference, then it
is narrow enough. If it lies partly inside and partly outside, then you
need to collect more data, because you do not have enough information to
decide whether to change your clinical practice.

Defining the range of clinical indifference requires clinical judgment,
something that most statisticians lack. You have to weigh the costs and
benefits of the standard approach and the new approach. You can do this
by seeking an appropriate balance between the number needed to treat and
the number needed to harm.

A somewhat simplistic example is to assume that all patients suffer from
the costs and inconveniences of a new therapy, but only those who get
better will experience the benefits. If a cure is valued five times as
much as the inconvenience of the new treatment, then you would not adopt
the new treatment unless it cured at least 20% of your patients.

This is very useful when evaluating alternative medical therapies. The
standard of proof is (and should be) very low when looking at something
like aromatherapy, which is cheap and carries very few risks. Other
forms of alternative medicine call for coffee enemas (I prefer my coffee
going in from the other end, thank you very much). Enemas are reasonably
safe, but there is a level of discomfort and inconvenience associated
with them that is greater than aromatherapy. And the risks, while small,
are fairly serious. If you get a perforation in the general area where
enemas work, you are in for a lot of trouble. So the standard of proof
for coffee enemas should be higher. You would not adopt this invasive
approach unless you were sure it would help a significant fraction of
your patients.

You should factor in the individual patient values into this equation.
Suppose a new therapy reduced a patient's sperm count to the point
where that patient would have difficulty getting his partner pregnant.
Some people would be aghast at this and would not want to sacrifice
their ability to produce children for anything in the world. Others
would be indifferent. Some might actually see it not as a side effect,
but a side benefit.

In theory, you specified how much of a benefit was clinically relevant
when you ran your power calculation before any data was collected. You
did run a power calculation, I hope!

Actually, the people publishing the paper should tell you what they
consider to be clinically important. You might disagree with their
choice, but at least it opens up the issue for discussion.
Unfortunately, most papers don't even mention clinical importance.

**How well is the clinical importance of study results reported? An
assessment of randomized controlled trials**. K. B. Chan, M.
Man-Son-Hing, F. J. Molnar, A. Laupacis. Cmaj 2001: 165(9); 1197-202.
[www.cmaj.ca/cgi/content/abstract/165/9/1197](http://www.cmaj.ca/cgi/content/abstract/165/9/1197)
