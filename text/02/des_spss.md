---
title: SPSS dialog boxes for a descriptive analysis
author: Steve Simon
source: http://www.pmean.com/02/des_spss.html
date: 2002-06-21
categories:
- Blog post
tags:
- Descriptive Statistics
output: html_document
---

This handout will show the SPSS dialog boxes that I used to create the
examples in the descriptive data analysis handout. I will capitalize
variable names, field names and menu picks for clarity.

<!---More--->

**Compute frequency counts**

Select ANALYZE | DESCRIPTIVE STATISTICS | FREQUENCIES from the SPSS
menu. You will see the following dialog box:

![](http://www.pmean.com/images/02/des_spss01.gif)
height="305"}

Click on RACE and then click on the right arrow button to add it to
the VARIABLE(S) field.

**Find minimum and maximum values.**

Select ANALYZE | DESCRIPTIVE STATISTICS | DESCRIPTIVES from the SPSS
menu. You will see the following dialog box.

![](http://www.pmean.com/images/02/des_spss02.gif)
height="257"}

Select your variable in the list on the left and click on the arrow
button to add it to the VARIABLE(S) field. You can repeat this for
additional variables if needed.

**Compute cross tabulations**

Select ANALYZE | DESCRIPTIVE STATISTICS | CROSSTABS from the SPSS
menu. You will see the following dialog box.

![](http://www.pmean.com/images/02/des_spss03.gif)
height="439"}

Select variables from the list on the left. Add one to the ROW(S)
field and another to the COLUMN(S) field. Click on the OK button to
continue.

To produce row percents, select ANALYZE | DESCRIPTIVE STATISTICS |
CROSSTABS again. Notice that SPSS remembered your previous choices.
How nice! Now click on the CELLS button to get the following dialog
box.

![](http://www.pmean.com/images/02/des_spss04.gif)
height="255"}

Check the ROW option. Now click on the CONTINUE button in this dialog
box and the OK button in the previous dialog box.

**Drawing boxplots**

Select GRAPHS | BOXPLOT from the SPSS menu. You will see the
following dialog box.

![](http://www.pmean.com/images/02/des_spss05.gif)
height="253"}

We will select the SIMPLE option and the SUMMARIES FOR GROUPS OF CASES
option here. A good rule of thumb is to always try the default options
first. You can always experiment with other options if needed, but the
defaults in SPSS usually work well.

You would use the CLUSTERED option if you want to see separate box
plots across the combination of two different categorical variables.
You would select the SUMMARIES OF SEPARATE VARIABLES if you wanted box
plots for several columns of data simultaneously.

When you click on the DEFINE button, you will see the following dialog
box.

![](http://www.pmean.com/images/02/des_spss06.gif)
height="271"}

Select a continuous variable and add it to the VARIABLE field. Select
a categorical variable and add it to the CATEGORY AXIS field. You can
leave the LABEL CASES BY field blank if you like. The variable in this
field provides labels for any outliers that might be found in the box
plots. If the field is blank, SPSS labels outliers with the row
number.

**Draw a scatterplot.**

Select GRAPHS | SCATTER from the SPSS menu. You will see the
following dialog box.

![](http://www.pmean.com/images/02/des_spss07.gif)
height="155"}

We will select the SIMPLE, the default option. You would select the
OVERLAY option instead if you wanted to plot more than two columns of
data simultaneously. You would select the 3-D option if you wanted to
examine the relationship among three continuous variables
simultaneously. These 3-D graphs look fancy, but they are often
difficult to interpret. Another option which works for three (or even
more) variables in the scatterplot matrix. This arranges graphs of all
possible pairs of your data in a nice grid. When you click on the
DEFINE button, you will see the following dialog box:

![](http://www.pmean.com/images/02/des_spss08.gif)
height="423"}

Select continuous variables for the Y-AXIS field and the X-AXIS field.
The remaining two fields are optional. If you place a categorical
variable in the SET MARKERS BY field, SPSS will use different marks
for each level of your categorical variable. If you place a variable
in the LABEL CASES BY field, thenvalues of that variable will appear
as labels by each data point. With a graph like ours with 87 points,
those labels would make our graph far too cluttered.

You may wish to modify or customize the graph that SPSS produces. To
make changes, double click on the graph. You will get a chart editor
window that looks like the following.

![](http://www.pmean.com/images/02/des_spss09.gif)
height="480"}

For example, the points displayed in this graph are too small and the
wrong shape. To modify this, select FORMAT | MARKER from the SPSS
menu. You will see the following dialog box.

![](http://www.pmean.com/images/02/des_spss10.gif)
height="265"}

Select the open circle marker and the MEDIUM size option. Then click
on the APPLY ALL button. If you like this choice, click on the CLOSE
button in the above dialog box and select FILE | CLOSE from the chart
editor window. The modified graph will appear in the SPSS output
window.

