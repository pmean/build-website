---
title: Very low values from Cronbach's Alpha
author: Steve Simon
date: 2005-07-19
categories:
- Blog post
tags:
- Measuring agreement
output: html_document
page_update: partial
---

Someone came to me with an analysis of a scale of 16 items, where the Cronbach's alpha computed for that scale was only 0.14. The first thing you should look for in this situation is whether some of the items on the scale are reverse scaled. Sure enough, for 6 of the items, a small value represented a positive outcome and for the remaining 10 items, a large value represented a positive outcome. When the data was recoded so that a large value represented a positive outcome on all 16 items, Cronbach's alpha increased to 0.74.

**Further reading:**

- [Stats: What's a good value for Cronbach's Alpha?[sim3].

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/05/CronbachsAlpha.html
[sim2]: http://www.pmean.com/original_site.html
[sim3]: http://www.pmean.com/04/CronbachAlpha.html
