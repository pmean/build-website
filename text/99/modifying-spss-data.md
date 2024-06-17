---
title: Modifying SPSS data
source: http://www.pmean.com/99/modify.html
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
- Before I start my data analysis
- I need to modify
some of the data in my SPSS data set. I don't want to re-type every
number by hand. Is there a faster way to do this? -- Impatient Pam*

Dear Impatient

You should really be more patient. The best strategy is to compute all
of your statistics and then change the data if you don't like what you
see.

No
- no
- I'm just kidding. I'm sure you're the last person who would
want to cheat like this. There are many legitimate reasons for changing
your data
- of course. One is to convert to a different unit of
measurement. Another is to combine categories together. **Various
procedures for changing your data appear under the TRANSFORM menu in
SPSS**.

**Select the COMPUTE submenu if you want to modify a continuous
variable**. Converting to a different unit of measurement is one
example. You would also use COMPUTE if you wanted to calculate a ratio
of two variables.

**Select the RECODE submenu if you want to modify a categorical
variable**. Combining some of the category levels is one example. Also
use RECODE if you want to renumber your category levels.

**More details**

**To convert a continuous variable
- you need to specify the name of the
new variable and the formula for the conversion**. Select TRANSFORM |
COMPUTE from the menu
- to get the COMPUTE VARIABLE dialog box. This box
has entry fields for the TARGET VARIABLE and for the NUMERIC EXPRESSION.
You would type in the name of the new variable in the first field and
then type an algebraic formula in the second field. SPSS thoughtfully
provides you with lists of the current variables and all of the
mathematical functions to save you a bit of typing.

For example
- if you were converting temperature scales
- the two fields
might contain temp_c and 5/9*(temp_f-32)
- respectively. You have to
be careful about temperature measurements. I visited Toronto in 1994,
and it was so far north that even in August
- the temperature never got
above 35 degrees.

**Be sure that you know the range of possible values for any variables
that you transform**. If you define a formula with division and some of
your denominators are zero
- or if you define a formula using square
roots and some of your data is negative
- SPSS will complain and insert
missing values into the offending spots in your new variable.

**To convert a categorical variable
- you must specify a list of all the
possible current values and what you want to covert each value into.**
This can be tedious. No one ever claimed that data management was fun.
It's good form to account for every possible category when using
RECODE. Using ranges and/or the ALL OTHER VALUES option will help. If
you fail to specify a category
- SPSS will assume that you want to use
the same category code in your new variable.

When you select TRANSFORM | RECODE you have the choice of recoding INTO
SAME VARIABLES or INTO DIFFERENT VARIABLES. The folks who like to go
bungee jumping without checking the length of the bungee cord usually
select the first option. **Unless you want to make permanent and
irreversible changes to your data set
- always recode into different
variables.**

Also you should **plan for how you want missing values to be handled**.
Sometimes you might want to convert missing values into a special
category or you might want to convert a special category to missing. You
can choose instead to work with missing values when you document your
variables (by selecting DATA | DEFINE VARIABLE from the menu or by
double clicking on column heading).

**Example**

In a study of breast feeding
- one of the variables measures birth weight
in kilograms. Suppose we needed to **convert this column of data into
grams**. This would simply involve mulitplying by 1000.

![](../../../web/images/99/modify01.gif)

We would select TRANSFORM | COMPUTE from the menu and fill in the
dialog box as shown above. We could then click on the TYPE&LABEL button
if we wanted to add documentation for this new variable.

Another variable in this data set is breast feeding status at discharge.
This is a categorical variable with four levels
- 1=Exclusive
- 2=Partial,
3=Supplement
- 4=None. We want to estimate the probability of exclusive
breast feeding at discharge in a logistic regression model. Since a
logistic model requires that the dependent variable have only two
levels
- we need to **combine category levels 2
- 3
- and 4 into a single
new category level**.

![](../../../web/images/99/modify02.gif)

We would start by selecting TRANSFORM | RECODE from the menu. In the
first dialog box
- we would select the original variable (bw0) and
provide a name (excl0) and label (Exclusive breast feeding status at
discharge) for the new variable. This produces a dialog box that looks
like the above.

![](../../../web/images/99/modify03.gif)

Then we would click on the OLD AND NEW VALUES button to define what
categories we want to recode. The value of 1 (exclusive) will stay the
same
- and the values of 2 through 4 (partial
- supplement
- and none) will
change to 0. We will convert any other values to missing. The above
figure shows what the second dialog box would look like when we are
done.

**Summary**

You can find modifications for SPSS data under the TRANSFORM menu.
Select the COMPUTE submenu if you want to modify a continuous variable.
Select the RECODE submenu if you want to modify a categorical variable.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/modify.html
[sim2]: http://www.pmean.com/original_site.html
