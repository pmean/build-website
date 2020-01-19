---
title: "PMean: Missing values in R talk"
author: "Steve Simon"
source: "http://blog.pmean.com/missing-values-in-r/"
date: "2015-02-07"
category: Blog post
tags: R software
output: html_document
---

I'm talking a bit about missing values in R this afternoon for the
Kansas City R Users Group. Here is what I'll be talking
about.

<!---More--->



When you import data into R, the first thing you should do is

KNOW YOUR COUNT

This means that you need to know how many rows are in your data, and for
all of the key variables, how many missing values you have. In a nested
or hierarchical model, you need to also know the counts at each level of
nesting or each level of the hierarchy.

Here is a data set, freely available on the web, that shows sleep
patterns and other statistics on various mammals. It has a handful of
missing values and can help illustrate how you might tackle a new
dataset. You can find a description of this data set at
<http://www.statsci.org/data/general/sleep.html>.

``` {.r}
sl <- read.table(file="http://www.statsci.org/data/general/sleep.txt",header=TRUE)
dim(sl)
```

    ## [1] 62 11

``` {.r}
names(sl)
```

    ##  [1] "Species"     "BodyWt"      "BrainWt"     "NonDreaming" "Dreaming"   
    ##  [6] "TotalSleep"  "LifeSpan"    "Gestation"   "Predation"   "Exposure"   
    ## [11] "Danger"

This data set has 62 rows and 11 variables. Since the data set doesn't
have too many variables, let's print out the first few and last few
rows.

``` {.r}
head(sl)
```

    ##                  Species   BodyWt BrainWt NonDreaming Dreaming TotalSleep
    ## 1        Africanelephant 6654.000  5712.0          NA       NA        3.3
    ## 2 Africangiantpouchedrat    1.000     6.6         6.3      2.0        8.3
    ## 3              ArcticFox    3.385    44.5          NA       NA       12.5
    ## 4   Arcticgroundsquirrel    0.920     5.7          NA       NA       16.5
    ## 5          Asianelephant 2547.000  4603.0         2.1      1.8        3.9
    ## 6                 Baboon   10.550   179.5         9.1      0.7        9.8
    ##   LifeSpan Gestation Predation Exposure Danger
    ## 1     38.6       645         3        5      3
    ## 2      4.5        42         3        1      3
    ## 3     14.0        60         1        1      1
    ## 4       NA        25         5        2      3
    ## 5     69.0       624         3        5      4
    ## 6     27.0       180         4        4      4

``` {.r}
tail(sl)
```

    ##                 Species BodyWt BrainWt NonDreaming Dreaming TotalSleep
    ## 57               Tenrec  0.900     2.6        11.0      2.3       13.3
    ## 58            Treehyrax  2.000    12.3         4.9      0.5        5.4
    ## 59            Treeshrew  0.104     2.5        13.2      2.6       15.8
    ## 60               Vervet  4.190    58.0         9.7      0.6       10.3
    ## 61         Wateropossum  3.500     3.9        12.8      6.6       19.4
    ## 62 Yellow-belliedmarmot  4.050    17.0          NA       NA         NA
    ##    LifeSpan Gestation Predation Exposure Danger
    ## 57      4.5        60         2        1      2
    ## 58      7.5       200         3        1      3
    ## 59      2.3        46         3        2      2
    ## 60     24.0       210         4        3      4
    ## 61      3.0        14         2        1      1
    ## 62     13.0        38         3        1      1

The summary function is useful, as it will display percentiles and the
mean for numeric variables, but also (very importantly) display the
number of missing values.

For factors, it will display a table of the first seven most frequently
occuring values

``` {.r}
summary(sl)
```

    ##                    Species       BodyWt        BrainWt      NonDreaming   
    ##  Africanelephant       : 1   Min.   :   0   Min.   :   0   Min.   : 2.10  
    ##  Africangiantpouchedrat: 1   1st Qu.:   1   1st Qu.:   4   1st Qu.: 6.25  
    ##  ArcticFox             : 1   Median :   3   Median :  17   Median : 8.35  
    ##  Arcticgroundsquirrel  : 1   Mean   : 199   Mean   : 283   Mean   : 8.67  
    ##  Asianelephant         : 1   3rd Qu.:  48   3rd Qu.: 166   3rd Qu.:11.00  
    ##  Baboon                : 1   Max.   :6654   Max.   :5712   Max.   :17.90  
    ##  (Other)               :56                                 NA's   :14     
    ##     Dreaming      TotalSleep       LifeSpan        Gestation    
    ##  Min.   :0.00   Min.   : 2.60   Min.   :  2.00   Min.   : 12.0  
    ##  1st Qu.:0.90   1st Qu.: 8.05   1st Qu.:  6.62   1st Qu.: 35.8  
    ##  Median :1.80   Median :10.45   Median : 15.10   Median : 79.0  
    ##  Mean   :1.97   Mean   :10.53   Mean   : 19.88   Mean   :142.4  
    ##  3rd Qu.:2.55   3rd Qu.:13.20   3rd Qu.: 27.75   3rd Qu.:207.5  
    ##  Max.   :6.60   Max.   :19.90   Max.   :100.00   Max.   :645.0  
    ##  NA's   :12     NA's   :4       NA's   :4        NA's   :4      
    ##    Predation       Exposure        Danger    
    ##  Min.   :1.00   Min.   :1.00   Min.   :1.00  
    ##  1st Qu.:2.00   1st Qu.:1.00   1st Qu.:1.00  
    ##  Median :3.00   Median :2.00   Median :2.00  
    ##  Mean   :2.87   Mean   :2.42   Mean   :2.61  
    ##  3rd Qu.:4.00   3rd Qu.:4.00   3rd Qu.:4.00  
    ##  Max.   :5.00   Max.   :5.00   Max.   :5.00  
    ## 

The first variable, Species, has 62 unique values. You can tell this by
the fact that the first seven most frequently occuring values all had
frequency 1. There are several other ways to check for uniqueness.

``` {.r}
table(table(sl$Species))
```

    ## 
    ##  1 
    ## 62

``` {.r}
length(unique(sl$Species))
```

    ## [1] 62

The table function does not show NAs, at least with the default option

``` {.r}
table(sl$Gestation)
```

    ## 
    ##   12   14   16   17   19   21 21.5   25   28   30   31   33   35   38   42 
    ##    1    1    1    1    1    1    1    1    2    2    1    1    1    1    3 
    ##   45   46   50   52   60   63   68   90  100  112  115  120  140  148  150 
    ##    1    1    1    1    2    3    1    1    1    1    1    2    1    1    1 
    ##  151  164  170  180  200  210  225  230  252  267  281  310  336  365  392 
    ##    1    1    1    1    1    1    2    1    1    1    1    1    1    1    1 
    ##  400  440  624  645 
    ##    1    1    1    1

You would notice this if you added a total to the end of the table.

``` {.r}
addmargins(table(sl$Gestation))
```

    ## 
    ##   12   14   16   17   19   21 21.5   25   28   30   31   33   35   38   42 
    ##    1    1    1    1    1    1    1    1    2    2    1    1    1    1    3 
    ##   45   46   50   52   60   63   68   90  100  112  115  120  140  148  150 
    ##    1    1    1    1    2    3    1    1    1    1    1    2    1    1    1 
    ##  151  164  170  180  200  210  225  230  252  267  281  310  336  365  392 
    ##    1    1    1    1    1    1    2    1    1    1    1    1    1    1    1 
    ##  400  440  624  645  Sum 
    ##    1    1    1    1   58

The total is only 58, which is less than the magic number of 62. This
means that there are 4 missing values.

You can also force the table to show counts for missing values.

``` {.r}
table(sl$Gestation,useNA="always")
```

    ## 
    ##   12   14   16   17   19   21 21.5   25   28   30   31   33   35   38   42 
    ##    1    1    1    1    1    1    1    1    2    2    1    1    1    1    3 
    ##   45   46   50   52   60   63   68   90  100  112  115  120  140  148  150 
    ##    1    1    1    1    2    3    1    1    1    1    1    2    1    1    1 
    ##  151  164  170  180  200  210  225  230  252  267  281  310  336  365  392 
    ##    1    1    1    1    1    1    2    1    1    1    1    1    1    1    1 
    ##  400  440  624  645 <NA> 
    ##    1    1    1    1    4

The deault option for useNA is "never" and a third option is "ifany".
Notice how "ifany" differs from "always"

``` {.r}
table(sl$Gestation,useNA="ifany")
```

    ## 
    ##   12   14   16   17   19   21 21.5   25   28   30   31   33   35   38   42 
    ##    1    1    1    1    1    1    1    1    2    2    1    1    1    1    3 
    ##   45   46   50   52   60   63   68   90  100  112  115  120  140  148  150 
    ##    1    1    1    1    2    3    1    1    1    1    1    2    1    1    1 
    ##  151  164  170  180  200  210  225  230  252  267  281  310  336  365  392 
    ##    1    1    1    1    1    1    2    1    1    1    1    1    1    1    1 
    ##  400  440  624  645 <NA> 
    ##    1    1    1    1    4

``` {.r}
table(sl$Danger,useNA="ifany")
```

    ## 
    ##  1  2  3  4  5 
    ## 19 14 10 10  9

``` {.r}
table(sl$Danger,useNA="always")
```

    ## 
    ##    1    2    3    4    5 <NA> 
    ##   19   14   10   10    9    0

Many othe functions in R offer multiple ways to handle NAs.

``` {.r}
mean(sl$Gestation,na.rm=FALSE)
```

    ## [1] NA

``` {.r}
mean(sl$Gestation,na.rm=TRUE)
```

    ## [1] 142.4

``` {.r}
mod1 <- lm(TotalSleep~Gestation,data=sl,na.action=na.omit)
summary(mod1)
```

    ## 
    ## Call:
    ## lm(formula = TotalSleep ~ Gestation, data = sl, na.action = na.omit)
    ## 
    ## Residuals:
    ##    Min     1Q Median     3Q    Max 
    ## -7.593 -2.604  0.232  1.408  7.632 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) 13.30579    0.68828   19.33  < 2e-16 ***
    ## Gestation   -0.02075    0.00353   -5.87  3.1e-07 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 3.62 on 52 degrees of freedom
    ##   (8 observations deleted due to missingness)
    ## Multiple R-squared:  0.399,  Adjusted R-squared:  0.387 
    ## F-statistic: 34.5 on 1 and 52 DF,  p-value: 3.08e-07

``` {.r}
# summary(lm(TotalSleep~Gestation,data=sl,na.action=na.fail))
```

The alternate option for na.action in the lm function is na.fail, but I
cannot run this directly in knitr, because the resulting error message
causes knitr to stop.

Logic values involving NAs are a bit tricky. You cannot get at NAs
directly using the == comparison operator.

``` {.r}
which(sl$Gestation==NA)
```

    ## integer(0)

What's happening here is that most logic comparisons invloving NA will
evaluate not to TRUE or FALSE, but rather to NA.

If you want to select missing values, you must use the is.na function.

``` {.r}
which(is.na(sl$Gestation))
```

    ## [1] 13 19 20 56

The is.finite function represents "opposite" function, though there are
a few subtle differences.

``` {.r}
which(is.finite(sl$Gestation))
```

    ##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 14 15 16 17 18 21 22 23 24 25 26
    ## [24] 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
    ## [47] 50 51 52 53 54 55 57 58 59 60 61 62

Logic involving missing values can seem at times a bit illogical.

``` {.r}
sl$Gestation==NA
```

    ##  [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
    ## [24] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
    ## [47] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

``` {.r}
sl$Gestation==645
```

    ##  [1]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ## [12] FALSE    NA FALSE FALSE FALSE FALSE FALSE    NA    NA FALSE FALSE
    ## [23] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ## [34] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ## [45] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ## [56]    NA FALSE FALSE FALSE FALSE FALSE FALSE

``` {.r}
tst.na <- NA
tst.na==tst.na
```

    ## [1] NA

Why would NA==NA not evaluate to TRUE? You could argue that a missing
value might be 3 or 7 or 923.427, so you would never know if it equaled
something else, even another missing value.

This produces a three valued logic system.

``` {.r}
tst.tvl <- c(TRUE,FALSE,NA)
not.table <- !tst.tvl
names(not.table) <- tst.tvl
not.table
```

    ##  TRUE FALSE  <NA> 
    ## FALSE  TRUE    NA

``` {.r}
and.table <- outer(tst.tvl,tst.tvl,"&")
dimnames(and.table) <- list(tst.tvl,tst.tvl)
and.table
```

    ##        TRUE FALSE  <NA>
    ## TRUE   TRUE FALSE    NA
    ## FALSE FALSE FALSE FALSE
    ## <NA>     NA FALSE    NA

``` {.r}
or.table <- outer(tst.tvl,tst.tvl,"|")
dimnames(or.table) <- list(tst.tvl,tst.tvl)
or.table
```

    ##       TRUE FALSE <NA>
    ## TRUE  TRUE  TRUE TRUE
    ## FALSE TRUE FALSE   NA
    ## <NA>  TRUE    NA   NA

Other programs, such as SAS, use a two valued logic system. What SAS
does is to set missing values equal to negative infinity. This seems
simpler because it allows you to keep a two-valued logic system. But it
has its own problems.

Note how R handles the less than comparison operator with missing
values.

``` {.r}
sl$Gestation<50
```

    ##  [1] FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
    ## [12] FALSE    NA FALSE  TRUE  TRUE  TRUE FALSE    NA    NA FALSE FALSE
    ## [23]  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE
    ## [34] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE
    ## [45] FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ## [56]    NA FALSE FALSE  TRUE FALSE  TRUE  TRUE

In SAS, this comparison would evaluate to TRUE for the four missing
values.

The only way to select missing values is with the is.na function.

There are three more values in R that are closely related to missing.

``` {.r}
1/0
```

    ## [1] Inf

``` {.r}
-1/0
```

    ## [1] -Inf

``` {.r}
sqrt(-1)
```

    ## Warning: NaNs produced

    ## [1] NaN

The difference between Inf and NaN is in how comparisons are made.

``` {.r}
Inf>3
```

    ## [1] TRUE

``` {.r}
NaN>3
```

    ## [1] NA

``` {.r}
Inf==Inf
```

    ## [1] TRUE

``` {.r}
NaN==NaN
```

    ## [1] NA

R allows you to make a few computations using Inf, but others are not
allowed.

``` {.r}
Inf+1
```

    ## [1] Inf

``` {.r}
1/Inf
```

    ## [1] 0

``` {.r}
0*Inf
```

    ## [1] NaN

``` {.r}
Inf-Inf
```

    ## [1] NaN

It's also worth noting that you can force R to use complex numbers for
the square root of -1, although this is not the default.

``` {.r}
sqrt(as.complex(-1))
```

    ## [1] 0+1i

The is.na and is.finite functions are not perfect opposites.

``` {.r}
tst.cases <- c(3,NA,NaN,Inf,-Inf)
is.na.table <- is.na(tst.cases)
names(is.na.table) <- tst.cases
is.na.table
```

    ##     3  <NA>   NaN   Inf  -Inf 
    ## FALSE  TRUE  TRUE FALSE FALSE

``` {.r}
is.finite.table <- is.finite(tst.cases)
names(is.finite.table) <- tst.cases
is.finite.table
```

    ##     3  <NA>   NaN   Inf  -Inf 
    ##  TRUE FALSE FALSE FALSE FALSE


