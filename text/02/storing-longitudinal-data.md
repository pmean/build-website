---
title: Longitudinal data
author: Steve Simon
date: 2002-07-26
categories:
- Blog post
tags:
- SPSS software
output: html_document
page_update: partial
---
*Dear Professor Mean, I have longitudinal data on the growth pattern of
patients given growth hormone. How should I store the data? --Jittery
Jerry*

Dear Jittery,

You have two choices:

1.  A single record per patient, multiple variables
2.  Multiple records per patients, single variable

but a better choice may be to use a mixture of both types.

**Examples of the two formats**

Here is an example of a single record, multiple variable format

  -------- -------- ---------- ---------- ---------- ----------
    Name    Gender   Measure1   Measure2   Measure3   Measure4
    Abby    Female     aaa        bbb        ccc        ddd
    Dean     Male      ddd        eee        fff        ggg
   Hilda    Female     hhh        iii        jjj        kkk
    Nora    Female     nnn        ooo        ppp        qqq
   Tucker    Male      ttt        uuu        vvv        www
  -------- -------- ---------- ---------- ---------- ----------

The single record, multiple variable format is short and wide. You
will frequently scroll to the left and right with this format.

  -------- -------- ------ ---------
    Name    Gender   Time   Measure
    Abby    Female    1       aaa
    Abby    Female    2       bbb
    Abby    Female    3       ccc
    Abby    Female    4       ddd
    Dean     Male     1       ddd
    Dean     Male     2       eee
    Dean     Male     3       fff
    Dean     Male     4       ggg
   Hilda    Female    1       hhh
   Hilda    Female    2       iii
   Hilda    Female    3       jjj
   Hilda    Female    4       kkk
    Nora    Female    1       nnn
    Nora    Female    2       ooo
    Nora    Female    3       ppp
    Nora    Female    4       qqq
   Tucker    Male     1       ttt
   Tucker    Male     2       uuu
   Tucker    Male     3       vvv
   Tucker    Male     4       www
  -------- -------- ------ ---------

The multiple record, single variable format is tall and narrow. If you
have a lot of repeated measurements, you will end up scrolling up and
down a lot. Notice that there is a lot of repetition in this format.

Advantages of the single record, multiple variable format

-   There is no redundancy or repetition in this format
-   This format requires less typing
-   Certain computations are easier in this format.

Advantages of the multiple record, single variable format

-   Scrolling up and down is easier than scrolling left and right.
-   This format is better at handling irregular and missing visits.
-   Certain graphs and analyses are easier in this format.

In SPSS you can switch from either format to the other. Select **Data
| Restructure** from the SPSS menu. The steps you follow depend
heavily on the context of your particular data set, so an example here
would not help that much. Sorry!

**Time varying data and time constant data**

For a very complex longitudinal study, you may find it easier to split
the data into two tables. The first table will contain the time
constant data. This is data that does not change for the duration of
the study. Most demographic variables, like gender and race, are time
constant.

The second table will contain the time varying data. This is data that
changes over time. Physical measurements like weight change over time.

You may find that some of your data does not fit nicely in these two
categories, and you have a choice how to handle this type of data. For
example, you could store the age at each visit as time varying data,
or you could just record the age at the first visit as a time constant
data.

When you split the data, you need to have a key variable that allows
you to link the two files together.

Here's an example of the time constant data.

  ---- -------- --------
   Id    Name    Gender
   1     Abby    Female
   2     Dean     Male
   3    Hilda    Female
   4     Nora    Female
   5    Tucker    Male
  ---- -------- --------

And here is the time varying data.

  ---- ------ ---------
   Id   Time   Measure
   1     1       aaa
   1     2       bbb
   1     3       ccc
   1     4       ddd
   2     1       ddd
   2     2       eee
   2     3       fff
   2     4       ggg
   3     1       hhh
   3     2       iii
   3     3       jjj
   3     4       kkk
   4     1       nnn
   4     2       ooo
   4     3       ppp
   4     4       qqq
   5     1       ttt
   5     2       uuu
   5     3       vvv
   5     4       www
  ---- ------ ---------

**Merging time constant data with time varying data**

When you merge the time constant and time varying data together, you
should inform SPSS that your **time constant data is the "keyed
table."** You must have a **key variable that links the two tables
together** The key variable has to have the **same name and the same
type** in both tables. If your key variable is numeric in one table
and string in another table, then you cannot merge the files together
in SPSS. Finally, you have to make sure that **both tables are sorted
by the key variable**.

It is simplest to start with the time constant data. Select **Data |
Merge Files | Add Variables** from the SPSS menu.

![](http://www.pmean.com/new-images/02/longitudinal-0201.gif)

In the **Add Variables: Read File dialog box**, you tell SPSS where to
find the time varying data. Then click on the **Open button**.

![](http://www.pmean.com/new-images/02/longitudinal-0202.gif)

SPSS will exclude any variable that has the same name in both data
sets. The excluded variables in almost every case represent the key
variable(s) that you use to link the two files together. Select the
**Match cases on key variables in sorted files option box** and add id
to the **Key Variables field**. Then select the **Working Data File is
keyed table option circle**. If you had started instead with the time
varying data, then you would choose the option circle just above
instead.

After you are done, be sure to **save your data using a different
name**. Otherwise, the merged data will be saved on top of the time
constant data.

**Pre-test/post-test study**

The simplest longitudinal design is a pre-test/post-test study. In
this design, you t**ake a measurement, apply an intervention to some
or all of your patients and then take another measurement**. Your
analysis will usually involve either the **computation of a change
score** (post-test measurement minus the pre-test measurement) or the
**use of the pre-test measurement as a covariate**. For both of these
approaches, the single record, multiple variables format works best.

**Summary**

With longitudinal data, you have two possible formats for your data:

-   a single record, multiple variable format, or
-   a multiple record, single variable format.

For complex studies it may make the most sense to split the data into
two tables consisting of:

-   the time constant data, and
-   the time varying data.

Be sure to include a key variable to link the two tables together.

**Further reading**

**[Stats: Merging files in SPSS](../99/merging.html)**

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/longitudinal.html
[sim2]: http://www.pmean.com/original_site.html
