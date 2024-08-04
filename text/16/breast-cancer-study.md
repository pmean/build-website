---
title: "Information about the Great Plains Collaborative Breast Cancer Study"
author: "Steve Simon"
source: "http://blog.pmean.com/breast-cancer-study/"
date: "2016-01-28"
categories: 
- Blog post
tags:
- Professional details
output: html_document
page_update: complete
---

I’m starting a new project as an independent consultant. Normally, I talk very little on my blog about specific projects that I work for, but this work is for a group, the [Great Plains Collaborative (GPC)][gpc1] that is open about almost every aspect of the work they do. That’s music to my ears. Anyway, the GPC is involved with several projects and one of the ones I might do some of my work on is the Great Plains Collaborative Breast Cancer Study. Here is some information about this study, culled from sources available to anyone on the Internet.

<!---More--->

Just bit more about GPC before I talk about the study. The GPC is run out of Kansas University Medical Center, by a group known as Enterprise Analytics and Medical Informatics. That’s the physical location where I’ll be working.  (Note 2022-05-28: now separated into [Enterprise Analytics][ent1] and [Medical Informatics][med1]). 

The principal investigator for the Great Plains Collaborative Breast Cancer Study is [Elizabeth Chrischilles][chr1]. She is the director of the [Health Effectiveness Research Center (HERCe)][her1] at the University of Iowa. The University of Iowa is one of the participating centers in the Great Plains Collaborative.

A [nice summary of the study][her2] and the [full protocol submitted to the IRB][her3] is at the HERCe website. The preliminary goal is to demonstrate that a combined i2b2 database of electronic health records across all the GPC sites can provide a sampling frame that is suitable for a pilot survey study of experiences of patients after they have been diagnosed with breast cancer. The pilot survey itself will collect information on

+ *"patient knowledge about breast reconstruction options, quality of life outcomes of bilateral mastectomy, prevalence and correlates of gene testing, the role of patient preferences and shared decision-making, and correlates of patient experiences of care coordination."*

The study plans to send out 2,000 surveys and hopes for a response rate of 50%.

One of the programmers here at GPC, Dan Connolly, who is sitting right across from me right now, wrote a nice program using R markdown files in R Studio to query the i2b2 database and characterize the cohort of patients that will serve as the sampling frame for the survey. I want to characterize this work in a future blog entry.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/breast-cancer-study/
[sim2]: http://blog.pmean.com

[chr1]: http://www.public-health.uiowa.edu/people/elizabeth-chrischilles/
[ent1]: https://www.kumc.edu/enterprise-analytics/about.html
http://www.kumc.edu/ea-mi/faculty-and-staff-directory.html
[gpc1]: http://www.gpcnetwork.org/
[her1]: http://www.public-health.uiowa.edu/herce/about/index.html
[her2]: http://www.public-health.uiowa.edu/herce/research/gpc/index.html
[her3]: http://www.public-health.uiowa.edu/herce/research/gpc/GPC%20Breast%20Cancer%20IRB%20protocol%20approved%2022%20Jul%202015.pdf
[med1]: https://www.kumc.edu/enterprise-analytics/about.html
