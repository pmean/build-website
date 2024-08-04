---
title: "About those awful election predictions"
author: "Steve Simon"
source: "http://blog.pmean.com/election-predictions/"
date: "2016-11-10"
categories: Blog post
tags:
- Probability concepts
output: html_document
page_update: complete
---

If you were on Mars for the past few days, you may not have noticed that Donald Trump has won the election. There has been a lot of commentary lately about how badly the predictions about the U.S. election have been and someone mentioned that even Nate Silver at the fivethirtyeight website had a predicted probability of a Clinton win at 71%. I wrote a brief comment that predicting an event with 71% probability does not mean that your prediction was "wrong" if the other event occurs.

<!---more--->

If I were a better artist, I would draw a Charlie Brown type cartoon of Hillary Clinton running up to kick the football and Donald Trump yanking away the football at the last minute. That would be a subtle reference to Nate Silver's repeated field goal analogy (Clinton's chances of losing are equal to an NFL kicker missing an xx-yard field goal). Sometimes it was a 40 yard field goal and sometimes it was a 37 yard field goal, but it was an analogy that was lost on many people, I think.

Andrew Gelman made a point about this back in 2012, when he pointed out that a probability like 71% is not "wrong" if the opposite event happens. We see lots of events with 29% probability happening. Nate Silver was quoted after after Game 5 of the World Series (when the Cubs were down 3-2), as saying that the Cubs had a 24% chance of winning the World Series. And he got criticized for this "awful" prediction when the Cubs won it all.

So I think that a criticism of Nate Silver is just flat out wrong. He had a fairly detailed explanation of [why Trump might win][silv1]. Note that this was written before the election.

Some of the other models had much higher probabilities and they were probably wrong because, as Nate Silver himself said, they didn't account properly for correlated errors. His prediction was almost eerie "If Clinton loses Pennsylvania despite having a big lead in the polls there, for instance, she might also have problems in Michigan, North Carolina and other swing states."

The other thing is that even a small bias in the national polls, a bias of 2%, would have a huge impact on the election. It would have made Romney president in 2012 and it did make Trump president in 2016. See, for example, [Andrew Gelman's commentary][gelm1] and [Nate Silver's][silv2].

I think the problem was not the prediction that Clinton would win, but rather the certainty of that prediction. Too many people looked at a more or less consistent Clinton lead in the major polls and in the major swing states and ignored the fact that these leads were often fairly thin leads.

As I understand it, in the [ASA student competition to predict the election][asa1], only 3% of the students predicted a Trump win. Those few who did, should be patting themselves on the back right now. But I can't bring myself to criticize the other 97%.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/election-predictions/
[sim2]: http://blog.pmean.com

[asa1]: http://thisisstatistics.org/electionprediction2016/

[gelm1]: http://andrewgelman.com/2016/11/09/explanations-shocking-2-shift/

 
[silv1]: http://fivethirtyeight.com/features/election-update-why-our-model-is-more-bullish-than-others-on-trump
[silv2]: http://fivethirtyeight.com/features/what-a-difference-2-percentage-points-makes/
