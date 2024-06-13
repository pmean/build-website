---
title: "Is sample size justification really different for animal studies compared to human studies?"
author: Steve Simon
source: http://www.pmean.com/12/animal.html
date: 2012-01-06
categories:
- Blog post
tags:
- Ask Professor Mean
- Sample size justification
output: html_document
page_update: complete
---

Dear Professor Mean, I've spent my entire career (so far) in developing statistical analysis plans for human subjects research. Recently, a neuroscientist who performs experiments on rats asked me to assist in a power analysis. My conversation with him reminded me of that YouTube video (Biostatistics vs Lab Research): "I think I only need 3 subjects..." In his case, he seemed fixated on needing only 6 rats per group---which is what he had always done in the past. Are the rules for sample size justification different for animal studies than for human studies?

<!---More--->

Dar reader, It's not too surprising to me. If he insists on 6 rats, remind him that this won't pass muster anymore with the animal care and use committee (ACUC). Animal scientists have been a bit slow, in my opinion, in coming around to thinking carefully about sample size issues and it has taken some prodding from the ACUC to get people to stop relying on previous precedent. But it clearly is wasteful of animal resources to conduct a grossly overpowered or grossly underpowered study.

The rules for animal research are pretty much the same as for human research with one or two possible exception. First, carefully inbred strains of rats are all living in an environment that is carefully controlled to assure uniformity. Much of the genetic and environmental fluctations common to human studies are controlled for in an animal study, leading to smaller sample sizes.

The bigger difference, perhaps, is that the minimum clinically important difference is kind of hard to define in an animal experiment. If I work hard enough, I could probably figure out what a clinically important reduction in blood cholesterol would be in a human study. But what change in a rat's cholesterol level would be important? Well, I don't know of any clinics that treat rats, so you have to rethink this concept.

A lot of times, you are using an animal experiment to establish the plausibility of a biological pathway or a mechanism of action. How big a difference is needed to establish a pathway or mechanism? Well, pretty much any change that is statistically significant would work. So that doesn't help too much.

Animal scientists might have some informal rules, and you may want to ask about these. It may seem extreme, but there may be some informal rules such as "don't trust anything that does not lead to at least a tripling of the response" or "don't trust an experiment whenever there is an overlap between the maximum value in one group and the minimum value in another group."

I don't think scientists really use rules like this too much, but if they did, you should design your experiment so that a tripling of response in the true means has a high power. Or design your study so that if the two groups fail to overlap, the p-value from your nonparametric test will be guaranteed to be less than 0.05.

This last criteria, by the way, is a pretty good reason to insist on more than 3 or 4 animals per group. 3 animals per group and you can't get statistical significance at an alpha level of 0.05 for the Mann-Whitney U test, no matter how extreme the data. 5 animals in a pre-post experiment and you can't get statistical significance for the Wilcoxon signed rank test, no matter how extreme the outcome.

When animal scientists decided to use sample sizes of 3 or 6 in each group, I think they were derived from concerns like "what if one of the animals escaped or died from unrelated causes."

Now, the way I usually like to think about animal experiments is "what size effect do you expect to see in this study, if your pathway or mechanism is real?" And usually the effect they expect to see is indeed pretty strong. Animal experiments usually do produce pretty striking differences between groups. So if they say something like a doubling or tripling of the mean response, I usually accept that, while I'll question such a number more carefully in a human study. If they suggest something that implies an "all or nothing" response, such as the best control animal is still lower than the worst treated animal, then I'll try to get them to back off a bit. What if one of the treated animals shows a weak response?

If someone insists on a fixed sample size, it may be worthwhile to see what size difference that would be detectable with 80% power. Then ask, is this sized difference that most studies in your area show? Would you be comfortable with a research design where a samller difference was likely to remain undetected?

Sometimes, showing animal researchers how wide their confidence intervals are expected to be with only 6 animals per group is an eye opener.

Let me share one interesting story about sample size issues with an animal researcher. I was helping someone with power calculations for an animal experiment. There were several ways to estimate power and they all seemed to point to the use of either 8 animals per group or 12 animals per group. I explained that if she was more risk averse, she should use 12 animals and if she were more work averse, she should use 8 animals. Her answer surprised me a bit. She said that she liked the idea of using 12 animals per group. That way, if the results achieved significance after only 8 animals, she could go back to the Animal Care and Use Committee and tell them that she saved a few animals.

This is sort of like betting on red at the roulette wheel but getting two spins. Read more about this in [an earlier post][sim3].

[sim3]: http://new.pmean.com/early-stopping-animal/

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/12/animal.html
[sim2]: http://www.pmean.com/original_site.html
