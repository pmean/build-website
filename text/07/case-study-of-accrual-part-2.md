---
title: Case study of accrual in a clinical trial, part 2
author: Steve Simon
source: http://www.pmean.com/07/CaseStudyOfAccrualPart2.html
date: 2007-10-09
categories:
- Blog post
tags:
- Accrual problems
output: html_document
page_update: complete
---

I received additional accrual data on a clinical trial I am monitoring. To review, the trial started on August 28, 2007 and will continue until January 31, 2008, for a total of 22 weeks. The researcher thinks that he might be able to get 3 patients per week over a 22 week trial (66 total), but he is very confident that he would get at least 2 patients per week (44 total). The confidence in the estimate of 3 patients per week was rated as 5 on a 10 point scale. After one week, a single patient has entered the study. No patients enter on weeks 2, 3, or 4. On week 5, three patients enter the study. On week 6, one more patient enters for a total of 5 patients.

<!---More--->

What would the estimated accrual look like after each week of the study? For each graph, I will include a red line that shows what an accrual rate of 3 patients per week would look like and a blue line that shows what an accrual rate of 2 patients per week would look like. Let's start with uncertainty as reflected during the initial planning phase.

![Figure 1. Graph of accrual during planning phase](http://www.pmean.com/new-images/07/CaseStudyOfAccrualPart201.gif)

This is the prior estimate of final sample size. It is centered around 66, but there is substantial uncertainty about the final sample size. The 95% probability limits for the predicted sample size range from 42 to 95. Note that the pessimistic line in blue corresponds roughly to the lower limit of the predicted final sample size.

![Figure 2. Graph of accrual one week into study](http://www.pmean.com/new-images/07/CaseStudyOfAccrualPart202.gif)

The first week produces only one patient rather than 3. The estimated overall sample size has shrunk from 66 to 60, and the 95% probability interval is also slightly smaller.

![Figure 3. Graph of accrual two weeks into study](http://www.pmean.com/new-images/07/CaseStudyOfAccrualPart203.gif)

After two weeks and still only one patient, the median predicted sample size slips to 52.

![Figure 4. Graph of accrual three weeks into study](http://www.pmean.com/new-images/07/CaseStudyOfAccrualPart204.gif)

After a third week with no additional patients, the median predicted sample size continues to slip.

![Figure 5. Graph of accrual four weeks into study](http://www.pmean.com/new-images/07/CaseStudyOfAccrualPart205.gif)

After a fourth week of no activity, the medina predicted sample size falls all the way to 41. The estimated sample size is even less that the projection of the pessimistic rate of two per week.

![Figure 6. Graph of accrual five weeks into study](http://www.pmean.com/new-images/07/CaseStudyOfAccrualPart206.gif)

In fifth week, three patients entered the study, but the predicted sample size stays pretty much the same. The researcher did get the back on track, but did not get the "catch up" growth that this study needed.

![Figure 6. Graph of accrual six weeks into study](http://www.pmean.com/new-images/07/CaseStudyOfAccrualPart207.gif)

In week 6, with only one additional patient, the median predicted sample size declines again. If you compare this graph to the graph showing the uncertainty in predicted sample size prior to the start of the study, there is an important feature beyond the downward shift in the median predicted sample size. Notice that the 95% probability limits had a total width of 52 at the start of the study and only 32 after 6 weeks. As more time elapses and you gain more experience with understanding exactly how fast or slow patients accrue, you get more precision in your prediction about the final sample size.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/CaseStudyOfAccrualPart2.html
[sim2]: http://www.pmean.com
