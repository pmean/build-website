---
title: Missing values
author: Steve Simon
date: 2004-06-22
categories:
- Blog post
tags:
- Statistical theory
output: html_document
page_update: partial
---
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

You can find an [earlier version](http://www.pmean.com/04/missing.html) of this page on my [original website](http://www.pmean.com/original_site.html).
