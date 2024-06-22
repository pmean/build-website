---
title: Does a wide confidence interval mean that my conclusions are all wrong?
author: Steve Simon
date: 2011-03-24
categories:
- Blog post
tags:
- Confidence intervals
output: html_document
page_update: complete
---

### Dear Professor Mean,

My confidence intervals are very wide. I do not know how to explain this. Does this mean that my results are likely to be wrong?

<!---More--->

### Dear Reader,

Wide confidence intervals mean that your sample size was too small. You probably had a gut feeling that this was the case, and now you have some quantitative confirmation of your feelings. A small sample size does not mean that your results are "wrong". It means that the data is consistent with a wide range of possible hyoptheses.

I tell a story about a researcher who gets a 5 year 6 million dollar grant. At the end of the grant, he wrote a report stating "This is a new and innovative surgical procedure and we are 95% confident that the cure rate is somewhere between 3% and 98%." Now if you look at that confidence interval, it is not "wrong". In fact, that confidence interval probably has far better coverage probabilities than most of the other intervals that are reported. The problem with this interval is not its veracity. The problem with the interval is that it is so wide that it is useless in providing information about the value of the surgery. It could be a great surgical advance, it could be mediocre, or it could be horrible, and we can't be sure which of these is the case.

So when you write up your results, point out that the confidence intervals are wide, indicating that the sample size was too small (better for you to admit it than to have a referee force you to make the statement). Then point out that any conclusions that you might try to draw from the data need to be replicated with a larger sample size.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/WideInterval.html
[sim2]: http://www.pmean.com/original_site.html 
