---
title: "PMean: Some open source Kaplan Meier curves"
author: "Steve Simon"
source: "http://blog.pmean.com/open-source-km/"
date: "2016-04-10"
category: Blog post
tags: Survival analysis
output: html_document
---

I'm giving a talk on the Kaplan-Meier survival curve and wanted to show
and interpret a few real examples from the open source
literature.

<!---More--->

First, here's how to interpret a Kaplan-Meier curve. All survival curves
start in the upper right corner. Curves that end up in the lower left
corner represent survival rates that descend rapidly to 0%. If you're
looking at an event like mortality, relapse, re-hospitalization, or
another unwanted event, then such a curve is very bad news. Curves that
end up in the upper right corner represent survival rates that stay high
for a long period of time. For unwanted events, such a curve is very
good news.

![](../../web/images/open-source-km01.bmp)



A few graphs will reverse this scale by looking at the probability of
death rather than the probability of survival. <U+00A0>Here, the upper left
corner is bad and the lower right corner is good.

![](../../web/images/open-source-km02.bmp)



Each step represents one or more events (deaths if your outcome is
survival.

![](../../web/images/open-source-km03.bmp)



Most software will place a vertical bar at each censoring time.

There are a couple of other things to look for. The size of the steps is
an indication of the sample size. Small steps are good. They tell you
that the survival probabilities are precisely estimated because they are
based on a large number of patients at risk. Large steps could mean that
a bunch of people died all at once, but more likely it means that the
survival probabilities are imprecise because they are based on a small
number of patients at risk. In many survival curves, the steps are small
early in the study, but become much larger later in the study because
fewer patients have a long term follow-up time.Does the curve tend to
level off

![https://static-content.springer.com/image/art%3A10.1186%2F1916-0216-42-53/MediaObjects/40463\_2013\_Article\_50\_Fig1\_HTML.jpg](https://static-content.springer.com/image/art_10.1186/1916-0216-42-53/MediaObjects/40463_2013_Article_50_Fig1_HTML.jpg)

From
<http://journalotohns.biomedcentral.com/articles/10.1186/1916-0216-42-53>.

![https://static-content.springer.com/image/art%3A10.1186%2F1471-2407-6-194/MediaObjects/12885\_2006\_Article\_546\_Fig5\_HTML.jpg](https://static-content.springer.com/image/art_10.1186/1471-2407-6-194/MediaObjects/12885_2006_Article_546_Fig5_HTML.jpg)

From
<http://bmccancer.biomedcentral.com/articles/10.1186/1471-2407-6-194>.

![https://static-content.springer.com/image/art%3A10.1186%2Fs12890-015-0025-z/MediaObjects/12890\_2015\_25\_Fig2\_HTML.gif](https://static-content.springer.com/image/art_10.1186/s12890-015-0025-z/MediaObjects/12890_2015_25_Fig2_HTML.gif)

From
<http://bmcpulmmed.biomedcentral.com/articles/10.1186/s12890-015-0025-z>.

![](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2F2042-6410-3-16/MediaObjects/13293_2012_Article_35_Fig2_HTML.jpg)

From <http://bsd.biomedcentral.com/articles/10.1186/2042-6410-3-16>.

![https://static-content.springer.com/image/art%3A10.1186%2F1758-2652-12-38/MediaObjects/13050\_2009\_Article\_446\_Fig1\_HTML.jpg](https://static-content.springer.com/image/art_10.1186/1758-2652-12-38/MediaObjects/13050_2009_Article_446_Fig1_HTML.jpg)

From
<http://jiasociety.biomedcentral.com/articles/10.1186/1758-2652-12-38>.

![https://static-content.springer.com/image/art%3A10.1186%2F1477-7819-4-55/MediaObjects/12957\_2005\_Article\_210\_Fig6\_HTML.jpg](https://static-content.springer.com/image/art_10.1186/1477-7819-4-55/MediaObjects/12957_2005_Article_210_Fig6_HTML.jpg)

From <http://wjso.biomedcentral.com/articles/10.1186/1477-7819-4-55>.

![https://static-content.springer.com/image/art%3A10.1186%2F1746-1596-5-22/MediaObjects/13000\_2010\_Article\_267\_Fig2\_HTML.jpg](https://static-content.springer.com/image/art_10.1186/1746-1596-5-22/MediaObjects/13000_2010_Article_267_Fig2_HTML.jpg)

From
<http://diagnosticpathology.biomedcentral.com/articles/10.1186/1746-1596-5-22>.

![https://static-content.springer.com/image/art%3A10.1186%2F1476-511X-9-100/MediaObjects/12944\_2010\_Article\_349\_Fig3\_HTML.jpg](https://static-content.springer.com/image/art_10.1186/1476-511X-9-100/MediaObjects/12944_2010_Article_349_Fig3_HTML.jpg)

From
<http://lipidworld.biomedcentral.com/articles/10.1186/1476-511X-9-100>.

![https://static-content.springer.com/image/art%3A10.1186%2F1476-4598-13-241/MediaObjects/12943\_2014\_Article\_1442\_Fig2\_HTML.jpg](https://static-content.springer.com/image/art_10.1186/1476-4598-13-241/MediaObjects/12943_2014_Article_1442_Fig2_HTML.jpg)

From
<http://molecular-cancer.biomedcentral.com/articles/10.1186/1476-4598-13-241>.

![https://static-content.springer.com/image/art%3A10.1186%2F1748-717X-7-78/MediaObjects/13014\_2012\_Article\_575\_Fig4\_HTML.jpg](https://static-content.springer.com/image/art_10.1186/1748-717X-7-78/MediaObjects/13014_2012_Article_575_Fig4_HTML.jpg)

From
<http://ro-journal.biomedcentral.com/articles/10.1186/1748-717X-7-78>.


