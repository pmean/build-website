---
title: Criticism of random effects in a meta-analysis
author: Steve Simon
date: 2008-06-14
categories:
- Blog post
tags:
- Being updated
- Systematic overviews
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

There are two approaches to combining results in a meta-analysis. They
are called the fixed effects model and the random effects model. The
fixed effects model effectively weights each study by the sample size,
or by a measurement that is closely related to the sample size, such as
the inverse of the standard error of the estimate. A random effects
meta-analysis, in contrast, will assume that an estimate from a single
study has two sources of error. One error is the same as in the fixed
effects analysis and varies by the sample size of the study. The other
error is a random component that is independent of the sample size and
represents uncertainties due to conditions in this particular study that
differ from conditions in other studies.

The random effects analysis will provide different weights for each
study. The weights for studies with large sample sizes are smaller,
sometimes only slightly smaller, but sometimes markedly smaller,
depending on how variable that second random component is. Studies with
smaller sample sizes will get larger weights under a random effects
meta-analysis compared to a fixed effects meta-analysis.

Someone on the epidemio-l list claimed that this was "unfair".
Certainly it is counterintuitive at first glance. I would still argue
that the random effects meta-analysis still makes sense.

If you indeed believe that there are two sources of error that tells you
that each study has more uncertainty than a fixed effects model might
assume. This seems logical enough. There more uncertainty than mere
sampling error at work here. When you account for this extra
uncertainty, it has a larger relative effect on studies with large
sample sizes than studies with small sample sizes. In a study with a
large sample size, the second random component can dominate the
calculations. In a study with a small sample size, the sampling error is
still likely to be the major contributor to uncertainty. This
differential impact leads to a weighting system that does not place as
much emphasis on the largest studies.

If you really feel strongly that studies should be weighted only by
their sample size, you are elevating a general principle to an
inviolable standard. It's almost as if this were an edict from the
Supreme Court like "one person-one vote".

But I suspect most people are not so upset when random effects are used
in a randomized trial to account for the center effect in a multi-center
trial. This model also is "unfair" because the weights given to each
center are not directly proportional to the number of patients at each
center. I will admit that there is some level of controversy here as
well, but if you accept random effects in a multi-center trial but
don't accept them in a meta-analysis, I would ask you what is the
difference?

Suppose you have a linear regression model with measurement errors in
the independent variable. Would you trust a least squares estimate
because least squares always produces the "best" fit to the data? I
would argue that clinging to weights that are proportional to the sample
size in the face of heterogeneity is no different than clinging to the
least squares principle in the face of measurement error.

Another common criticism of random effects meta-analysis is the
assumption that you are making an unrealistic assumption that the second
random component is normally distributed. This can indeed lead to bad
inferences, but which is worse. Pretending that a non-normally
distributed variable is actually normally distributed or pretending that
a non-normally distributed variable is uniformly zero?

Now I realize that people smarter than me have criticized the random
effects meta-analysis. That's worth remembering and I would not
blithely recommend this approach to a client without considerable
discussion of the controversies. But I would still argue that the random
effects meta-analysis is the more intuitive approach, even though at
first glance it does indeed look counter-intuitive.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/RandomEffects.html
[sim2]: http://www.pmean.com/original_site.html
