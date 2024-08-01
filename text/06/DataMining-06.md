---
title: Data mining and drug safety
author: Steve Simon
source: http://www.pmean.com/06/DataMining-06.html
date: 2006-05-04
categories:
- Blog post
tags:
- Adverse events
output: html_document
page_update: partial
---

I am very interested in safety issues, especially in the continuing
review/interim analysis of clinical trials. It turns out that S-plus is
targeting drug safety as a particularly important application of its
data mining modules. Two recent web seminars addressed this topic:

-   Pre-Analytic and Post-Analytic Factors in Post market Drug Safety
    Data Mining. Speakers: Alan Hochberg of ProSanos Corporation and
    Michael O'Connell of Insightful Corporation. Abstract: The
    pharmaceutical industry is now responding to a series of
    high-profile drug safety issues in a number of ways, including the
    development and deployment of new methods of visualizing and mining
    drug safety information. Many of these methods employ
    state-of-the-art techniques in statistical analysis and graphical
    display. In developing and deploying these methods, it must be kept
    in mind that pharmacovigilance is a man-machine partnership: a
    computer is used to collect, digest, and display large amounts of
    data regarding drugs and adverse events, while a human drug safety
    expert, trained in biochemistry, physiology, and medicine as well as
    statistics, interprets the data and makes decisions.
-   Safety Data Analysis and Reporting: Signal Detection, Data-Mining
    and Next Generation Methodology for Drug Risk Assessment and Safety
    Research. Speakers: Alejandro Murua, University of Montreal and
    Michael O'Connell, Insightful Corporation. In its efforts to
    continue to serve the public health and protect public safety, the
    pharmaceutical industry is now challenged to set up sound
    pharmacovigilance plans that carefully analyze and report on
    pre-marketing clinical study data, minimize risk and monitor
    post-marketing safety. These plans include the statistical analysis
    and reporting of adverse events in clinical studies and the
    proactive analysis of observational data such as FDA AERS for signal
    detection and risk management. In this context, the use of
    sophisticated statistical analysis models and data mining techniques
    is of increasing importance in pharmacovigilance, as these methods
    are able to detect signals earlier and more accurately than current
    methods.

There are not any public links to these presentations, but you should be
able to register at the S-plus website
([www.insightful.com](http://www.insightful.com)) and get access to
them.

I want to use control charts to monitor safety data. I think it is a
nice complement to the more complex data mining approaches advocated
here (and by others as well). The control charts are a simple approach
that pretty much anyone can use. It helps distinguish between signals
and noise and has been optimized over years of work in business and
industry. Data mining tools can look at more complex interrelationships
among variables, and will be more effective in the hands of a trained
statistician that a control chart would. Nevertheless, a control chart
is still valuable because it will be used more often by
non-statisticians and will allow more people to engage themselves in the
examination of safety issues.
