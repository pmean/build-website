---
title: Why 95% confidence limits?
author: Steve Simon
date: 2002-05-06
categories:
- Blog post
tags:
- Ask Professor Mean
- Confidence intervals
output: html_document
page_update: partial
---

*Dear Professor Mean, I've been working with small data sets for some neuroimaging research that have 5 treatment and 5 control participants. It is not unusual to have such small samples in this kind of work. My 95% confidence interval (CI) included zero; yet, the 85% confidence interval did not include zero. I know that the 95% CI is the common one, but I also know that others are used, but I don't know when to use them. Therefore, I'd like to know why we use 95% confidence limits all the time. When it is appropriate to use other CIs and the logic behind making such decisions.*

<!---more--->

Dear Reader, If the goal of your research is to end up with a confidence interval that implies statistical significance, then I would encourage you to use a 0% confidence interval. That interval is very narrow and is almost certain to exclude the value of zero.

In your defense, it sounds like you recognize **the arbitrary nature of the 95% confidence level**. The use of 95% confidence limits is well recognized in the Statistical community as a historical artifact. There are often reasons to increase the confidence level (say to 99%) or to decrease the confidence level (say to 90%).

There is a trade-off between the precision of the interval and the confidence level. In some contexts, you need to be very confident of your findings, and the loss of precision is worth it. In these situations, a 99% interval may be more appropriate than a 95% interval. In other situations, you prefer to have more precision, and you are willing to tolerate being a bit less confident of your findings. In these situations, a 90% interval may be more appropriate. These discussions closely mirror the tradeoffs between Type I and Type II error.

In spite of this, most researchers will react strongly and negatively to any change in the confidence level. When you change the confidence level, it appears to some that you are **manipulating your data** to get a pre-ordained conclusion.

If you want to justify a different confidence level, you need to **present that justification in the protocol, before any data is collected**.

You should also ask yourself **what precision you would really like to have**. A good way to start is to first define a range of clinical indifference. In other words, how much of a change is so small that the typical researcher would yawn and say "that's not very interesting."

Finally, saying that sample sizes of 5 are common in your area of work places you firmly in the **Lemming school of research design**. Your effects have to be two full standard deviations apart in order to justify doing the research on only 5 subjects in each group. That's a Godzilla sized difference--one that would imply that the best subject in one group is still far worse than the worst subject in the other group.

Sometimes, a researcher can say with confidence that an "all or nothing" difference is the only one they are interested in seeing. But I suspect that this is not the case with your data. If you saw a difference of only one standard deviation, you would probably still consider that very interesting. And a sample size that could reliably detect such a difference is far larger than 5 per group.

I don't mean to be too critical. I don't know the full context of your research. You really should discuss the implications of your research design with a professional statistician before you conduct any more research. Not only might you be wasting precious research dollars, but there may be serious ethical problems with your research.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/why95.html
[sim2]: http://www.pmean.com/original_site.html
