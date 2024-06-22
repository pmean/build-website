---
title: "Some open source Kaplan Meier curves"
author: "Steve Simon"
source: "http://blog.pmean.com/open-source-km/"
date: "2016-04-10"
categories:
- Blog post
tags:
- Incomplete page
- Survival analysis
output: html_document
page_update: complete
---

I'm giving a talk on the Kaplan-Meier survival curve and wanted to show and interpret a few real examples from the open source literature.

<!---More--->

First, here's how to interpret a Kaplan-Meier curve. All survival curves start in the upper right corner. Curves that end up in the lower left corner represent survival rates that descend rapidly to 0%. If you're looking at an event like mortality, relapse, re-hospitalization, or another unwanted event, then such a curve is very bad news. Curves that end up in the upper right corner represent survival rates that stay high for a long period of time. For unwanted events, such a curve is very good news.

![](http://www.pmean.com/new-images/16/open-source-km01.bmp)

A few graphs will reverse this scale by looking at the probability of death rather than the probability of survival. Here, the upper left corner is bad and the lower right corner is good.

![](http://www.pmean.com/new-images/16/open-source-km02.bmp)

Each step represents one or more events (deaths if your outcome is survival).

![](http://www.pmean.com/new-images/16/open-source-km03.bmp)

Most software will place a vertical bar at each censoring time.

There are a couple of other things to look for. The size of the steps is an indication of the sample size. Small steps are good. They tell you that the survival probabilities are precisely estimated because they are based on a large number of patients at risk. Large steps could mean that a bunch of people died all at once, but more likely it means that the survival probabilities are imprecise because they are based on a small number of patients at risk. In many survival curves, the steps are small early in the study, but become much larger later in the study because fewer patients have a long term follow-up time. Does the curve tend to level off

![](http://www.pmean.com/new-images/16/open-source-km04.jpg)

From
<http://journalotohns.biomedcentral.com/articles/10.1186/1916-0216-42-53>.

![](http://www.pmean.com/new-images/16/open-source-km05.jpg)

From
<http://bmccancer.biomedcentral.com/articles/10.1186/1471-2407-6-194>.

![](http://www.pmean.com/new-images/16/open-source-km06.gif)

From
<http://bmcpulmmed.biomedcentral.com/articles/10.1186/s12890-015-0025-z>.

![](http://www.pmean.com/new-images/16/open-source-km07.jpg)

From <http://bsd.biomedcentral.com/articles/10.1186/2042-6410-3-16>.

![](http://www.pmean.com/new-images/16/open-source-km08.jpg)

From
<http://jiasociety.biomedcentral.com/articles/10.1186/1758-2652-12-38>.

![](http://www.pmean.com/new-images/16/open-source-km09.jpg)

From <http://wjso.biomedcentral.com/articles/10.1186/1477-7819-4-55>.

![](http://www.pmean.com/new-images/16/open-source-km10.jpg)

From
<http://diagnosticpathology.biomedcentral.com/articles/10.1186/1746-1596-5-22>.

![](http://www.pmean.com/new-images/16/open-source-km11.jpg)

From
<http://lipidworld.biomedcentral.com/articles/10.1186/1476-511X-9-100>.

![](http://www.pmean.com/new-images/16/open-source-km12.jpg)

From
<http://molecular-cancer.biomedcentral.com/articles/10.1186/1476-4598-13-241>.

![](http://www.pmean.com/new-images/16/open-source-km13.jpg)

From
<http://ro-journal.biomedcentral.com/articles/10.1186/1748-717X-7-78>.


You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/open-source-km/
[sim2]: http://blog.pmean.com
