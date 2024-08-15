---
title: "Examining the storage format for sparse matrices in R"
author: "Steve Simon"
source: "http://blog.pmean.com/sparse-matrices/"
date: "2016-05-16"
categories:
- Blog post
- Incomplete page
tags:
- Data science
- R software
output: html_document
page_update: complete
---

I've been working with sparse matrices a bit for my work with the Greater Plains Collaborative. They are a very useful way of storing matrices where most of the entries are zero. This occurs quite often in medical data. There are thousands of medical procedures that you can torture your patients with, so any matrix that has indicator variables for every medical procedure will be quite big. Fortunately, both for us and for the patients, the number of procedures that a particular patient has to endure is quite a bit smaller. So for each row of the matrix, the number of non-zero entries will be very small, probably in the single digits. A sparse matrix will be much smaller because it stores only the location of the non-zero entries. Here's some R code that shows how this works. I have the [code][sim3] available at my [new github site][sim4].

[sim3]: https://github.com/pmean/sparse-matrices
[sim4]: https://github.com/pmean

<!---More--->

``` {.r}
# backup, just in case
save.image("backup.RData")
rm(list=ls())
library("Matrix")
```

    ## 
    ## Attaching package: 'Matrix'
    ## 
    ## The following objects are masked from 'package:base':
    ## 
    ##     crossprod, tcrossprod

``` {.r}
library("knitr")
```

Set up a matrix where all the entries are zero, except for every power of 2.

``` {.r}
nt <- 7
nc <- 3
v <- rep(0,2^nt)
v[2^(0:nt)] <- 1
m <- matrix(v, ncol=2^nc)
print(m)
```

    ##       [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
    ##  [1,]    1    0    0    0    0    0    0    0
    ##  [2,]    1    0    0    0    0    0    0    0
    ##  [3,]    0    0    0    0    0    0    0    0
    ##  [4,]    1    0    0    0    0    0    0    0
    ##  [5,]    0    0    0    0    0    0    0    0
    ##  [6,]    0    0    0    0    0    0    0    0
    ##  [7,]    0    0    0    0    0    0    0    0
    ##  [8,]    1    0    0    0    0    0    0    0
    ##  [9,]    0    0    0    0    0    0    0    0
    ## [10,]    0    0    0    0    0    0    0    0
    ## [11,]    0    0    0    0    0    0    0    0
    ## [12,]    0    0    0    0    0    0    0    0
    ## [13,]    0    0    0    0    0    0    0    0
    ## [14,]    0    0    0    0    0    0    0    0
    ## [15,]    0    0    0    0    0    0    0    0
    ## [16,]    1    1    0    1    0    0    0    1

``` {.r}
str(m)
```

    ##  num [1:16, 1:8] 1 1 0 1 0 0 0 1 0 0 ...

This is a regular matrix with 128 entries arranged in 16 rows and 8 columns. Exactly 8 values are non-zero.

A sparse matrix is a matrix that only stores the non-zero values and their locations. If the matrix is very large and most of the values are zero, then you can represent even a very very large matrix as a sparse matrix without exceeding the memory limits of R.

To create a sparse matrix, you need a special library. The one you see here, Matrix, is a popular one that is supported by (among other things) the glmnet package.

To create a sparse matrix, use the Matrix function instead of the matrix function.

``` {.r}
message("Test 2")
s <- Matrix(v, ncol=2^nc)
print(s)
```

    ## 16 x 8 sparse Matrix of class "dgCMatrix"
    ##                      
    ##  [1,] 1 . . . . . . .
    ##  [2,] 1 . . . . . . .
    ##  [3,] . . . . . . . .
    ##  [4,] 1 . . . . . . .
    ##  [5,] . . . . . . . .
    ##  [6,] . . . . . . . .
    ##  [7,] . . . . . . . .
    ##  [8,] 1 . . . . . . .
    ##  [9,] . . . . . . . .
    ## [10,] . . . . . . . .
    ## [11,] . . . . . . . .
    ## [12,] . . . . . . . .
    ## [13,] . . . . . . . .
    ## [14,] . . . . . . . .
    ## [15,] . . . . . . . .
    ## [16,] 1 1 . 1 . . . 1

``` {.r}
str(s)
```

    ## Formal class 'dgCMatrix' [package "Matrix"] with 6 slots
    ##   ..@ i       : int [1:8] 0 1 3 7 15 15 15 15
    ##   ..@ p       : int [1:9] 0 5 6 6 7 7 7 7 8
    ##   ..@ Dim     : int [1:2] 16 8
    ##   ..@ Dimnames:List of 2
    ##   .. ..$ : NULL
    ##   .. ..$ : NULL
    ##   ..@ x       : num [1:8] 1 1 1 1 1 1 1 1
    ##   ..@ factors : list()

The sparse matrix is stored as an S4 object. The pieces of the S4 object are a bit tricky to interpret. The values stored in i: 0, 1, 3, 7, 15, 15, 15, 15 tell you which rows the non-zero values are stored in. The trick here is that Matrix adopts the convention of C++ and many other languages that the first row (and the first column) of a matrix start at zero. In R, the first row (and the first column) of a matrix starts at one.

There are some good reasons why you might prefer the C++ numbering convention and some good reasons why you might prefer the R numbering convention. If it helps, you can list the rows in R format by adding one: 1, 2, 4, 8, 16, 16, 16, 16.

You can use the dimnames funtion to label the rows and columns of s in the C++ numbering convention.

``` {.r}
dimnames(s) <- list(0:(2^(nt-nc)-1), 0:(2^nc-1))
s
```

    ## 16 x 8 sparse Matrix of class "dgCMatrix"
    ##    0 1 2 3 4 5 6 7
    ## 0  1 . . . . . . .
    ## 1  1 . . . . . . .
    ## 2  . . . . . . . .
    ## 3  1 . . . . . . .
    ## 4  . . . . . . . .
    ## 5  . . . . . . . .
    ## 6  . . . . . . . .
    ## 7  1 . . . . . . .
    ## 8  . . . . . . . .
    ## 9  . . . . . . . .
    ## 10 . . . . . . . .
    ## 11 . . . . . . . .
    ## 12 . . . . . . . .
    ## 13 . . . . . . . .
    ## 14 . . . . . . . .
    ## 15 1 1 . 1 . . . 1

Now knowing which row is only half the battle. You also need to know which column. The columns are designated by a pointer stored in p: 0, 5, 6, 6, 7, 7, 7, 7, 8. Pointers are commonly used in C++, but are an alien concept to most R programmers (or maybe just this R programmer).

The first two pointers: 0, 5 tell you that the rows listed in i, starting at the 0 location and going up to but not including the 5 position are rows in the first column. Remember that Matrix, like C++, starts counting at 0, not 1. So the first column has entries in the following rows: 0, 1, 3, 7, 15.

The second and third pointers: 5, 6 tell you that the fifth row position: 15 is in the second column. Since the third and the third pointers: 6, 6 are the same, there are no non-zero entries in the third row.

Are you confused by all this? I know I am. The help file, though, has a nice hint. Calculate the difference between successive pointer values: 5, 1, 0, 1, 0, 0, 0, 1. This will tell you that the first column has 5 entries, the second column has 1 entry, the third column has 0 entries and so forth.

You can use the rep function to compute the column indices that go with the row indices.

``` {.r}
j <- rep(0:(2^nc-1), diff(s@p))
print(data.frame(i=s@i, j))
```

    ##    i j
    ## 1  0 0
    ## 2  1 0
    ## 3  3 0
    ## 4  7 0
    ## 5 15 0
    ## 6 15 1
    ## 7 15 3
    ## 8 15 7

You can create a sparse matrix by specifying the non-zero rows and columns.

``` {.r}
row.indices <- s@i+1
col.indices <- j+1
sparseMatrix(i=row.indices, j=col.indices, dims=c(2^(nt-nc), 2^nc), x=1)
```

    ## 16 x 8 sparse Matrix of class "dgCMatrix"
    ##                      
    ##  [1,] 1 . . . . . . .
    ##  [2,] 1 . . . . . . .
    ##  [3,] . . . . . . . .
    ##  [4,] 1 . . . . . . .
    ##  [5,] . . . . . . . .
    ##  [6,] . . . . . . . .
    ##  [7,] . . . . . . . .
    ##  [8,] 1 . . . . . . .
    ##  [9,] . . . . . . . .
    ## [10,] . . . . . . . .
    ## [11,] . . . . . . . .
    ## [12,] . . . . . . . .
    ## [13,] . . . . . . . .
    ## [14,] . . . . . . . .
    ## [15,] . . . . . . . .
    ## [16,] 1 1 . 1 . . . 1

The values stored in x: 1, 1, 1, 1, 1, 1, 1, 1 are all ones because in this example, all the non-zero entries are one. That's not always the case, which is why the sparse matrix stores the individual non-zero values. This is a pattern matrix, a sparse matrix where all the values are either zero or one (mostly zeros, of course, or the matrix isn't sparse). You might be able to improve slightly on

The regular matrix takes up 1224 bytes. The sparse matrix takes up 2984 bytes. That seems odd, but the sparse matrix format only makes sense when the matrices get really really large.

``` {.r}
for (i in 1:5) {
  nt <- 7+3*i
  nc <- 3+i
  v <- rep(0,2^nt)
  v[2^(0:nt)] <- 1
  m <- matrix(v, ncol=2^nc)
  s <- Matrix(v, ncol=2^nc)
  cat("\n\nA regular", 2^(nt-nc), "by", 2^nc, "matrix requires", object.size(m), "bytes.")
  cat("\nA sparse", 2^(nt-nc), "by", 2^nc, "matrix requires", object.size(s), "bytes.")
}
```

    ##

    ## A regular 16 by 8 matrix requires 1224 bytes.
    ## A sparse 16 by 8 matrix requires 1560 bytes.
    ## 
    ## A regular 64 by 16 matrix requires 8392 bytes.
    ## A sparse 64 by 16 matrix requires 1720 bytes.
    ##
    ## A regular 256 by 32 matrix requires 65736 bytes.
    ## A sparse 256 by 32 matrix requires 1744 bytes.
    ##
    ## A regular 1024 by 64 matrix requires 524488 bytes.
    ## A sparse 1024 by 64 matrix requires 1944 bytes.
    ##
    ## A regular 4096 by 128 matrix requires 4194504 bytes.
    ## A sparse 4096 by 128 matrix requires 2224 bytes.
    ##
    ## A regular 16384 by 256 matrix requires 33554632 bytes.
    ## A sparse 16384 by 256 matrix requires 2760 bytes.

Some additional observations (December 18, 2018).

The pointer format is usually quite efficient, but there are other alternatives. You can store the row and column locations for every non-zero element. This is the T format. With pointers, I showed the format with row locations and column pointers, but you could just as easily have listed the column location and row pointers. These are the? (C and R formats), respectively.

If you matrix contains only zeros and ones, you can save a bit more storage by using a binary or logical format, which is designated by the letter n (versus d for a non-binary format).

Matrices with particular structures can also save space. You can designate a symmetric (s) or triangular (t) structure. Use g to designate no structure.

You can also store matrices in a non-sparse or dense format, and these come in packed and nonpacked formats. A packed format dispenses with the redundant portions of the symmetric or triangular matrices.

Finally, if you know that your matrix has to be positive definite, or positive semi-definite, then you can save a bit of space as well thanks to the Cholesky decomposition. These matrices are designated by the letters "pp" for the packed version and "po" for the unpacked version.

You can combine these in various ways, leading to a dizzying number of formats, but once you understand the code, it gets a bit easier. So the nsCMatrix class represents a binary (n) symmetric (s) matrix stored in a sparse format with column pointers (C).

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/sparse-matrices/
[sim2]: http://blog.pmean.com
