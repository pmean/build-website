---
title: Linegraph options in SAS
source: "New"
author: Steve Simon
date: 2024-07-22
categories:
- Blog post
tags:
- SAS software
output: html_document
page_update: no
---

Several of my students wanted information on how to modify graphs in SAS. I'm glad they asked, because the worst thing you can do with any software is to take the graph that appears based on the default options. The default options in SAS are actually pretty good, but you still need to revise your graphs so you can paint a fair picture of what is going on with your data. Revise your graphs about as often as you rewrite your text.

I wrote a program to show a few of the more important options that you have for revising linegraphs in SAS.  I have separate pages that show  [how to revise histograms in SAS][sim4] and [how to revise scatterplots in SAS][sim5].

<!---more--->

Here is the documentation header for the program I wrote along with some preliminaries to show where to find the data and where to store the output.

```{}
* linegraph-options.sas
  author: Steve Simon
  date: created 2024-07-21
  purpose: to show some options for line graphs.
  license: public domain;

ods word file=
    "/home/mail129/results/linegraph-options.docx";

libname storage "/home/mail129/data";
```

I will use a dataset that has information about AIDS cases in tow Australian provinces from 1982 to 1988. Here are the first few rows of data. Refer to the [data dictionary][sim3] for more details.

[sim3]: https://github.com/pmean/datasets/blob/master/aids-cases.yaml

```{}
proc print
    data=storage.aids_cases(obs=4);
  title1 "First four lines of data";
run;
```

![](http://www.pmean.com/new-images/24/sas-linegraph-options-01.png)

This is the code to produce a linegraph with the default options. Following this code and graph, you will see various ways to change the display of the linegraph. The code should be largely self-explanatory.

```{}
proc sgplot
    data=storage.aids_cases;
  series x=yr y=nsw;
  title1 "Line graph with default options";
run;
```

![](http://www.pmean.com/new-images/24/sas-linegraph-options-02.png)

```{}
proc sgplot
    data=storage.aids_cases;
  series x=yr y=nsw;
  scatter x=yr y=nsw;
  title1 "Line graph with points";
run;
```

![](http://www.pmean.com/new-images/24/sas-linegraph-options-03.png)

```{}
proc sgplot
    data=storage.aids_cases;
  series x=yr y=nsw / lineattrs=(thickness=4 px);
  title1 "Line graph with thicker line";
run;
```

![](http://www.pmean.com/new-images/24/sas-linegraph-options-04.png)

```{}
proc sgplot
    data=storage.aids_cases;
  series x=yr y=nsw / lineattrs=(color=cx999999);
  title1 "Line graph with gray line";
run;
```

![](http://www.pmean.com/new-images/24/sas-linegraph-options-05.png)

```{}
proc sgplot
    data=storage.aids_cases;
  series x=yr y=nsw / lineattrs=(pattern=dash);
  title1 "Line graph with dashed line";
run;
```

![](http://www.pmean.com/new-images/24/sas-linegraph-options-06.png)

You're done once you close the output file.

```{}
ods word close;
```

If you want to explore further, check out this resource.

SAS Institute. Line Attributes and Patterns. Available in [html format][sas1].

SAS Institute. Color-Naming Schemes. Available in [html format][sas2].

[sas1]: https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.5/grstatproc/p0er4dg9tojp05n1sf7maeqdz1d8.htm
[sas2]: https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.5/grstatproc/p0edl20cvxxmm9n1i9ht3n21eict.htm

[sim4]: http://new.pmean.com/sas-histogram-options/
[sim5]: http://new.pmean.com/sas-scatterplot-options/
