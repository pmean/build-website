---
title: Documenting your SPSS data sets
source: http://www.pmean.com/99/document.html
author: Steve Simon
date: 1999-09-18
categories:
- Blog post
tags:
- Being updated
- Data management
- SPSS software
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean
- I need to add some documentation for SPSS data
sets that I am creating. I know you covered this in your "Gentle
Introduction to SPSS" class
- but I've already forgotten everything.
Can you review this for me? -- Baffled Bill*

**Dear Baffled,**

The only things people remember from my training classes are my jokes.
The rest is unimportant.

It's great that you want to take the time and effort to document your
data. SPSS can rapidly produce dozens of graphs and hundreds of
tables. Without good documentation as part of these graphs and tables,
you can easily get lost. **A little time spent now in data
documentation will save you a lot of time later** when you are
interpreting your output.

**Short explanation**

In versions 10 and later of SPSS
- there are two tabs at the bottom of
the SPSS screen

-   DATA VIEW
-   VARIABLE VIEW

Use the DATA VIEW tab to enter your data
- or to view your data. Use
the VARIABLE VIEW tab to add documentation to your data.

![](../../../web/images/99/document01.gif)

From VARIABLE VIEW tab
- you can tell SPSS **how to display the data in
the SPSS data editor window** (how many decimal places shown
- how
dates are displayed
- and how wide the columns are). You can also
provide SPSS with **informational labels that will appear in your
output window** (labels for the variable itself and
- if needed
- labels
for category levels). You would also use the dialog box to **specify
any codes that represent missing data**.

**More details**

There are a lot of important ways in which you can document your data.
Start with the variable name itself
- a brief description of up to
eight characters of what this column of data contains. Then specify
the format type (numeric
- string
- or date) for the data that is in
this column. Now you can provide a longer description of your variable
in the variable label. If your data are categorical
- you can describe
those categories using values labels. Finally
- make sure that SPSS
know which code
- if any
- you use to designate missing values. Repeat
this task for each column of data.

**Variable name**

When documenting your data
- your first step should be to **provide a
brief but descriptive variable name**. This goes into the NAME column
of the VARIABLE VIEW tab. SPSS provides a default of VAR00001 for the
first column
- VAR00002 for the second column and so forth. This coding
is convenient in that it allows you to produce names for up to 99,999
columns of data. But if you have that much data
- I hope you will get
some help with your data entry.

Please spend some time to provide descriptive variable names. These
**names have to be 8 characters or less**. It can be a mxiture of
numbers and letters
- but the very first character has to be a letter
(A1 is okay
- but 1A is not). The variable name **can't include any
blanks** because it confuses SPSS (when SPSS sees a variable name like
"BIRTH WT" it interprets this as two variables
- "BIRTH" and
"WT". For the most part
- SPSS does allows **no special symbols in
varaible names**. There is one exception
- though
- the underscore
character (_). I'm glad they allowed this exception
- because it
makes it easy to create a variable name that looks like it has a blank
(e.g.
- BIRTH_WT). Also
- don't bother mixing upper and lower case
here; SPSS converts everything to lower case.

The variable name restrictions on length
- blanks
- special symbols and
case can be frustrating at times
- but don't worry. When you type in a
variable label
- you can type in just about anything that makes you
happy.

After you provide a variable name
- take a look at the other columns in
the VARIABLE VIEW tab. Of special interest are the following:

-   TYPE
-   WIDTH
-   DECIMALS
-   LABELS
-   VALUES
-   MISSING

middle of the DATA | DEFINE VARIABLES dialog box. There are four
button here: TYPE
- LABELS
- MISSING VALUES
- and COLUMN FORMAT.

**Format type**

Click in theTYPE column to add or change the format type. You will
notice a gray button on the right hand side. Click on it to get
VARIABLE TYPE dialog box.

This dialog box has information about the type of data that you want
to use. The most common data type is **NUMERIC
- which is used for any
data that can be represented solely by numbers**. If you have numeric
data
- you should tell SPSS the width of your numbers and how many
decimal places you want displayed. Unless you are dealing with
unusually large numbers
- the default width of 8 works well. For some
situations
- you might be tempted to use a smaller makes
- but this can
make it more difficult to view the variable name and the value labels.
Be sure to set the number of decimal places appropriately.

For data with number codes or count data
- you should change the number
of decimal places to zero from the default of two. It's a minor
point
- but the superfluous .00 at the end of every number will make
your data harder to read. For some data
- you may instead need to
display more than two decimal places. Keep in mind
- though
- that this
dialog box controls how the data are displayed in the data editor
window and not (for the most part) how they are displayed in the
output window.

Select the **STRING options for data that is all letters or a mixture
of letters and numbers**.When you select this option
- SPSS provides a
chance for you to tell how long the strings are.

In general
- I encourage people to **use number codes instead of letter
codes for categorical data**. SPSS gets confused sometimes by letter
codes and restricts their use in certain procedures. Also keep in mind
that SPSS places even greater restrictions on long strings (more than
8 characters in length). This is a holdover from the days of FORTRAN
and IBM mainframe computers
- where strings longer than 8 bytes could
not be easily manipulated.

If you click on the DATE option
- you will be given choices between
various display formats (month names versus month numbers
- two digit
versus four digit years
- etc.). After all the publicity about the year
2000 problem
- I don't need to lecture you on being careful with
dates. But also remember that people disagree over whether the month
or the date should appear first.

**Variable and value labels**

Click on the label button to get variable labels. A variable label is
a longer description of your data. **Variable labels appear in your
output and make it easier to follow what is going on**. You can use a
mixture of upper and lower case here
- which I recommend for improving
readability. AVOID USING ALL UPPERCASE HERE BECAUSE IT IS FAR LESS
READABLE THAN A MIXTURE OF CASES.

**You can put blanks and special symbols in your variable label**. If
you are very excited about a variable
- spice it up with a couple of
exclamation points. Go ahead and type to your heart's content. Just a
small warning though. A variable label that is too long can make your
output look a bit unwieldy. Although you can type up to 255 characters
here
- it looks strange to have a six inch label underneath a two inch
histogram. A variable label of around **20 to 40 characters in
length** works well in practice.

You can also specify value labels in this dialog box. **Value labels
provide informative names for levels in any categorical variable**.
Leave the value labels blank for continuous data like weight or
height. They do make sense
- though
- for categorical data like gender.
This will serve as a reminder that data values of 1 represents males
and 2 females. The last thing you want is for people to think that you
can't tell the difference between males and females.

Value labels have to be defined one by one. **Type in the number (or
letter) code for your category in VALUE field
- the value label in the
VALUE LABEL field just beneath it and then click on the ADD button**.
Repeat this for your second category level and so forth.

**Missing value codes**

If needed
- click on the MISSING VALUES button to designate missing
value codes. **Missing value codes are useful for designating data in
SPSS where the value is unknown
- not applicable or otherwise not
provided**.

Be careful about missing values. Values can be missing because the
subject dropped out of the study. Perhaps you are looking for chemical
concentrations that are sometimes too low for a laboratory to detect.
Perhaps a subject refused to respond to a certain question. Perhaps
you are asking for something like a spouse's age that is not
applicable for a single person. Make sure you understand why your data
is missing and discuss this issue with anyone you are consulting with.
**The statistical handling of missing values can vary greatly
depending on how the value came to be missing**.

When you are planning your project
- it is a good idea to **select a
very clearly impossible code for your missing value**. For example,
use -1 for a birth weight because any infant with a negative birth
weight would float up to the ceiling after delivery. Use a value of 9
to code missing for gender
- since it is obvious to most of us that the
number of possible genders is much smaller than 9.

**Column format**

I usually ignore the COLUMN FORMAT button
- but you can click here if
you like. If you didn't specify a width that differs from the SPSS
default width of 8 earlier
- you can do so here. You can also tell SPSS
to left justify
- center
- or right justify this column of data in the
data editor window. SPSS chooses a logical default of left
justification for strings and right justification for just about
everything else.

**Example**

Let's see how to document a column of data that represents marital
status. **Marital status is a categorical variable with five codes
(1=single
- 2=married
- 3=divorced
- 4=widowed
- 9=unknow)**. First we
have to **choose "marit_st" as a variable name**. The eight
character limit forces us to select an abbreviated description like
this or mar_stat.

![](../../../web/images/99/document02.gif)

We use numeric codes for this variable
- so we **keep the NUMERIC
option selected**. With no values larger than 9
- we could change the
WIDTH field a little bit
- but anything much smaller than 8 makes it
difficult to see the variable name and the value labels later. The
number codes here do not require any decimals
- so we **change the
DECIMAL PLACES field from 2 to 0**.

![](../../../web/images/99/document03.gif)

**A nice variable label is "Marital Status of the Infant's
Mother"**. Notice that we can include an apostrophe here. I also used
a mixture of upper and lower case. This is easier to read than all
lower case and much easier than all upper case.

![](../../../web/images/99/document04.gif)

**The value labels are "Single"; "Married"; "Divorced";
"Widowed"; and "Unknown"**. Notice again that I use mixed case.
Value labels are appropriate here because this is a categorical
variable. For a continuous variable like birth weight
- we would leave
the value labels blank.

![](../../../web/images/99/document05.gif)

Finally
- I **designate 9 as a missing value**.

**Summary**

Baffled Bill needs to **provide some documentation to SPSS data sets**
that he is creating. Professor Mean explains that you **add
documentation by selecting DATA | DEFINE VARIABLE from the SPSS menu
or double clicking on the column header**. You can then provide
information about the variable name
- the format type
- the variable
label
- the value label
- and the missing value code. You should invest
some time now with documentation because SPSS can easily produce
dozens of graphs and hundreds of tables. Good documentation will help
you keep your bearings in all of this output.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/document.html
[sim2]: http://www.pmean.com/original_site.html
