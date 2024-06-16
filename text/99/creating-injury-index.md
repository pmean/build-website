---
title: Injury index creation
source: http://www.pmean.com/99/injury.html
author: Steve Simon
date: 1999-09-23
categories:
- Blog post
tags:
- Unusual data
output: html_document
page_update: partial
---

*Dear Professor Mean, I want to create an injury index that describes
the severity of an injury to a child. This would include information
about the type of injury, the location of the injury, the age of the
child, etc. What's the best way to do this?*

> It seems to me like you have two choices. First, you can **build an
> index based on your judgment, intuition, and knowledge of medicine**.
> You might let a few graphs and tables of your data give you some
> guidance, but the predominant emphasis is on what the knowledge and
> experience that you have accumulated over time. You might get other
> humans involved by asking them to review and critique your index.
>
> Second, you can **let an automated procedure create the index for
> you**. You might tweak things a bit, but the computer does most of the
> work for you. There are a variety of tools, such as stepwise
> regression, factor analysis, neural nets, classification and
> regression trees, and cluster analysis that might help here.
>
> With either approach, of course, you have to **take the time to look
> at validity and reliability**. You are probably already more familiar
> with how to do this than I am.
>
> I would **strongly urge you to build your own index rather than
> letting a machine build it for you**. If you don't feel like you know
> enough to build an index on your own, how will you be able to
> critically evaluate an index that your automated procedure creates?
> Also, the number of variables you have is small enough that you can
> sift through them easily. A lot of these automated procedures shine
> when you have hundreds or thousands of variables to consider in your
> index. They also work well when you have thousands or millions of
> cases to examine. I suspect that your data set is not quite this
> large.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/injury.html
[sim2]: http://www.pmean.com/original_site.html
