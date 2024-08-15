---
title: "Printing R Markdown output to png files"
author: "Steve Simon"
source: new
date: "2020-01-29"
categories:
- Blog post
tags:
- R software
output: html_document
page_update: complete
---

I have been using a tedious process to convert parts of the output of an R Markdown file to png files. I want to use png files because they can be inserted easily into a PowerPoint presentation. There's a trick to make this work.

<!---More--->

First, you need to adjust the paper size, as the fonts are too small in a png image of a full 8.5 by 11 inch page (or a full A4 page for those of you not in the United States).

There's an option to control paper size of a PDF output, but you have to dig a bit to find it. Start at the [section 3.3.5 of Yihui's book on Rmarkdown](https://bookdown.org/yihui/rmarkdown/pdf-document.html#latex-options). That gives you the helpful hint of geometry in the yaml header, but it only shows you how to control margins. Yihui suggests that you consult the Pandoc manual for the full list. 

The [Pandoc manual](https://pandoc.org/MANUAL.html) is huge, but look for the section "Variables for LaTeX" buried deep in the [Templates section](https://pandoc.org/MANUAL.html#templates) to find out more. 

It offers a bit of help, but you have to link to another page, the [geometry package](https://ctan.org/pkg/geometry), which is part of [CTAN, the Comprehensive TeX Archive Network](https://ctan.org/). click on the documentation link and nose around a bit. You have to put two and two together yourself, but here is what I added to the yaml header to get reasonable sizes.

```
geometry: a6paper, landscape, margins=0.25in
```

Now to convert from pdf to png, I use a program called [ImagePrinter Pro](https://code-industry.net/imageprinterpro/). It's not free, but it is professionally done and has some extra features I may end up using, such as cropping PDF files. There are free alternatives: just google for something like "convert pdf to png."

### SAS users (update: 2021-05-31)

You can also control papersize in SAS. You can specify

```
options papersize="4x6 card";
```

or

```
options papersize=(4in 6in);
```

Note that SAS uses a default of inches for units of measurement, but specifying the unit is still a good habit to follow. You can find details about papersize at the [SAS Help Center][sas1].


### Important notice, January 23, 2020.

I am in the process of updating my website and blog and am adopting a simpler approach that will ease the maintenance of these web pages. I have about 2,000 pages and they are in a wide range of styles and formats. I will be using markdown code to create fairly minimimally formatted html pages. The process is tricky, and I expect to see a lot of misformatted pages and broken links during this transition. Please be patient.

[sas1]: https://documentation.sas.com/doc/en/pgmsascdc/9.4_3.5/lesysoptsref/n1ieb4hg6fijzon1slcsyiqu7972.htm
