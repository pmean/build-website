---
title: General guide to data entry
source: http://www.pmean.com/99/entry.html
author: Steve Simon
date: 1999-09-03
categories:
- Blog post
tags:
- Being updated
- Data management
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, I'm about to start typing in my research data. Do
you have any general guidelines for data entry?*

> Spreadsheets allow you enormous flexibility in how you enter your
> data. **But beware, for if your spreadsheet is loosely structured, you
> could encounter difficulties when you import the data into statistical
> software like SPSS**. If you follow these general guidelines for data
> entry, the data import will go smoothly.
>
> 1.  Arrange your data in rectangular format.
> 2.  Create codes for any missing values.
> 3.  Create variable names (8 characters or less).
> 4.  Assign number codes for categorical data.
> 5.  Provide a unique id for each row of your data.
>
> Here are more details about each guideline.

**1. Arrange your data in rectangular format.**

> Arrange your data in a rectangular format. **The intersection of each
> row and column should contain a single number**. Here's an example of
> data which does not fit into a rectangular format. These data are
> loosely based on a study of breast feeding in pre-term infants. The
> data have been shortened and modified to serve as a simple example of
> data entry.

    Breast feeding status at six months

    No                   Yes                  Lost to follow-up

    Mom's Marital Birth  Mom's Marital Birth  Mom's Marital Birth
    Age   Status  Weight Age   Status  Weight Age   Status  Weight

     18   Married 1.550   28   Single  2.381   28   Married 1.685
     33   Single  1.990                1.130                2.435
     34   Married         26   Married 2.060
     36   Married 1.640

> Notice the jagged shape of the data. There is a 4 by 3 block of data
> (the No group), and then a 3 by 3 block of data (the Yes group), and
> then a 2 by 3 block of data (the Lost to follow-up group). If we stack
> these blocks one beneath another rather than one beside another, we
> will get a rectangular shape. When we re-arrange the data, however, we
> need to include an extra column of information to designate the
> specific block/group.

> Here is what the data looks like after we re-arrange it into a
> rectangular format.

    Breast
    Feeding  Mom's Marital Birth
    Status   Age   Status  Weight

     No       18   Married 1.550
     No       33   Single  1.990
     No       34   Married      
     No       36   Married 1.640
     Yes      28   Single  2.381
     Yes                   1.130
     Yes      26   Married 2.060
     Lost     28   Married 1.685
     Lost                  2.435

**2. Create codes for missing values.**

> Even after re-arranging the data in rectangular format, there are
> still some blank spots in this data. These represents missing data.
> **Never let a empty field represent missing data**. Explicitly create
> a code for missing, and be sure to explain why the data are missing to
> anyone involved with analysis of your data. In this example, let -1
> represent a missing value for Mom's Age and Birth Weight. Let 9
> represent a missing value for Marital Status.

> Here's what the data looks like when we plug up the missing value
> holes.

    Breast
    Feeding  Mom's Marital Birth
    Status   Age   Status  Weight

     No       18   Married 1.550
     No       33   Single  1.990
     No       34   Married    -1
     No       36   Married 1.640
     Yes      28   Single  2.381
     Yes      -1      9    1.130
     Yes      26   Married 2.060
     Lost     28   Married 1.685
     Lost     -1      9    2.435

**3. Create variable names.**

> If you are using a spreadsheet, place a descriptive variable name at
> the top of each column. If you are using a database, provide a
> descriptive name for each field. You will use this variable or field
> name in statistical software like SPSS to specify the variables that
> you want to analyze. **Try to be reasonably descriptive with your
> variable names; avoid generic names like VAR01, VAR02, etc.**
>
> While a spreadsheet or a database generally places few restrictions on
> variable names, most statistical software (including SPSS) will not be
> able to handle long names or names with special symbols. Here are some
> general guidelines that will help avoid trouble.
>
> **Use eight characters or less**. If you try to use a longer name,
> SPSS and most other statistical software will truncate the name to the
> first eight characters. It's a challenge to provide a descriptive
> name when you are limited to eight characters, but try your best. SPSS
> will later allow you to provide lengthier and more detailed
> description in the variable label.
>
> **A mixture of numbers and letters is okay, but avoid special symbols
> such as \$, &, or %**. Most statistical software will reserve these
> special symbols for other purposes. The one major exception is the
> underscore (\_), which is found usually paired on the same key with
> the minus sign. In fact, when SPSS imports names with special
> characters, it replaces them with the underscore character.
>
> **Avoid embedded blanks**. In most statistical software, an embedded
> blank will cause the software to presume that you are referring to two
> variables. SPSS, for example, gets confused when you ask for a
> histogram for `mom age` and will try instead to product two
> histograms, one for `mom` and one for `age`. Here's where the
> underscore comes in handy. The variable `mom_age` is easy to read.
> Compare this to the alternative, `momage`, which looks like a nonsense
> word rhyming with homage.
>
> **Finally, don't rely on upper/lower case to distinguish among
> variable names** (for example, don't name one variable `x` and the
> next one `X`). Some packages are case insensitive. SPSS, for example,
> will convert your variable name to all lower case.
>
> Here's what the data set looks like with variable names.

    br_feed  mom_age  mar_st   birth_wt
     No        18     Married   1.550
     No        33     Single    1.990
     No        34     Married      -1
     No        36     Married   1.640
     Yes       28     Single    2.381
     Yes       -1        9      1.130
     Yes       26     Married   2.060
     Lost      28     Married   1.685
     Lost      -1        9      2.435

**4. Assign number codes for categorical data**

> If you have categorical data, assign a code to each category level.
> Use the code during data entry to save time and minimize errors.
>
> Here are some examples of codes: Gender 1=Male, 2=Female, 9=Unknown;
> Race 1=White, 2=Black, 3=Asian, 4=Hispanic, 5=Native American,
> 8=Multiracial, 9=Unknown; Likert scale 1=Strongly Disagree,
> 2=Disagree, 3=Neutral, 4=Agree, 5=Strongly Agree, 9=No answer.
>
> **While I prefer to use number codes, there are some advantages to
> using short letter codes**. Here are some examples of letter codes:
> Gender M, F, and U (Male, Female, and Unknown); Race W, B, A, H, N, M,
> and U (White, Black, Asian-American, Hispanic, Native American, Mixed,
> and Unknown); Likert scale SD, D, N, A, SA, NA (Strongly Disagree,
> Disagree, Neutral, Agree, Strongly Agree, No Answer). Letter codes are
> easier to remember, and sometimes can be used effectively as plotting
> symbols.
>
> **I prefer number codes because they offer more flexibility during
> statistical analysis**. For example, SPSS will not allow you to draw a
> scatterplot when one of your variables uses letter codes. Other
> software will alphabetize your letter codes, which may not be what you
> intended. For example, an alphabetized Likert scale would be printed
> in the following meaningless order: Agree, Disagree, Neutral, No
> Answer, Strongly Agree, Strongly Disagree.
>
> Let's assign number codes for the categorical variables in the breast
> feeding data example. For br\_feed, let 0=No, 1=Yes, and 9=Lost. For
> mar\_st, let 0=Single; 1=Married, and 9=Missing. With this change, the
> data will look like this:

    br_feed  mom_age  mar_st   birth_wt
       0        18       1       1.550
       0        33       0       1.990
       0        34       1          -1
       0        36       1       1.640
       1        28       0       2.381
       1        -1       9       1.130
       1        26       1       2.060
       9        28       1       1.685
       9        -1       9       2.435

> Whether you use number or letter codes, though, do make it a habit to
> document those codes. In SPSS, that means defining value labels for
> each and every categorical variable.

**5. Provide a unique id for each row of your data**

> If practical, place a unique code in each row. **A unique ID makes it
> much easier to track down errors during data entry**. Unique codes are
> critical if you plan to combine your data with data from another
> source. The data we have been using above came from a medical records
> system called Meditech. In Meditech, each patient is assigned a
> special id code. Here is the data set with those id codes inserted.

      id        br_feed  mom_age  mar_st   birth_wt
    J760223         0        18       1       1.550
    J676434         0        33       0       1.990
    J689673         0        34       1          -1
    J785310         0        36       1       1.640
    J703538         1        28       0       2.381
    J675836         1        -1       9       1.130
    J785827         1        26       1       2.060
    J562494         9        28       1       1.685
    J675320         9        -1       9       2.435

With these id codes in place, we can quickly investigate any outliers
that we encounter during our data analysis.

**Summary**

> Before you start entering data, organize your data in the following
> ways.
>
> 1.  Arrange your data in rectangular format.
> 2.  Create codes for any missing values.
> 3.  Create variable names (8 characters or less).
> 4.  Assign number codes for categorical data.
> 5.  Provide a unique id for each row of your data.
>
> **Follow these steps before entering your data and you will simplify
> the process of importing your data into a statistical software package
> like SPSS.**

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/entry.html
[sim2]: http://www.pmean.com/original_site.html
