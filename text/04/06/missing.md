---
title: Missing values
author: Steve Simon
source: http://www.pmean.com/04/missing.html
date: 2004-06-22
category: Blog post
tags: Statistical theory
output: html_document
---
**[StATS]: Missing values (June 22, 2004)**.

Someone here at the hospital asked me how to do a reliability analysis
on a 20 item measure where a large number of participants left a single
item blank. There are several approaches that work, but you need to
exercise a bit of caution.

The simplest thing is to analyze only those participants who completed
all 20 items. This is known as **listwise deletion**. You can lose a lot
of precision with this approach because your sample size will often be a
lot smaller. You also have to assume that the patients who left one or
more items blank do not differ substantially from other patients.

You could also replace the missing items by the average score of the
remaining items. This is known as **mean imputation**. You have to
assume that patients who left one or more items blank do not differ from
other patients and that items left blank do not have different responses
from items that were filled out. Even if these criteria are satisfied,
mean imputation will tend to understate the variability because the mean
values that you substitute for the missing values will artificially
reduce the variation in your data.

You can also conduct a simulation by randomly replacing the missing
values from a probability distribution that reflects your best
understanding about the process that generated missing values. The is
known as **multiple imputation**. It is a tricky process and it is only
as good as the probability distribution that you choose. A nice
introduction to multiple imputation is on the web at
<http://web.inter.nl.net/users/S.van.Buuren/mi/hmtl/whatis.htm>.

Multiple imputation is far better than listwise deletion or mean
imputation, as long as you have the time and energy to do it well. I
have not read it yet, but the classic reference on missing data is

**Statistical Analysis with Missing Data, Second Edition** by Roderick
J.A. Little and Donald B. Rubin. [\[BookFinder4U
link\]](http://www.bookfinder4u.com/detail/0471183865.html)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Statistical
theory](../category/StatisticalTheory.html).
<!---More--->
theory](../category/StatisticalTheory.html).
for pages similar to this one at [Category: Statistical
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Missing values (June 22, 2004)**.
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Statistical
theory](../category/StatisticalTheory.html).
--->

