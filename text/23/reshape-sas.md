---
title: Reshaping longitudinal data in SAS
source: "New"
author: Steve Simon
date: 2023-07-22
categories:
- Blog post
tags:
- SAS software
output: html_document
page_update: complete
---

If you work with longitudinal data, you may see the data arranged in a tall and thin format or in a short and fat format. The tall and thin format is useful for some data analyses, such as mixed model analysis, and the short and fat format is useful for other data analyses, such as graphical display. You often need to convert from one format to the other. The UCLA Statistics website shows how this is done.

<!---more--->

The UCLA Statistics website shows data arranged in a tall and thin format 

```
famid year faminc 
 1    96   40000 
 1    97   40500 
 1    98   41000 
 2    96   45000 
 2    97   45400 
 2    98   45800 
 3    96   75000 
 3    97   76000 
 3    98   77000
```

which they call the long format. To convert this data to a short and fat format (which they call the wide format)

```
famid faminc96 faminc97 faminc98 
1     40000    40500    41000 
2     45000    45400    45800 
3     75000    76000    77000 
```

they use the following code

```
proc transpose
    data=long1
    out=wide1
    prefix=faminc;
  by famid ;
  id year;
  var faminc;
run;
```

I took the liberty of laying the code out slightly differently, but it's the same code.

If you have data in the short and fat format, you can also use proc transpose to convert to a tall and thin format.

```
proc transpose
    data=wide1
    out=long1;
  by famid;
run;
```

The UCLA site also shows some more complex applications of proc transpose on

+ [How to reshape data long to wide using proc transpose][ucl1]
+ [How to reshape data wide to long using proc transpose][ucl2]

[ucl1]: https://stats.oarc.ucla.edu/sas/modules/how-to-reshape-data-long-to-wide-using-proc-transpose/
[ucl2]: https://stats.oarc.ucla.edu/sas/modules/how-to-reshape-data-wide-to-long-using-proc-transpose/
