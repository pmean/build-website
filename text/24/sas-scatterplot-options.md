---
title: Scatterplot options in SAS
source: "New"
author: Steve Simon
date: 2024-07-21
categories:
- Blog post
tags:
- SAS software
output: html_document
page_update: no
---

Several of my students wanted information on how to modify graphs in SAS. I'm glad they asked, because the worst thing you can do with any software is to take the graph that appears based on the default options. The default options in SAS are actually pretty good, but you still need to revise your graphs so you can paint a fair picture of what is going on with your data. Revise your graphs about as often as you rewrite your text.

I wrote a program to show a few of the more important options that you have for revising scatterplots in SAS. I have a separate page that shows [how to revise histograms in SAS][sim4] and [how to revise linegraphs in SAS][sim6].

<!---more--->

Here is the documentation header for the program I wrote along with some preliminaries to show where to find the data and where to store the output.

```{}
* scatterplot-options.sas
  author: Steve Simon
  date: created 2024-07-21
  purpose: show some options for a scatterplot
  license: public domain;

libname storage "/home/mail129/data";

ods word file=
    "/home/mail129/results/scatterplot-options.docx";
```

I will use a dataset that has information about body fat and measures of a person's circumference at various places on their body. Here are the first few rows of data. Refer to the [data dictionary][sim3] for more details.

[sim3]: https://github.com/pmean/datasets/blob/master/fat.yaml

```{}
proc print
    data=storage.fat(obs=5);
  title1 "First five lines of data";
run;
```

![](http://www.pmean.com/new-images/24/sas-histogram-options-01.png)

This is the code to produce a histogram with the default options. Following this code and graph, you will see various ways to change the display of the histogram. The code should be largely self-explanatory.

```{}
proc sgplot
    data=storage.fat;
  scatter x=age y=wt;
  title1 "Scatterplot with default options";
run;
```

![](http://www.pmean.com/new-images/24/sas-scatterplot-options-02.png)

```{}
proc sgplot
    data=storage.fat;
  scatter x=age y=wt / markerattrs=(size=3 px);
  title1 "Scatterplot with small markers";
run;
```

![](http://www.pmean.com/new-images/24/sas-scatterplot-options-03.png)

```{}
proc sgplot
    data=storage.fat;
  scatter x=age y=wt / markerattrs=(size=20 px);
  title1 "Scatterplot with large markers";
run;
```

![](http://www.pmean.com/new-images/24/sas-scatterplot-options-04.png)

```{}
proc sgplot
    data=storage.fat;
  scatter x=age y=wt / markerattrs=(symbol=plus);
  title1 "Scatterplot with plus markers";
run;
```

![](http://www.pmean.com/new-images/24/sas-scatterplot-options-05.png)

```{}
proc sgplot
    data=storage.fat;
  scatter x=age y=wt / markerattrs=(color=CX990000);
  title1 "Scatterplot with dark red markers";
run;
```

![](http://www.pmean.com/new-images/24/sas-scatterplot-options-06.png)

We're done once we close the output file.

```{}
ods word close;
```

If you want to explore further, check out these resources.

SAS Institute. Marker Attributes and Symbols. Available in [html format][sas1].

SAS Institute. Color-Naming Schemes. Available in [html format][sas2].

[sas1]: https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.5/grstatproc/p0i3rles1y5mvsn1hrq3i2271rmi.htm
[sas2]: https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.5/grstatproc/n17xrpcduau1f8n1c1nhe477pv18.htm

[sim4]: http://new.pmean.com/sas-histogram-options/
[sim6]: http://new.pmean.com/sas-linegraph-options/
