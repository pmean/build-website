---
title: Selecting randomly from a list
author: Steve Simon
source: http://www.pmean.com/06/RandomSelection.html
date: 2006-07-18
categories:
- Blog post
tags:
- Randomization
output: html_document
page_update: partial
---

A common task in research is to randomly select a subgroup from a list.
For example, you have the names of 26 patients, Alpha, Bravo, Charlie,
Delta, etc. Suppose you want to select a small number of patients in
this list, but you want to do it randomly. There are several approaches
that work, but the simplest is to arrange your list in a systematic
order, attach a list of random numbers and then sort your list by those
random numbers. The figure below shows how this process works.

![RandomSelection01.gif not found.](http://www.pmean.com/new-images/06/RandomSelection01.png)
![RandomSelection02.gif not found.](http://www.pmean.com/new-images/06/RandomSelection02.png)
![RandomSelection03.gif not found.](http://www.pmean.com/new-images/06/RandomSelection03.png)
![RandomSelection04.gif not found.](http://www.pmean.com/new-images/06/RandomSelection04.png)
![RandomSelection05.gif not found.](http://www.pmean.com/new-images/06/RandomSelection05.png)
![RandomSelection06.gif not found.](http://www.pmean.com/new-images/06/RandomSelection06.png)

If you needed five randomly selected patients, they would be Xray,
Sierra, Charlie, Oscar, and Hotel. If you found out after the fact that
one of these five was ineligible, then you would just go to the next
name on your list (Mike).

This sort of procedure is used commonly in audits. You don't want to
review 100% of the records, so you randomly select a subset for audit.

The Office of Inspector General at the United States Department of
Health and Human Services provides some free software, RAT-STATS, for
just this situation.

*RAT-STATS is a package of statistical software tools designed to
assist the user in selecting random samples and evaluating the audit
results. The goal behind RAT-STATS was to develop valuable analytical
tools that could be easily used by auditors.*
[oig.hhs.gov/organization/oas/ratstat.html](http://oig.hhs.gov/organization/oas/ratstat.html)

It looks like a well written program.

**Related material on these web pages**

-   [Stats: Randomization](../plan/random.asp)
-   [Stats: What is block randomization (June
    30, 2006)](BlockRandomization.html)
-   [Stats: An inefficient approach to randomization (August
    10, 2005)](http://www.pmean.com/weblog2005/Randomization.asp)
-   [Stats: Random identification numbers (July
    26, 2004)](http://www.pmean.com/weblog2004/RandomID.asp)
