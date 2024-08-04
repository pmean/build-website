---
title: "Trying to save time in R ends up costing me time"
author: "Steve Simon"
source: "http://blog.pmean.com/save-time/"
date: "2016-05-18"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

Sometimes you end up trying to be so clever that you out-clever yourself. This happened to me today in R. I tried something that was supposed to save me time and it ended up costing me more time instead.

<!---More--->

I use knitr R markdown a lot within R Studio, and it has a lot of advantages. One disadvantage, though is that it tends to encourage you to run the whole program every time even though you've only made a change in one spot. I know that there are workarounds for this, and I often take advantage of them, But the path of least resistance is to just run everything. This is different, as I understand it, for Jupyter, but I have not tried Jupyter yet to know for sure.

One nice option (so I thought)� was CACHE. If you set CACHE equal to TRUE, it only runs a chunk if it has changed since the last run or if it is preceded by a chunk that has changed. That can save you big time for some programs, but you have to be careful.

One of the chunks in one of my programs (extract_case_control.Rmd) used the source function to run some R code (create_utility_functions.R) that creates (you guessed it) some utility functions. I got an error message that was clearly indicating a problem with create_utiliity_functions.R rather than the main program. I had misspelled the exists function as exisists.

It was an easy fix. I just go into create_utility_functions.R, change the code, save things, switch back to extract_case_control.Rmd, and hit the knit button.

But oh no, it still didn't work. So I went back to create_utility_functions.R to see where the second misspelling occurred. It was nowhere to be found. I search using exi to see if I could find a partial match. No luck. Every exists function in create_utility_functions. R was spelled correctly.

So let's see in the misspelling is hiding somewhere in extract_case_control.Rmd. No luck here either. Let's go back to create_utility_functions.R one more time. No luck. It looks like exisists doesn't exist anywhere. I was ready to shut everything down a reboot, but then I thought that removing the CACHE=TRUE option might help. It fixed the problem.

In hindsight, the problem was obvious. When I fixed a problem within create_utility_functions.R, it didn't involve a change in the chunk withing extract_case_control.Rmd that used source. So with CACHE=TRUE, it just jumps past this chunk. And the error within one of the utility functions remains.

The simple solution is to avoid CACHE=TRUE, but I hate to do this. A better solution is to set CACHE=TRUE globally, but then override it for any chunk that uses the source function.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/save-time/
[sim2]: http://blog.pmean.com
