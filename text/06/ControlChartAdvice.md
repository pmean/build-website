---
title: Unusual advice about control charts
author: Steve Simon
source: http://www.pmean.com/06/ControlChartAdvice.html
date: 2006-12-18
categories:
- Blog post
tags:
- Control charts
output: html_document
page_update: partial
---

Someone sent me some recommended guidance on how to use a control chart
and it included the following quote:

> *Do not correct the process if the out-of-control values can be shown
> to be due to chance failure when process is actually in control
> (special cause variation).*

I'm probably taking this quote out of context, but it is a rather
unusual claim.

The phrase "correct the process" could mean start a fresh chart with a
new set of control limits. When should you start a fresh control chart?
It depends, but I discourage a lot of tinkering. If there is a wholesale
revision in a work process, definitely start with a fresh set of control
limits. If you are making a minor change, perhaps it would be simpler to
keep the same control limits, at least until it becomes painfully
obvious that the old limits are no longer relevant.

I discourage tinkering with control limits because your time is better
spent investigating issues with the work process itself. Talking to the
people involved with the work process is likely to lead to more
improvements to the system than fiddling with the control limits.

The phrase "chance failure" is also interesting. It could mean a point
that is out of control, but where no assignable cause has been found.
This can happen, because a control chart will tell you WHEN a process is
out of control, but it will not tell you WHY it is out of control. If
you cannot find an assignable cause, then you obviously cannot take any
corrective action. But ask yourself first if you have spent enough time
working on the investigation and if your co-workers are being honest
with you. Many work processes have negative incentives for honesty. This
encourages people to hide the truth.

Finally, the phrase "chance failure" could mean a false positive
signal. This is a point that is out of control because control charts
are not perfect and sometimes they produce false positive signals. This
happens rarely, but it does happen. But how will the average person know
what a point that is out of control represents a false positive signal?
Well, one way is to be so smart and so perceptive that<U+FFFD> you can
recognize better than a control chart can what is going on with your
work process. There are few of us who are that intelligent. Another way
you might recognize that a signal is a false positive signal is if you
discover that there is no assignable cause. But I would always worry
that it was a true positive and that I just didn't investigate
thoroughly enough.

There's a great website, [www.skymark.com](http://www.skymark.com),
that offers advice about how to react to signals in a control chart. I
have quoted some of this advice at:

-   [Stats: What is a special cause of
    variation?](../definitions/SpecialCause.htm) and
-   [Stats: What is a common cause of
    variation?](../definitions/CommonCause.htm)
