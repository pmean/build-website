---
title: Merging in R
author: Steve Simon
source: http://www.pmean.com/05/MergingInR.html
date: 2005-07-26
category: Blog post
tags: R software
output: html_document
---
**[StATS]: Merging in R (July 26, 2005)**

Merging is tricky in any program, and you have to be sure that you know
what you are doing. I have found that keeping an index variable will
allow me to backtrack and find information in the original files if
needed. Here\'s a simple example of how this would work.

`> # randomly select 20 letters without replacement.   > x0 <- sample(letters,20)   > x1 <- sample(letters,20)   > x0   [1] "k" "e" "f" "d" "c" "h" "z" "l" "w" "a" "p" "q" "y"   [14] "x" "v" "t" "m" "r" "b" "n"   > x1   [1] "w" "f" "g" "j" "d" "e" "o" "b" "c" "u" "v" "q" "x"   [14] "i" "n" "z" "m" "t" "k" "l"   > # The intersect functions lets us know which letters    > # are in both x0 and x1.   > intersect(x0,x1)   [1] "k" "e" "f" "d" "c" "z" "l" "w" "q" "x" "v" "t" "m"   [14] "b" "n"   > # The setdiff function lets us know which letters   > # are in x0 but not x1 (reverse the arguments to   > # get letters in x1 but not in x1).   > setdiff(x0,x1)   [1] "h" "a" "p" "y" "r"   > setdiff(x1,x0)   [1] "g" "j" "o" "u" "i"   > # By default, the merge function includes only those   > # values in common with the two files. Note that the   > # id1 and id2 values tells us that the first row of   > # x2 comes from the 19th and 8th rows of x0 and x1,   > # respectively. Notice also that the merged file is   > # sorted by the intersection of the two files.   > x2 <- merge(list(x=x0,id0=1:20),list(x=x1,id1=1:20))   > x2      x id0 id1    1 b  19   8    2 c   5   9    3 d   4   5    4 e   2   6    5 f   3   2    6 k   1  19    7 l   8  20    8 m  17  17    9 n  20  15   10 q  12  12   11 t  16  18   12 v  15  11   13 w   9   1   14 x  14  13   15 z   7  16   > # To include all values, including mismatches, specify   > # all=T. Notice now that the merged file is sorted by the   > # values of x0, followed by the sorted values of x1 that   > # are not found in x0. An NA for an index value tells you   > # that the letter is not found in the original x0 or x1   > # vector.   > x3 <- merge(list(x=x0,id0=1:20),list(x=x1,id1=1:20),all=T)   > x3      x id0 id1    1 a  10  NA    2 b  19   8    3 c   5   9    4 d   4   5    5 e   2   6    6 f   3   2    7 h   6  NA    8 k   1  19    9 l   8  20   10 m  17  17   11 n  20  15   12 p  11  NA   13 q  12  12   14 r  18  NA   15 t  16  18   16 v  15  11   17 w   9   1   18 x  14  13   19 y  13  NA   20 z   7  16   21 g  NA   3   22 i  NA  14   23 j  NA   4   24 o  NA   7   25 u  NA  10 `

Merging files when there are duplicate values for the key leads to some
further trickiness.

`> # Use the argument replace=T to get a few duplicate letters.   > y0 <- sample(letters,20,replace=T)   > y1 <- sample(letters,20,replace=T)   > y0    [1] "r" "p" "d" "r" "l" "s" "t" "y" "z" "t" "a" "v" "m" "l"   [15] "u" "o" "n" "m" "x" "g"   > y1    [1] "z" "g" "n" "r" "y" "n" "m" "v" "q" "b" "p" "t" "a" "c"   [15] "z" "l" "d" "x" "b" "r"   > # For the letters "l" and "m" which appear twice in y0,   > # each one is paired with the matching row in y1. For   > # the letter "n" which appears twice in y1, each one   > # is paired with the matching row in y0. For the letter   > # "r" which appears twice in both y0 and y1, each row    > # is paired with each other row, creating four rows in   > # the new file.   > y2 <- merge(list(y=y0,id0=1:20),list(y=y1,id1=1:20))   > y2      y id0 id1    1 a  11  13    2 d   3  17    3 g  20   2    4 l   5  16    5 l  14  16    6 m  13   7    7 m  18   7    8 n  17   3    9 n  17   6   10 p   2  11   11 r   1   4   12 r   4   4   13 r   1  20   14 r   4  20   15 t   7  12   16 t  10  12   17 v  12   8   18 x  19  18   19 y   8   5   20 z   9   1   21 z   9  15`

The %in% operator is also useful.

`> # the %in% operator compares each element of the first   > # set against all the elements of the second set and   > # returns TRUE if there is a match.   > x0 %in% x1    [1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE    [9]  TRUE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE   [17]  TRUE FALSE  TRUE  TRUE   > # This function is not symmetric, of course,    > x1 %in% x0    [1]  TRUE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE    [9]  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE   [17]  TRUE  TRUE  TRUE  TRUE   > # Using the %in% function, you can re-create the   > # intersect function,   > x0[x0 %in% x1]   [1] "k" "e" "f" "d" "c" "z" "l" "w" "q" "x" "v" "t" "m"   [14] "b" "n"   > # or the setdiff function,   > x0[!x0 %in% x1]   [1] "h" "a" "p" "y" "r"`

A less intuitive version of the %in% operator is the match function.
Additional information on merging can be found at

-   [www.ats.ucla.edu/stat/r/notes/managing.htm](http://www.ats.ucla.edu/stat/r/notes/managing.htm)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: R
software](../category/RSoftware.html).
<!---More--->
software](../category/RSoftware.html).
for pages similar to this one at [Category: R
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]: Merging in R (July 26, 2005)**
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: R
software](../category/RSoftware.html).
--->

