---
title: How do the various clustering algorithms work?
author: Steve Simon
source: http://www.pmean.com/06/ClusteringAlgorithms.html
date: 2006-01-31
categories:
- Blog post
tags:
output: html_document
---
**[StATS]:** **How do the various clustering
algorithms work? (January 31, 2006)**.

> I\'m working with someone on some clustering models for his microarray
> experiment. He asked how the various clustering algorithms work.
>
> The K-means algorithm selects K centroid locations, and then assigns
> points to cluster I if that data point is closer to the I centroid
> than any other centroid. The clusters are then examined and the
> centroid locations are moved in an attempt to improve the separation
> of clusters. This process is repeated until the centroid locations
> converge.
>
> There is a nice graphical simulation of this algorithm at
>
> -   [www.elet.polimi.it/upload/matteucc/Clustering/tutorial\_html/AppletKM.html](http://www.elet.polimi.it/upload/matteucc/Clustering/tutorial_html/AppletKM.html)
>
> which requires the Java Runtime Environment 1.3 or later. This is a
> free download, from Sun Microsystems.
>
> Hierarchical clustering starts with a set of N clusters consisting of
> the N individual items. The algorithm then matches the two clusters
> that are closest to one another. Now you have a system with N-1
> clusters. Repeat the process until the number of clusters becomes 1.
>
> The same web page has a graphical simulation of hierarchical
> clustering at:
>
> -   [www.elet.polimi.it/upload/matteucc/Clustering/tutorial\_html/AppletH.html](http://www.elet.polimi.it/upload/matteucc/Clustering/tutorial_html/AppletH.html)
>
> The concept of distance changes when you talk about the distance
> between two clusters rather than the distance between two items.
> Single linkage defines the distance between two clusters in an
> optimistic fashion. It looks at the best case, or the distance of the
> two closest items. Complete linkage defines the distance between two
> clusters in a pessimistic fashion, by looking at the distance of the
> two furthest items. Average linking looks at the distance between
> every pair and computes the average.
>
> A good graphical illustration of these three methods is at:
>
> -   [www.resample.com/xlminer/help/HClst/HClst\_intro.htm](http://www.resample.com/xlminer/help/HClst/HClst_intro.htm)
>
> As a practical matter, the three linkage methods usually produce
> similar results, but single linkage can sometimes produce long
> snakelike clusters.
>
> These are the two simplest and most commonly used clustering
> algorithms. There are many other clustering approaches, which I will
> try to describe when I have time.

[![Creative Commons
License](http://i.creativecommons.org/l/by/3.0/us/80x15.png)](http://creativecommons.org/licenses/by/3.0/us/)
This work is licensed under a [Creative Commons Attribution 3.0 United
States License](http://creativecommons.org/licenses/by/3.0/us/). It was
written by Steve Simon and was last modified on 04/01/2010.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **How do the various clustering
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

