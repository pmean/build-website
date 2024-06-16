---
title: Importing spreadsheet data into SPSS
source: http://www.pmean.com/99/excel.html
author: Steve Simon
date: 1999-09-20
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
- I need to import data in an Excel spreadsheet
- but
I can't get SPSS to read this data properly. Can you help? -- Stumped
Stan*

Dear Stumped,

Nothing works right the first time
- but you can do a few things that
will make it easier to import your Excel data. Every data set has its
own unique problems
- of course
- so **there is no foolproof way to ensure
that your data will move perfectly**.

Here are the four general steps that I recommend for someone who is
importing Excel data.

1.  **Close the Excel file** before you try to import in SPSS.
2.  Arrange the data in a **rectangular grid**
3.  **Don't mix** strings and numbers.
4.  Put **descriptive names** in your first row.

**Rectangular grid**

A rectangular gird is a systematic layout of your data so that that the
intersection of every column and row contains a single number. The data
should start in the first row of the spreadsheet
- or the second row
- if
you use the first row as column labels. Don't leave any "holes" in
the spreadsheet.

Be sure to delete any rows of your spreadsheet that contains summary
data like totals or means. You don't want SPSS to think that this
summary row is just another row of data.

Don't mix strings and numbers.

A mixture of strings and numbers in a single column will confuse SPSS.
SPSS uses the first value that it sees in a column to decide if that
column should be stored using string
- date
- or numeric format. If any
further values in that column do not match the format of your first
value
- SPSS will convert that value to missing.

Here's an example of a mixture of strings and numbers "1"
- "2"
- "3
or more". This type of coding will ensure that a large amount of your
data gets converted to missing values. Which values stay and which ones
don't depend on what appears first in your column.

**Provide brief descriptive names**

SPSS can use the first row of your spreadsheet as variable names
- as
long as you keep within the proper restrictions. Keep you names short.
Although the previous restriction to eight characters or less
- names
that are very long become unwieldy and don't display well in the graphs
and tables. You can (and should) use the variable label in SPSS to
provide a longer and more detailed description of this variable.

The name has to be one word with no blanks. You can use the underscore
symbol "_" or the dot to simulate blanks. You can also use
MixedCapitalization to simulate blanks.

Avoid special symbols (other than the underscore and dot). Symbols like
the dash (-) and the slash (/) cause problems because they imply some
sort of arithmetic operation.

A variable name like "Mother's Age" causes problems because it
includes a special symbol (the apostrophe) and it has a blank. If you
tried to use this name
- SPSS would create a generic name like VAR00001
and use "Mother's Age" as a variable label. A name that SPSS will
tolerate would be "mom_age" or "MomAge" or "mom.age".

It takes some creativity to describe a variable well with only eight
characters. Do the best you can. Remember that you can always add a
lengthy variable label later that has blanks
- special symbols.

**Close the Excel file**

SPSS cannot import data from a spreadsheet that is currently open in
Excel. Excel marks that spreadsheet as "in use" and SPSS avoids
importing anything with such a mark. This actually provides an extra
level of security
- as you probably would not want to import data into
SPSS that was possibly being editted in Excel at the same time.

**Here is an Excel spreadsheet with data from a breast feeding study**.
I have already arranged the data in a rectangular grid and placed brief
descriptive names in the first row..

![](../../../web/images/99/excel01.gif)

**Make sure that Excel is closed before you try to import in SPSS**.
SPSS is very jealous. It will not want to open your data file if it
knows that some other software is currently using it. SPSS will warn you
about a "sharing violation".

**Open SPSS and select FILE | OPEN from the menu**. Here is the SPSS
dialog box that you will see. Click on the down arrow in the FILE OF
TYPE field and select the EXCEL (*.XLS) option. Find your file on the
proper drive and folder of your computer.

![](../../../web/images/99/excel02.gif)

When you click on the OPEN button
- you get the dialog box shown below.
**Click on the READ VARIABLE NAMES BUTTON if the first row of your
spreadsheet has variable names**. Then click on the OK button.

![](../../../web/images/99/excel03.gif)

**Check if you got the correct number of variables (columns) and cases
(rows)**. A common problem is that SPSS will sometimes import a bunch of
extra blank rows. You can delete the blank rows manually.

![](../../../web/images/99/excel04.gif)

Here is what the SPSS data window looks like. **We are now ready to do
things like adjusting the number of decimal places displayed and adding
documentation.**

![](../../../web/images/99/excel05.gif)

**Summary**

If you want to import Microsoft Excel data into SPSS
- follow these four
steps:

1.  Close the Excel file
2.  Arrange the data in a **rectangular grid**
3.  **Don't mix** strings and numbers.
4.  Put **descriptive names** in your first row.

Once you have done this
- s**elect FILE | OPEN DATA** from the SPSS
menu. Then **click on FILE OF TYPE field and select the EXCEL (*.XLS)
option**.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/excel.html
[sim2]: http://www.pmean.com/original_site.html
