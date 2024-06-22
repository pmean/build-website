---
title: A brief overview of instrumental variables
author: Steve Simon
date: 2008-04-14
categories:
- Blog post
tags:
- Being updated
- Unusual data
output: html_document
page_update: no
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

People will often ask me questions that are outside my area of expertise. Yes, I know you're shocked to hear this, but there are lots of areas of statistics where I only have a vague understanding. One of these questions was about instrumental variables. I could only offer a vague explanation, but I hope that is better than no explanation at all.

As I understand it, instrumental variables are used to control for measurement error in your independent variables. Measurement error causes bias in most regression models. In general, but not always, it tends to flatten out or dilute the impact of an independent variable. If you want to get an unbiased estimate, you have to use an alternative approach. Some of these methods require you to specify the specific amount of measurement error that is present in your independent variable. Other approaches such as Deming regression modify the traditional fitting method of least squares. A third approach is to find and use an instrumental variable.

I can't provide a formal mathematical definition of an instrumental variable, and you probably wouldn't want to see such a definition. In very simple (overly simplistic?) terms, an instrumental variable is an alternative variable which does not suffer from measurement error and which only affects the outcome variable through its relationship with the independent variable. Such a condition is extremely difficult to verify empirically. Most of the time, an instrumental variable is identified by a subject matter expert based on their general understanding of the area. So a statistician like me is incapable of telling you what instrumental variable to use.

Once you identify an instrumental variable, though, the actual estimation process is fairly straightforward. It involves estimating and fitting two sets of equations simultaneously. For further details, consult the Wikipedia article on [Instrumental variable](../category/InterestingWebsites.html#insvar) or David Kenny's webpage on [Instrumental Variable Estimation](../category/InterestingWebsites.html#invaes).

A closely related article appears [here][sim3].

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/InstrumentalVariables.html
[sim2]: http://www.pmean.com/original_site.html

[sim3]: http://new.pmean.com/journal-club-instrumental-variables.html

