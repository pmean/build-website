---
title: "Troubleshooting tips when you have errors in your SAS code"
author: "Steve Simon"
date: "2022-12-14"
output:
  html_document: default
categories: Blog post
tags:
- SAS software
source: new
page_update: complete
---

One of my SAS students wanted advice about how to troubleshoot. It's not an easy question to answer and depends a lot on the type of problem you encounter. Here are a few general guidelines, though, that might help.

<!---more--->

If you get an error message on a line of code that looks fine to you, see if there is a problem on the previous line of code. Especially a missing semicolon. That can cause all sorts of problems.

Take a look at the number of rows of data processed when you create a dataset and see if that number maintains consistency through later steps in your program. If you see a decline in the number of observations and that decline is unexpected, investigate this right away. In particular, errors in code will sometimes produce a data set with only one observation or sometimes even zero observations.

If you run a complicated proc with lots of options and it isn't working, try running something simpler, even if it produces an inappropriate analysis. If you can get the stripped down proc to work, then add back options one at a time.

Many error messages are difficult to decipher. Cut-and-paste the exact text of your message into an Internet search engine. The wording of error messages in SAS (and many other programs) is so different than how most of us talk and write that it usually will help you find the right solution on the Internet.

If the statistical results in a SAS table seem wrong to you, then definitely investigate. Half the time, it seems to me, the "wrong" results are actually real and represent a surprise finding lurking in your data. But half the time, bad code might be to blame. Insert extra SAS procedures in the middle of your code to see if there is a problem. A listing through proc print of the first few data values might help. Also try using the min and max options in proc means to see if a typo causes an extreme value that skews your data in the wrong direction.
