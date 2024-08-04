---
title: "Merging in dplyr is a lot faster"
author: "Steve Simon"
source: "http://blog.pmean.com/merging-in-dplyr/"
date: "2016-09-06"
categories: Blog post
tags:
- Data management
- R software
output: html_document
page_update: complete
---

At the Joint Statistics Meetings, I found out that the advantages of some of the new libraries for data manipulation (like dplyr and tidyr) go beyond just the flexibility of the new methods of data manipulation. These libraries produce code that is easier to read and which also runs a lot faster. I did not appreciate how much faster until I tried a test today.

<!---More--->

I tried merging two files. The first file has about 500,000 rows and the second has about 2,000 rows. It's a many-to-one merge and I am including only those rows that match on the key variable (an inner join). You can use the merge function that comes with R, and it takes 59.6 seconds. If you use instead the inner_join function in dplyr, it takes 1.5 seconds, which is about 40 times faster. I'm going to hunt for all my merges right now and replace everyone one with inner_join (or the left, right, and outer equivalents).

Another big advantage that dplyr uses well known terminology (inner_join, left_join, right_join, outer_join) rather than the somewhat cryptic all.x and all.y arguments in merge (all.x=TRUE and all.y=FALSE, for example, gives a left join).

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/merging-in-dplyr/
[sim2]: http://blog.pmean.com
