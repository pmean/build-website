---
title: Can I salvage my negative confidence interval
author: Steve Simon
date: 2011-09-02
categories:
- Blog post
tags:
- Confidence intervals
output: html_document
page_update: complete
---

### Dear Professor Mean:

I was involved in a small case-control project that was intended to explore some genotypes as predictors of disease progression. We had between 50 and 60 cases and controls (each). One particular predictor had a OR of 0.5 with 95% confidence limits of 0.2 and 1.2. We reported the negative reulsts, but a a long time a go, I did read some papers showing some different interpretations of confidence intervals. If I remember right, there was some statements like: it is less likely that a point estimate such as 0.5[0.2-1.2] be 1 then one as 0.8[0.5-1.2], considering the proportion of the CI that is distant from 1. Even now, it sounds weird to me. Can I say something about this in my paper?

<!---More--->

### Dear Reader,

I've often said that once scientists get a p-value less than 0.05 or a confidence interval that implies statistical significance, they turn their brains off. You've got a confidence interval that implies lack of statistical significance and a p-value larger than 0.05 so your brain is still churning away. That's good, but all the thinking you are doing now to "salvage" a negative study should be applied equally to trying to place appropriate limitations on a positive study.

I might be a bit simplistic, but rather than the hypothetical intervals you propose, let me propose something a bit more extreme. A confidence interval that goes from 0.7 to 1.2 is pretty definitive example of a negative finding, because this interval excludes any clinically interesting odds ratios. The confidence interval that goes from 0.2 to 1.2, though does have the "advantage" of being ambiguous because it allows you to claim that something interesting might still be going on. Here I'm deliberately making the mistake that only positive findings are interesting.

Now I should state that sometimes an odds ratio of 0.8 is clinically relevant, but let's assume that only more extreme odds ratios such as 0.67 and 1.5 are clinically important for this particular problem.

The problem, of course, is that an odds ratio confidence interval of 0.2 to 0.8 has all the problems of the interval 0.2 to 1.2. Both intervals contain both clinically important and clinically trivial values but people never treat the former interval as being ambiguous. So what if an odds ratio of 0.75 implies that the new treatment cannot be justified based on the extra costs and side effects that come with the new treatment? I've got a statistically significant finding, so I don't need to be pestered with any bad thoughts.

The only time people wrestle with borderline findings is when they are on the "wrong" side of the border. P-values of 0.048 and 0.052 are probably saying pretty much the same thing, but only the latter gets any serious discussion. If you run around jumping and hollering enough, maybe you can jostle that 0.052 enough that it jumps to the other side. That 0.048 though is delicate and perilously close to falling off the cliff into the sea of statistical non-significance. So we'll be very quiet and tiptoe cautiously around that p-value lest we ruin our happy mood at obtaining a positive study.

Don't let me stop you from talking about your non-significant finding though. Too many people treat a p-value larger than 0.05 as a gag rule and limit their discussion only to those tests and confidence intervals yielding statistically significant results.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/NegativeInterval.html
[sim2]: http://www.pmean.com/original_site.html 
