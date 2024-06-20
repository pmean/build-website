---
title: Profile analysis and MANOVA
author: Steve Simon
source: http://www.pmean.com/05/ProfileAnalysis.html
date: 2005-04-18
categories:
- Blog post
tags:
- Being updated
- Multilevel models
output: html_document
page_update: partial
---
**[StATS]:** **Profile analysis and MANOVA (April
18, 2005)**

Someone asked me about profile analysis as alternative analysis to
MANOVA (Multivariate Analysis of Variance). Typically you would use
profile analysis when the outcome variables are measuring (more or
less) the same thing, but possibly at different times or in different
ways. You start by examining a profile of these measures, a graph that
looks very similar to an interaction plot. You first test for
parallelism by looking at a set of contrasts. If you accept the null
hypothesis here, then you look to see if the profiles are flat, again
using a contrast. Finally, if you accept that null hypothesis, you
test whether the profiles are coincident (lie one on top of the
other).

Both MANOVA and profile analysis have been replaced by better and more
flexible approaches using a mixed model analysis of variance and/or a
random effects regression model. I want to write a web page about
mixed models and random effects models, but have not had the time to
do this.

**Further reading:**

1.  [www.ats.ucla.edu/stat/stata/faq/profile.htm](http://www.ats.ucla.edu/stat/stata/faq/profile.htm)
2.  [socsci.colorado.edu/LAB/STATS/SPSS/spss1095.html](http://socsci.colorado.edu/LAB/STATS/SPSS/spss1095.html)

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/ProfileAnalysis.html
[sim2]: http://www.pmean.com

