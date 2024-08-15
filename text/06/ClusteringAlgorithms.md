---
title: How do the various clustering algorithms work?
author: Steve Simon
source: http://www.pmean.com/06/ClusteringAlgorithms.html
date: 2006-01-31
categories:
- Blog post
tags:
- Cluster analysis
output: html_document
page_update: partial
---

> I'm working with someone on some clustering models for his microarray
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
