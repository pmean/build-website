---
title: "PMean: Examining relationships in R"
author: "Steve Simon"
source: "http://blog.pmean.com/relationships-in-r/"
date: "2015-04-03"
category: Blog post
tags: R software
output: html_document
---

I'm giving a talk for the Kansas City R Users Group on how to get a
preliminary impression of relationships between pairs of variables. Here
is the R code and output that I will use.

<!---More--->

Simple measures of association
==============================

There are several different ways of measuring bivariate relationships in
a descriptive fashion prior to data analysis. The methods can be largely
grouped into measures of relationship between two continuous variables,
two categorical variables and measures of a relationship between a
categorical variable and a continuous variable.

``` {.r}
fn <- "http://lib.stat.cmu.edu/DASL/Datafiles/homedat.html"
h0 <- readLines(fn)
n <- length(h0)
print(n)
```

    ## [1] 165

``` {.r}
head(h0)
```

    ## [1] "<TITLE>Home Prices</TITLE>"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    ## [2] ""                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## [3] ""                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
    ## [4] "<hr size=2><center><table border=1 cellpadding=0 cellspacing=0><tr><td align=center><table border=1 cellpadding=1 cellspacing=0><tr><td><A HREF="../DataArchive.html"><IMG SRC="../InlineImages/mainmenu.gif" alt="Go to Main Menu"></a></td></tr></table></td><td align=center><table border=1 cellpadding=1 cellspacing=0><tr><td><A HREF="/cgi-bin/dasl.cgi"><IMG SRC="../InlineImages/powersearchsmall.gif" alt="Go to Power Search"></a></td></tr></table></td><td align=center><table border=1 cellpadding=1 cellspacing=0><tr><td><A HREF="../allsubjects.html"><IMG SRC="../InlineImages/allsubjects.gif" alt="Go to Datafile Subjects"></a></td></tr></table></td></tr></table></center><hr size=2>"
    ## [5] "<B><DT>Datafile Name:</B>   Home Prices"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    ## [6] ""

``` {.r}
tail(h0)
```

    ## [1] "872\t1229\t6\t3\t0\t0\t0\t721" "870\t1273\t4\t4\t0\t0\t0\t638"
    ## [3] "869\t1165\t7\t4\t0\t0\t0\t694" "766\t1200\t7\t4\t0\t0\t1\t634"
    ## [5] "739\t970\t4\t4\t0\t0\t1\t541"  "</PRE>"

``` {.r}
the.data.line <- grep("The Data:",h0)
print(the.data.line)
```

    ## [1] 44

``` {.r}
h1 <- h0[(the.data.line+4):(n-1)]
head(h1)
```

    ## [1] "2050\t2650\t13\t7\t1\t1\t0\t1639" "2080\t2600\t*\t4\t1\t1\t0\t1088" 
    ## [3] "2150\t2664\t6\t5\t1\t1\t0\t1193"  "2150\t2921\t3\t6\t1\t1\t0\t1635" 
    ## [5] "1999\t2580\t4\t4\t1\t1\t0\t1732"  "1900\t2580\t4\t4\t1\t0\t0\t1534"

``` {.r}
tail(h1)
```

    ## [1] "874\t1236\t3\t4\t0\t0\t0\t707" "872\t1229\t6\t3\t0\t0\t0\t721"
    ## [3] "870\t1273\t4\t4\t0\t0\t0\t638" "869\t1165\t7\t4\t0\t0\t0\t694"
    ## [5] "766\t1200\t7\t4\t0\t0\t1\t634" "739\t970\t4\t4\t0\t0\t1\t541"

``` {.r}
h2 <- strsplit(h1,"\t")
head(h2)
```

    ## [[1]]
    ## [1] "2050" "2650" "13"   "7"    "1"    "1"    "0"    "1639"
    ## 
    ## [[2]]
    ## [1] "2080" "2600" "*"    "4"    "1"    "1"    "0"    "1088"
    ## 
    ## [[3]]
    ## [1] "2150" "2664" "6"    "5"    "1"    "1"    "0"    "1193"
    ## 
    ## [[4]]
    ## [1] "2150" "2921" "3"    "6"    "1"    "1"    "0"    "1635"
    ## 
    ## [[5]]
    ## [1] "1999" "2580" "4"    "4"    "1"    "1"    "0"    "1732"
    ## 
    ## [[6]]
    ## [1] "1900" "2580" "4"    "4"    "1"    "0"    "0"    "1534"

``` {.r}
tail(h2)
```

    ## [[1]]
    ## [1] "874"  "1236" "3"    "4"    "0"    "0"    "0"    "707" 
    ## 
    ## [[2]]
    ## [1] "872"  "1229" "6"    "3"    "0"    "0"    "0"    "721" 
    ## 
    ## [[3]]
    ## [1] "870"  "1273" "4"    "4"    "0"    "0"    "0"    "638" 
    ## 
    ## [[4]]
    ## [1] "869"  "1165" "7"    "4"    "0"    "0"    "0"    "694" 
    ## 
    ## [[5]]
    ## [1] "766"  "1200" "7"    "4"    "0"    "0"    "1"    "634" 
    ## 
    ## [[6]]
    ## [1] "739" "970" "4"   "4"   "0"   "0"   "1"   "541"

``` {.r}
h3 <- as.numeric(unlist(h2))
```

    ## Warning: NAs introduced by coercion

``` {.r}
head(h3)
```

    ## [1] 2050 2650   13    7    1    1

``` {.r}
tail(h3)
```

    ## [1]   4   4   0   0   1 541

``` {.r}
h4 <- matrix(h3,ncol=8,byrow=TRUE)
head(h4)
```

    ##      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
    ## [1,] 2050 2650   13    7    1    1    0 1639
    ## [2,] 2080 2600   NA    4    1    1    0 1088
    ## [3,] 2150 2664    6    5    1    1    0 1193
    ## [4,] 2150 2921    3    6    1    1    0 1635
    ## [5,] 1999 2580    4    4    1    1    0 1732
    ## [6,] 1900 2580    4    4    1    0    0 1534

``` {.r}
tail(h4)
```

    ##        [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
    ## [112,]  874 1236    3    4    0    0    0  707
    ## [113,]  872 1229    6    3    0    0    0  721
    ## [114,]  870 1273    4    4    0    0    0  638
    ## [115,]  869 1165    7    4    0    0    0  694
    ## [116,]  766 1200    7    4    0    0    1  634
    ## [117,]  739  970    4    4    0    0    1  541

``` {.r}
var.names.line <- the.data.line+2
print(h0[var.names.line])
```

    ## [1] "PRICE  SQFT  AGE FEATS   NE    CUST     COR         TAX"

``` {.r}
var.names <- strsplit(h0[var.names.line]," ")
print(var.names)
```

    ## [[1]]
    ##  [1] "PRICE" ""      "SQFT"  ""      "AGE"   "FEATS" ""      ""     
    ##  [9] "NE"    ""      ""      ""      "CUST"  ""      ""      ""     
    ## [17] ""      "COR"   ""      ""      ""      ""      ""      ""     
    ## [25] ""      ""      "TAX"

``` {.r}
var.names <- unlist(var.names)
print(var.names)
```

    ##  [1] "PRICE" ""      "SQFT"  ""      "AGE"   "FEATS" ""      ""     
    ##  [9] "NE"    ""      ""      ""      "CUST"  ""      ""      ""     
    ## [17] ""      "COR"   ""      ""      ""      ""      ""      ""     
    ## [25] ""      ""      "TAX"

``` {.r}
var.names <- var.names[nchar(var.names)>0]
print(var.names)
```

    ## [1] "PRICE" "SQFT"  "AGE"   "FEATS" "NE"    "CUST"  "COR"   "TAX"

``` {.r}
var.names <- tolower(var.names)
print(var.names)
```

    ## [1] "price" "sqft"  "age"   "feats" "ne"    "cust"  "cor"   "tax"

``` {.r}
dimnames(h4)[[2]] <- var.names
head(h4)
```

    ##      price sqft age feats ne cust cor  tax
    ## [1,]  2050 2650  13     7  1    1   0 1639
    ## [2,]  2080 2600  NA     4  1    1   0 1088
    ## [3,]  2150 2664   6     5  1    1   0 1193
    ## [4,]  2150 2921   3     6  1    1   0 1635
    ## [5,]  1999 2580   4     4  1    1   0 1732
    ## [6,]  1900 2580   4     4  1    0   0 1534

``` {.r}
tail(h4)
```

    ##        price sqft age feats ne cust cor tax
    ## [112,]   874 1236   3     4  0    0   0 707
    ## [113,]   872 1229   6     3  0    0   0 721
    ## [114,]   870 1273   4     4  0    0   0 638
    ## [115,]   869 1165   7     4  0    0   0 694
    ## [116,]   766 1200   7     4  0    0   1 634
    ## [117,]   739  970   4     4  0    0   1 541

``` {.r}
h5 <- data.frame(h4)
head(h5)
```

    ##   price sqft age feats ne cust cor  tax
    ## 1  2050 2650  13     7  1    1   0 1639
    ## 2  2080 2600  NA     4  1    1   0 1088
    ## 3  2150 2664   6     5  1    1   0 1193
    ## 4  2150 2921   3     6  1    1   0 1635
    ## 5  1999 2580   4     4  1    1   0 1732
    ## 6  1900 2580   4     4  1    0   0 1534

``` {.r}
tail(h5)
```

    ##     price sqft age feats ne cust cor tax
    ## 112   874 1236   3     4  0    0   0 707
    ## 113   872 1229   6     3  0    0   0 721
    ## 114   870 1273   4     4  0    0   0 638
    ## 115   869 1165   7     4  0    0   0 694
    ## 116   766 1200   7     4  0    0   1 634
    ## 117   739  970   4     4  0    0   1 541

The best graphical summary of two continuous variables is a scatterplot.
You should include a smooting curve or spline model to the graph to
emphasize the general trend and any departures from linearity.

``` {.r}
plot(h5$sqft,h5$price)
lines(lowess(h5$price~h5$sqft))
```

![](../../../web/images/15/relationships-in-r01.png)



``` {.r}
plot(h5$age,h5$price)
sb <- is.finite(h5$age)
lines(lowess(h5$price[sb]~h5$age[sb]))
```

![](../../../web/images/15/relationships-in-r02.png)



The best numeric summary of two continuous variables is a correlation
coefficient.

``` {.r}
cor(h5[,c("price","sqft","age")],use="pairwise.complete.obs")
```

    ##            price        sqft         age
    ## price  1.0000000  0.84479510 -0.16867888
    ## sqft   0.8447951  1.00000000 -0.03965489
    ## age   -0.1686789 -0.03965489  1.00000000

Correlations should always be rounded to two or maybe even just one
significant digit.

``` {.r}
round(cor(h5[,c("price","sqft","age")],use="pairwise.complete.obs"),1)
```

    ##       price sqft  age
    ## price   1.0  0.8 -0.2
    ## sqft    0.8  1.0  0.0
    ## age    -0.2  0.0  1.0

Anyhting larger than 0.7 or smaller than -0.7 is a strong linear
relationship. Anything between 0.3 and 0.7 or between -0.3 and -0.7 is a
weak linear relationship. Anything between -0.3 and 0.3 represents
little or no linear relationship.

The best graphical summary between a continuous variable and a
categorical variable is a boxplot.

``` {.r}
boxplot(h5$price~h5$feats)
```

![](../../../web/images/15/relationships-in-r03.png)



``` {.r}
boxplot(h5$price~h5$ne)
```

![](../../../web/images/15/relationships-in-r04.png)



``` {.r}
boxplot(h5$price~h5$cust)
```

![](../../../web/images/15/relationships-in-r05.png)



``` {.r}
boxplot(h5$price~h5$cor)
```

![](../../../web/images/15/relationships-in-r06.png)



If your categorical variable is binary, you can also use a scatterplot.
The binary variable goes on the y axis and a trend line is critical.

``` {.r}
plot(h5$price,h5$ne)
lines(lowess(h5$ne~h5$price))
```

![](../../../web/images/15/relationships-in-r07.png)



``` {.r}
plot(h5$price,h5$cust)
lines(lowess(h5$cust~h5$price))
```

![](../../../web/images/15/relationships-in-r08.png)



``` {.r}
plot(h5$price,h5$cor)
lines(lowess(h5$cor~h5$price))
```

![](../../../web/images/15/relationships-in-r09.png)



You can also compute a correlaton between a binary variable and a
categorical variable. It is equivalent to the point-bisearial
correlation.

``` {.r}
round(cor(h5[,c("ne","cust","cor")],h5$price),1)
```

    ##      [,1]
    ## ne    0.2
    ## cust  0.6
    ## cor  -0.1

Let's save the display of a relationship involving two categorical
variables until another day.


