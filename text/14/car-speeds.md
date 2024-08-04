---
title: "A biased sample of car speeds"
author: "Steve Simon"
source: "http://blog.pmean.com/car-speeds/"
date: "2014-06-18"
categories: Blog post
tags:
- Survey design
output: html_document
page_update: complete
---

Dear Professor Mean, I read a newspaper report about speed limits and
how few people obeyed them. A reporter decided to collect some hard data
and drove exactly at the speed limit (55 mph in this particular
setting). The reporter noticed that nine cars passed his car for every
car that he passed, and concluded that most people are breaking the
speed limit. I'm wondering if this is really a valid way to collect
data.

<!---More--->

Your worries are on target. To assess the appropriateness of any
sampling procedure, you need to ask yourself "Who was left out?" In this
sampling procedure,� the cars left out are the cars that neither passed
you nor were passed by you, because they were travelling at exactly the
same speed as you.

Suppose that 90% of the cars drive at 55mph and 9% drive faster than
55mph and 1% drive slower than 55mph, then 9 cars will pass you for
every 1 that you pass. But 91% of the cars obey the speed limit. You
never see most of them because if they are 1,000 feet in front of you or
behind you when you start your data collection, those cars will remain
1,000 feet away when you are done with your data collection. Now,
realistically, I don't believe that 90% of the cars drive at exactly
55mph, but the data collection described above is clearly biased because
it is unable to sample the fraction who travel exactly at 55mph and it
undersamples those cars that drive only a tiny bit faster or slower than
55 mph.

What's worse is that the cars that drive slower are very unlikely to
drive a lot slower than 55 mph. It would suicide to drive more than 5
mph below the speed limit. But among those who drive faster than the
speed limit, the sky's the limit. Some may only drive 2 mph above the
speed limit and some may drive only 5 mph above the speed limit, but
there are still more than enough drivers out there who are 10 to 20 mph
above the speed limit and these are the drivers who are most likely to
appear in your sample.

So, it's clearly a biased sample. It would be better to sit by the side
of the road at 0 mph and point your radar gun at every car that passes
by. There may still be some biases, especially if there is a
relationship between the speed at which you drive and the frequency and
duration of your trips. But if there are biases, they would be a lot
less than the biases inherent in the reporter's sampling method.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/car-speeds/
[sim2]: http://blog.pmean.com
