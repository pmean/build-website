---
title: "Using the transpose procedure in SAS"
author: "Steve Simon"
source: "http://blog.pmean.com/proc-transpose/"
date: "2018-03-28"
categories:
- Blog post
tags:
- SAS software
output: html_document
page_update: partial
---

A couple of my students are having difficulty with restructuring data
sets in SAS. This is not surprising. Restructuring is very important,
but not so easy. I decided to run a few simple examples of PROC
TRANSPOSE to help clarify things. Here is the code and
output.

<!---More--->

The simplest application is taking a data set<U+FFFD> with six rows and one
column and converting it into a data set with one row and six columns.

    data original;
    <U+FFFD> input c;
    cards;
    1
    2
    3
    4
    5
    6
    ;
    proc transpose data=original out=transposed;
    <U+FFFD> var c;
    run;
    proc print data=transposed;
    run;

This is what the transposed data set looks like.

    Obs<U+FFFD><U+FFFD><U+FFFD> _NAME_<U+FFFD><U+FFFD><U+FFFD> COL1<U+FFFD><U+FFFD><U+FFFD> COL2<U+FFFD><U+FFFD><U+FFFD> COL3<U+FFFD><U+FFFD><U+FFFD> COL4<U+FFFD><U+FFFD><U+FFFD> COL5<U+FFFD><U+FFFD><U+FFFD> COL6

     1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 6

The BY statement will transpose separately for each level of the BY
variable and then stack those transposes one beneath the other beneath
the other. In the artificial data set, there are two rows per subject
and three subjects so SAS will create a data set with one row and two
columns for subject 1, stack another data set with one row and two
columns for subject 2 beneath that and a third data set with one row and
two columns for subject 3 beneath that. The final data set has three<U+FFFD>
rows, one for each subject. This is the simplest example of going from a
tall and<U+FFFD> thin format to a short and fat format.

    data original;
    <U+FFFD> input a c;
    cards;
    1 1
    1 2
    2 3
    2 4
    3 5
    3 6
    ;
    proc transpose data=original out=transposed;
    <U+FFFD> by a;
    <U+FFFD> var c;
    run;
    proc print data=transposed;
    run;

The transposed file looks like this:

    Obs<U+FFFD><U+FFFD><U+FFFD> a<U+FFFD><U+FFFD><U+FFFD> _NAME_<U+FFFD><U+FFFD><U+FFFD> COL1<U+FFFD><U+FFFD><U+FFFD> COL2

     1<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2
     2<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4
     3<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 6

The names that SAS chooses for the new columns are rather undescriptive.
You can use the ID command to borrow the variable names from a column in
the original data set. In this artificial example, SAS names to two
columns pre and pst.

    data original;
    <U+FFFD> input a b $ c;
    cards;
    1 pre 1
    1 pst 2
    2 pre 3
    2 pst 4
    3 pre 5
    3 pst 6
    ;
    proc transpose data=original out=transposed;
    <U+FFFD> by a;
    <U+FFFD> id b;
    <U+FFFD> var c;
    run;
    proc print data=transposed;
    run;

The transposed file looks like this:

    Obs<U+FFFD><U+FFFD><U+FFFD> a<U+FFFD><U+FFFD><U+FFFD> _NAME_<U+FFFD><U+FFFD><U+FFFD> pre<U+FFFD><U+FFFD><U+FFFD> pst

     1<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2
     2<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4
     3<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 6

You can't use a number for a variable name in SAS, but if you want to
number your variable names, the PREFIX option can help.

    data original;
    <U+FFFD> input a b c;
    cards;
    1 0 1
    1 1 2
    2 0 3
    2 1 4
    3 0 5
    3 1 6
    ;
    proc transpose data=original out=transposed prefix=time;
      by a;
      id b;
      var c;
    run;
    proc print data=transposed;
    run;

The transposed file looks like this:

    Obs    a    _NAME_    time0    time1

     1<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2
     2<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4
     3<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 6

If your data is tangled up, the ID statement will untangle the data for
you. In this example, the second subject has the pst value listed before
the pre value. SAS will re-orient that subject so that the pre values
will fit in the first column and the pst values will fit in the second
column.

    data original;
    <U+FFFD> input a b $ c;
    cards;
    1 pre 1
    1 pst 2
    2 pst 4
    2 pre 3
    3 pre 5
    3 pst 6
    ;
    proc print data=original;
    run;
    proc transpose data=original out=transposed prefix=time;
    <U+FFFD> by a;
    <U+FFFD> id b;
    <U+FFFD> var c;
    run;
    proc print data=transposed;
    run;

The transposed file looks like this:

    Obs    a    _NAME_    time0    time1

     1     1      c         1        2
     2     2      c         3        4
     3     3      c         5        6

If a subject has one or more missing rows, SAS<U+FFFD> will put a missing value
in the appropriate column after transposing. In this example, subject 2
has a row for the pre value, but no row for the pst value. In the
transposed data set, SAS will put a missing value code for pst for
subject 2 in the transposed data set.

    data original;
    <U+FFFD> input a b $ c;
    cards;
    1 pre 1
    1 pst 2
    2 pre 3
    3 pre 5
    3 pst 6
    ;
    proc transpose data=original out=transposed prefix=time;
    <U+FFFD> by a;
    <U+FFFD> id b;
    <U+FFFD> var c;
    run;
    proc print data=transposed;
    run;

The transposed file looks like this:

    Obs    a    _NAME_    time0    time1

     1     1      c         1        2
     2     2      c         3        .
     3     3      c         5        6

In all of the examples seen so far, a single column of data (c) is
converted into two (or six) columns. You can convert in the opposite
direction, gathering two or more columns into a single column by
specifying two or more variable names in the VAR statement.

    data original;
    <U+FFFD> input a pre pst;
    cards;
    1 1 2
    2 3 4
    3 5 6
    ;
    proc transpose data=original out=transposed;
    <U+FFFD> by a;
    <U+FFFD> var pre pst;
    run;
    proc print data=transposed;
    run;

The transposed file looks like this:

    Obs    a    _NAME_    COL1

     1     1     pre        1
     2     1     pst        2
     3     2     pre        3
     4     2     pst        4
     5     3     pre        5
     6     3     pst        6

If you have a complex data set, such as one multiple outcomes spread
across mulitiple times, you can still use PROC TRANSPOSE, but it is
easier to transpose each outcome separately and then combine the
results. You may need a bit of "trial and error" as it is difficult to
put up examples of every type of option that you might want when your
data is very complex.

Obs<U+FFFD><U+FFFD><U+FFFD> a<U+FFFD><U+FFFD><U+FFFD> \_NAME\_<U+FFFD><U+FFFD><U+FFFD> time0<U+FFFD><U+FFFD><U+FFFD> time1

1<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 1<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2\
2<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 2<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 4\
3<U+FFFD><U+FFFD><U+FFFD><U+FFFD> 3<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> c<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 5<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 6

The SAS System<U+FFFD><U+FFFD><U+FFFD><U+FFFD><U+FFFD> 23:35 Wednesday, March 28, 2018<U+FFFD> 10


