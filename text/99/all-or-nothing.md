---
title: All or nothing
source: http://www.pmean.com/99/all.html
author: Steve Simon
date: 1999-08-18
categories:
- Blog post
tags:
- Being updated
- Small sample size issues
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, I would like to know the minimum number of
patients needed in order to achieve statistical significance. I am
assuming a perfect research situation where all of the patients who got
a treatment lived and all the patients who got the placebo died. What
would the proper sample size for an all or nothing response be?*\--
Hesitant Harrison

<!---More--->

Dear Hesitant,

There are some experimental situations, usually involving animal
research or in vitro systems that tend to show an all or nothing
response. An all or nothing response could mean 100% survival in one
group and 0% survival in another group. Or it could mean no overlap
between two groups. In other words, the smallest value is one group is
much larger than the largest value in another group.

Some simple probability arguments can show that **you can achieve
statistical significance with six to eight subjects total**. Still, you
should consult with a professional statistician face-to-face to define
an appropriate sample size, even for an all or nothing response. Every
problem is different.

**More details**

Let's conceptualize an experiment where we measure thyroid hormone in
eight mice, four with the thyroid gland removed and four with a sham
surgery. **We get measurable thyroid hormones in four sham surgery mice
and nothing in the thyroidectomy mice**.

That's a pretty extreme result. If the thyroid gland had nothing to do
with thyroid hormones, then it would quite a rare event for the four
zeros associated with the thyroidectomy. This is quite a relief, because
we didn't want to have to rename the thyroid gland to the "it doesn't
produce thyroid hormone" gland.

**There are seventy possible ways that we can associate four zero values
among 8 mice, and only one other way leads to results as extreme as we
have seen**: the result where the four zeros all occur in the sham
surgery group. **So a two-sided p-value for this data would be 2/70 =
0.029**.

Let's consider a different experiment, where we measured thyroid levels
in six mice, before and after removing the thyroid gland. **All six mice
had lower levels of thyroid hormone after surgery**.

Again, this is an extreme event. If the thyroid gland had no influence
on thyroid hormone, then this would be like flipping a coin six times
and getting the same result each time. If we ignore the possibility that
thyroid levels remain the same, then **there are 64 possible outcomes to
this experiment, and only one other outcome is as extreme as the results
we saw**: the event where all six mice showed an increase in thyroid
hormone after surgery. **So a two-sided p-value would be 2/64 = 0.031**.

Now I would hate to plan a study that relied on an all or nothing
response. Maybe one of our mice recently returned from a vacation at
Chernobyl. So I suspect that a cautious researcher would plan for a few
extra mice.

Now don't go telling all your friends that 6 or 8 is a magic sample
size. **Every research problem is different, and a careful sample size
justification requires a face-to-face consultation with a professional
statistician**.

**Summary**

Hesitant Harrison wants to know **the minimum number of patients that
you would need under a perfect research situation** where all of the
treated patients survive and none of the controls do. Professor Mean
explains that some research situations can lead to an "all or nothing"
response. **With an all or nothing response, you need about six to eight
subjects total to achieve statistical significance**. Such a small
sample size, however, leaves you with no room for error if one of your
subjects produces an unexpected response. You should always consult with
a professional statistician before starting a research study with such a
small sample size.


You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/all.html
[sim2]: http://www.pmean.com/original_site.html
