---
title: Physician Performance Data
source: http://www.pmean.com/00/performance.html
author: Steve Simon
date: 2000-01-27
categories:
- Blog post
tags:
- Unusual data
output: html_document
page_update: partial
---
*Dear Professor Mean, Producing statistics of physician performance or
group performance or whatever seems to be one of the great growth
industries in medicine. Graphs of performance in just about anything
seem to be produced - usually with something that looks at first glance
like a normal distribution (and almost never with any statistical
addenda). But I would like to know whether we can use them sensibly as
anything other than pictures. In particular when I am one of the
subjects of the analysis how do I interpret my own performance?*

Do like everyone else does. When a graph or table shows that you are the
best physician in your group, praise the method as innovative and
cutting edge. When it shows that you are the worst physician, pull out
your stock complaint about "lies, damned lies, and statistics".

Seriously, this is a difficult area. The bad news is that measures of
performance will typically be subject to strenuous disputes, even when
they are based on solid statistical methods. But the worse news is that
the statistical methods frequently used are, at best, simplistic. It
would be impossible to do justice to the complexities of physician
performance in this brief web page, but I can make some general comments
about the **limitations of statistics**. I also want to **encourage the
use of control charts** as a good way to view this type of data.

**Statistics are great at characterizing the behavior of groups, but
they don't do as well when they try to characterize the behavior of
individuals**. With care, you can use Statistics to characterize
individuals, but you want to avoid blindly using the Statistical methods
that have been developed for clinical trials. Just as a simple example,
you should note that characterizing individual behavior is not an
activity that fits in well with the traditional hypothesis driven
research. Do you set up a separate hypothesis for each doctor?

There is an additional problem. **Most rating systems fail to properly
adjust for all sources of uncertainty**. Some hospitals, for example,
have a smaller case load and these estimates are more unstable. So an
outlier for a small hospital may simply be normal variation.

**A promising approach is the use of random effects models, empirical
bayes approaches, and shrinkage estimates** (these are all
interrelated). These models, unfortunately, are very complex, and
require extensive consultation with a professional statistician.

There's a more fundamental philosophical issue. We have a tendency,
especially in the United States, to want to rank and rate everything in
sight. We have the top 100 movies of the past century, and the Places
Rated Almanac of the best places to live. Many companies are returning
to employee evaluation systems that enforce a quota of at least x
percent unsatisfactory ratings. **These efforts to rank and rate seem
innocuous enough on the outside, but do they really serve a useful
purpose?** What are the hidden costs? It may be worthwhile to read some
of the thoughts of W. Edwards Deming, Alfie Kohn, and Peter Scholtes.
After looking at their perspective, you may decide that your efforts to
identify good and bad PCP's may not be appropriate.

**It is tricky to decipher when a deviation is part of the random
fluctuations that are an inherent part of the medical system and when a
deviation is an indication of a special cause that we might want to
investigate and learn from**. We all have a tendency to overestimate and
overreact to small deviations that may be nothing more than normal
variation.

**When we see deviations, we tend to attribute them too often to the
individual and tend to ignore the environment that the individual works
in**. If there are unacceptably large variations in performance, your
first thought ought to be "how do I change the environment to reduce
this variation" but it's human nature instead to say, "who should I
retrain or reprimand".

**Further reading**

Another good book to look at is ***Understanding Variation*** by Donald
Wheeler. This is a delightful and very easy to read book that explains
many of the **problems that businesses have with handling variation in
their production lines**. Again, you need to extrapolate; a doctor's
office is not a production line. If you think about some of the ways
that physician performance data has been abused and misused, then you
will see that these same types of abuses from a business context in
Wheeler's book.

**Hospital league tables.\
**Bamji A, Rao JN.\
BMJ 2001; 322: 992.\
<http://www.bmj.com/cgi/content/full/322/7292/992/a>

**Understanding Variation. The Key to Managing Chaos.\
**Wheeler DJ.\
Knoxvile TN: SPC Press, Inc (1993).\
ISBN: 0-945320-35-3.

**Schools' experience of league tables should make doctors think
again**\
Peter Tymms and Andy Wiggins\
BMJ 2000; 321: 1467. [[Full
text]](http://bmj.com/cgi/content/full/321/7274/1467)

**Control charts**

After you've read Walton and/or Wheeler, you may come to the conclusion
that the statistical control chart, a tool widely used in industry, has
similar applicability in health care. I would encourage you to apply
control chart methods to physician performance data as well as a lot of
other data that is not usually examined carefully in the health care
context.

I'm working with some nurses at Children's Mercy Hospital to **use
control charts to track medication errors, patient complaints, employee
accidents, unplanned sick leave, employee turnover, and additional
measures of organizational safety and effectiveness**. It has a lot of
potential, in my opinion, to handle both this type of data as well as
the type of data you are referring to.

I need to add a disclaimer that health care is different from most other
businesses. That doesn't mean that health care can't use control
charts, but it does mean that we can't blindly apply a process
developed for industries that produce fast cars and fast food. So some
type of adaptation will be necessary.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/performance.html
[sim2]: http://www.pmean.com/original_site.html
