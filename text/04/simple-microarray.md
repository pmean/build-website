---
title: A simple microarray experiment
author: Steve Simon
date: 2004-09-21
categories:
- Blog post
tags:
- Data mining
output: html_document
page_update: partial
---
> Someone just gave me some data with a small microarray. There are four
> exposed animals (Exp.1 through Exp.4) and four control animals (Exp.5
> through Exp.8). The microarray has 96 genes, as well as some
> housekeeping genes
>
> `    Position   UniGene  Genebank Symbol`
>
> `97        97               N/A   L08752   PUC18`
>
> `98       100     Blank             Blank  Blank`
>
> `99       103   Mm.5289            M32599   Gapd`
>
> `100      105   Mm.5246 NM_008907   Ppia`
>
> `101      109  Mm.13020 NM_009438 Rpl13a`
>
> `102      111 Mm.195066    M12481           Actb      `
>
> To read this data into R, I first created a comma separated value file
> from Excel. Then I used the read.csv() command in R to create a data
> frame. When I have time, I will try to document all the steps in the
> data analysis of this small microarray.

You can find an [earlier version](http://www.pmean.com/04/SimpleMicroarray.html) of this page on my [original website](http://www.pmean.com/original_site.html).
