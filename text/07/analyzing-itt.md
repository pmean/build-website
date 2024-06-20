---
title: Analyzing data under an Intention to Treat model
author: Steve Simon
date: 2007-12-19
categories:
- Blog post
tags:
- Randomization in research
output: html_document
page_update: complete
---

### Dear Professor Mean,

I need to know how to analyze a data set using the intention to treat principle.

### Dear Reader,

The Intention to Treat (ITT) principle does not really require you to learn any new statistical methods. If you proposed a t-test in your original protocol, you would use a t-test in your ITT analysis. If you had proposed a logistic regression model in your original protocol, you would use a logistic regression model in your ITT analysis.

The key to an ITT analysis is who you include in the treatment group and who you include in the control group. And the short answer is to include everybody. Don’t let any patients be excluded from the analysis because they stopped taking the drug or because they switched to the competing therapy. If they were randomized to receive surgery, you analyze as if they received the surgery not matter what actually occurred after the coin was flipped to assign them to surgery. If they chickened out and ran out of the hospital screaming in terror, still analyze them as if they had gotten the operation. If they were randomized to receive a drug treatment instead of surgery, but they end up changing their mind and demanding surgery, analyze them as if the received the drug treatment only.

There really are no complexities to the ITT analysis, other than the fact that it seems counterintuitve. So, if you already have a plan for analysis of the data, you have a plan for analysis of the data using ITT.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/07/AnalyzingItt.html
[sim2]: http://www.pmean.com/original_site.html
