---
title: How two bad control groups can add up to one good comparison
author: Steve Simon
source: http://www.pmean.com/07/TwoControlGroups.html
date: 2007-06-28
categories:
- Blog post
tags:
- Observational studies
output: html_document
page_update: complete
---

Many observational studies are criticized (often deservedly) for having a bad control group. If you choose a bad control group, you create an unfair (apples to oranges) comparison. But surprisingly, two controls groups, even if both are imperfect, can lead to a strong conclusion.

The trick is to recognize that if one control group has a positive bias (it makes the treatment group look better than it should) and the other one has a negative bias (it makes the treatment group look worse than it should), then these two control groups bracket the ideal control group.

![](http://www.pmean.com/new-images/07/TwoControlGroups01.gif)

If the treatment group is shown to be significantly better than both control groups, then it has to be significantly better than anything in between the two control groups. Thus it has to be significantly better than the unobserved ideal control group. Thus, two imperfect comparisons can lead to a valid overall comparison.

It works the other way also. If the difference between the treatment group and the negatively biased control group is small, and the difference between the treatment group and the positively biased control group is small then the size of the biases are small. Another way of thinking about this is that if the treatment group is close to both control groups then it has to be close to anything in between the two control groups.

How does this work in practice? Paul Rosenbaum has written extensively about this.

+ Rosenbaum PR. The Role of a Second Control Group in an Observational Study. Statistical Science, Vol. 2, No. 3 (Aug., 1987), pp. 292-306.
+ Rosenbaum P. Observational Studies. (1995) New York: Springer-Verlag. 
+ Rosenbaum PR. Replicating Effects and Biases. The American Statistician 2001: 55(3); 223-227.

The most interesting example is from Economics, not Medicine, but it is a very instructive example. Economists have debated the impact of minimum wage laws for many decades. Conservative economists have argued that a minimum wage law leads to increased unemployment because it forces businesses to fire people when the mandated minimum wage 1exceeds the value that certain workers can provide to the business. This impact is felt especially hard among workers with limited skills. Liberal economists have argued that such laws have minimal impact on unemployment and because they raise the wages of the least skilled workers, it has a positive effect on the community.

You could look at trends in unemployment before and after the United States government raises the minimum wage, but this is a weak comparison. So many factors influence unemployment and these factors are all shifting in various directions over time. The resulting change in unemployment is biased, and the form of the bias is too complex to be effectively characterized. The problem is that there is no concurrent control group.

It is not an ideal comparison, but you can get a concurrent control group by noting that several states have passed minimum wage laws that are higher than the U.S. minimum wage. You could then compare the change in unemployment in the state raising its minimum wage to the change in unemployment in a neighboring state where the minimum wage remains unchanged. This was actually done in 1992 in New Jersey (the state that raised the minimum wage) and Pennsylvania (the neighboring state with no change in the minimum wage). There was no difference in the change in unemployment, seemingly indicating that there was little or no impact of a minimum wage increase on unemployment.

But wait, you're saying to yourself. Aren't you comparing New Jersey apples to Pennsylvania oranges? And the answer is that we are. It's an imperfect comparison. Furthermore, unless you are a super genius, you probably can't figure out if the Pennsylvania control group produces a positive bias or a negative bias.

Now 1992 was not the only time that New Jersey raised its minimum wage compared to the national wage, but each time the comparison is subject to the same biases. But we are fortunate in that there was a time that Pennsylvania raised its minimum wage. They didn't do it directly, but in 1996, an increase in the minimum wage nationwide caused an increase in Pennsylvania, but no change in New Jersey because the federal increase matched the earlier increase in New Jersey. Now New Jersey is the control group and there is change in unemployment is comparable in New Jersey and Pennsylvania. It's still an imperfect control group because we are comparing Pennsylvania apples with New Jersey oranges.

But wait, how can Pennsylvania be both an apple and and orange? We know that if the comparison PA-NJ has a positive bias, then NJ-PA must have a negative bias.   If PA-NJ has a negative bias, then NJ-PA must have a positive bias. If we see the same trivial change in unemployment when the study is positively biased as when the study is negatively biased, we know that the biases are not large enough to produce an artificial effect or to mask a real effect.

There are ways to apply this in a medical setting as well. Suppose that we want to make an intervention, but once we make the change, there is no going back. This might be installing a new computerized system for check-in at a hospital, or implementing a pay-for-performance at a clinical practice. You can't randomly turn the computer system off on certain days and you can't alternate the pay methods on different paychecks.

The first thought is that you could just measure things before and after the intervention (see figure below).

![](http://www.pmean.com/new-images/07/TwoControlGroups02.gif)

This is not an awful thing to do, and it is certainly better than doing no evaluation. How often have we made changes in our workplace and never taken the time to see if those changes actually made things better or had no effect? Sometimes, unfortunately, those changes actually make things worse, but we go along, blissfully unaware of the damage we've done. Suppose we have a multicenter trial. The above design looks like.

![](http://www.pmean.com/new-images/07/TwoControlGroups03.gif)

An immediate and obvious improvement is to intervene in half of the centers and leaving the others alone (see below).

![](http://www.pmean.com/new-images/07/TwoControlGroups04.gif)

Still, you have to worry about whether Sites A, D, and E are New Jersey apples and Sites B, C, and F are Pennsylvania oranges. Another variation (see below) can work even better.

![](http://www.pmean.com/new-images/07/TwoControlGroups05.gif)

Here each center gets to participate in the intervention (no one stuck in the boring control group), but because we stagger the intervention, we avoid some of the timing issues. If each site shows an improvement, you can't blame it on the calendar. It would be a very weird set of circumstances that would cause a positive bias at individual sites that would coincide with the six different changeover dates.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/TwoControlGroups.html
[sim2]: http://www.pmean.com
