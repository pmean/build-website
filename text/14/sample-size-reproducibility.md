---
title: "Sample size for a study of reproducibility"
author: "Steve Simon"
source: "http://blog.pmean.com/sample-size-reproducibility/"
date: "2014-06-16"
categories: 
- Blog post
tags:
- Measuring agreement
- Sample size justification
output: html_document
page_update: partial
---

Dear Professor Mean: I am using a risk stratification tool for patients
presenting to the ED with chest pain. This has been a well validated
tool in the ED, but I want to show that the scores are reproducible
irrespective of the grade of doctor or assessment nurse calculating the
score. I'm going to collect a convenience sample of patients presenting
to the ED, and after I get informed consent, I will have those patients
assessed separately by a triage-trained nurse, an intern doctor, a
registrar and a consultant. I will calculation agreement using the
intraclass correlation coefficient (ICC). My question is: How do I
calculate the sample size in this context?

<!---More--->

There is no formal hypothesis in this setting, so you can't really do a
power calculation. Well, maybe you could but it would be a rather forced
and artificial setting.

What you want here is a confidence interval for the intraclass
correlation coefficient (ICC). And you want that confidence interval to
be reasonably narrow. An ICC with a confidence interval that goes from
0.06 to 0.91 is pretty worthless.

So dig out the formula for the confidence interval for ICC and find a
sample size that makes your interval reasonably narrow. Make sure that
you plug in a plausible value for? ICC and not zero.

The formula for this confidence interval is very messy, so you will
almost certainly be better off using a simulation approach. Set up a
dozen or so plausible scenarios for your research that include both weak
and strong measures of association and also include a range of marginal
distributions. Run these simulations and show that at your proposed
sample size, all the 95% confidence intervals under all the scenarios
are reasonably narrow. Then pick one of the scenarios to present to the
IRB or anyone else reviewing your research.

Now the actual research will probably compute some statistics that are
far more sophisticated than a simple confidence interval for single ICC.
You might want to compare one ICC to another ICC. Or you might want to
estimate the source of disagreement if the ICC is too small (e.g., the
nurses rate more harshly than the doctors). But don't worry too much
about this. If you get a nice narrow interval for a simple ICC, then
everything else will probably also have reasonably good precision and/or
power.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/sample-size-reproducibility/
[sim2]: http://blog.pmean.com
