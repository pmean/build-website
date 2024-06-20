---
title: Resources for fMRI data analysis
author: Steve Simon
source: http://www.pmean.com/07/FmriAnalysis.html
date: 2007-02-08
categories:
- Blog post
tags:
- Imaging 
output: html_document
page_update: complete
---

I was asked to provide feedback on a grant that will use functional magnetic resonance imaging (fMRI) as one component of the research. This technique is used to quantify brain activity by measuring changes in blood flow in various regions of the brain. It effectively produces information in the three dimensions of the brain structure, plus a dimension of time. The technology today can produce images localized to a cube with dimensions of approximately 2-4 mm, and these can be measured every 1-4 seconds. Each individual cubic region is called a voxel, a contraction of the words "volume" and "pixel."

The general goal of fMRI in research is to contrast brain activity in certain regions of the brain (such as the prefrontal cortex) between two or more groups of subjects and/or with two or more different sensory stimuli.

The data produced in an fMRI study is especially challenging from a statistical perspective. A quick Medline search yielded a whole host of papers listing exotic statistical methods. Here are some examples (I'm just reproducing the titles):

+ Treatment of ill-balanced datasets of fMRI with Modified Fuzzy c-means Method.
+ ICASENSE: Sensitivity mapping using Independent Component Analysis for parallel Magnetic Resonance Imaging.
+ fMRI bold signal analysis using a novel nonparametric statistical method.
+ A semi-parametric approach to estimate the family-wise error rate in fMRI using resting-state data.
+ Hidden Markov multiple event sequence models: A paradigm for the spatio-temporal analysis of fMRI data.
+ Smoothing and cluster thresholding for cortical surface-based group analysis of fMRI data.
+ Analyzing fMRI experiments with structural adaptive smoothing procedures.

The analysis of fMRI data requires extensive graphics processing and filtering. There are spatial and temporal autocorrelations that need to be accounted for. Some proprietary software for fMRI data analysis include

+ [BrainVoyager][bra1]
+ [FMRISTAT][fmr1]
+ [SPM][spm1]

There are two R libraries for analysis of fMRI data:

+ [AnalyzieFMRI][mic1],
+ [fmri][tab1]

At the SPM website, you can find a nice introduction to some of the data analysis issues in a paper 

+ K. Friston Introduction to Statistical Parametric Mapping. Availabe in [html format][fri1] or [pdf format][fri2].

Another resource discussing data analysis issues is:

+ Ian Lai, Randy Gollub, Richard Hoge, Douglas Greve, Mark Vangel, Russ Poldrack, and Julie E. Greenberg. Teaching Statistical Analysis of fMRI Data. Available in [pdf format][lai1].

There are several books out on fMRI analysis, and the one that looked like it has the most statistical content is

+ Gordon E. Sarty. Computing Brain Activity Maps from fMRI Time-Series Images. See [publisher's website][sar1].

I may be asked to produce a power calculation, and a good reference for this is:

+ J. E. Desmond, G. H. Glover. Estimating sample size in functional MRI (fMRI) neuroimaging studies: statistical power analyses.J Neurosci Methods 2002: 118(2); 115-28. This article is [behind a pay wall][des1].

[bra1]: http://www.brainvoyager.com/BrainVoyager.htm
[des1]: https://www.sciencedirect.com/science/article/abs/pii/S0165027002001218
[fmr1]: http://www.math.mcgill.ca/keith/fmristat/
[fri1]: https://www.fil.ion.ucl.ac.uk/spm/doc/intro/
[fri2]: https://www.fil.ion.ucl.ac.uk/spm/doc/intro/intro.pdf
[lai1]: https://peer.asee.org/teaching-statistical-analysis-of-fmri-data.pdf
[mic1]: https://cran.r-project.org/package=AnalyzeFMRI
[sar1]: https://www.cambridge.org/core/books/computing-brain-activity-maps-from-fmri-timeseries-images/82708BFB80619475D4B2BE1912F5F13B
[spm1]: http://www.fil.ion.ucl.ac.uk/spm/
[tab1]: https://cran.r-project.org/package=fmri

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/FmriAnalysis.html
[sim2]: http://www.pmean.com