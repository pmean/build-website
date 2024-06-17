---
title: Inputting a two-by-two table into SPSS
source: http://www.pmean.com/99/table.html
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
- I have the following data in a two by two table:*

::: {align="left"}
  ----------- --------- --------- -----------
                **D+**    **D-**    **Total**
    **F+**     **34**    **23**     **57**
    **F-**     **139**   **119**    **258**
   **Total**   **173**   **142**    **315**
  ----------- --------- --------- -----------
:::

*When I try to enter this data into SPSS
- I can't get it to compute
risk ratios and confidence intervals. What am I doing wrong? -- Jinxed
Jason*

Dear Jinxed,

You have values ranging from F- to D+? I hope this isn't data on the
grades you received in college.

Actually these data are from a paper: Sands et al (1999). F+
represents presence of a risk factor (in this case
- previous
miscarriage) and F- represents absence of that risk factor. D+
represents presence of a defect (ventricular septal defect or VSD) and
D- represents absence of that defect.

::: {align="left"}
  ----------------- ----------- ----------------- -------------------
       **Risk       **Group**   **Number/Total     **Odds Ratio
      Factor**                     (Percent)**         (95%CI)**

   **Miscarriage**    **VSD     **34/173 (20%)   **1.3 (0.7,2.3)**
                     Control**   23/142 (16%)**   

     **Female**       **VSD     **84/173 (49%)   **2.1 (1.3,3.2)**
                     Control**   60/142 (42%)**   

   **Low parity**     **VSD     **76/173 (44%)   **1.1 (0.7,1.8)**
                     Control**   58/142 (41%)**   

     **Smoking**      **VSD     **41/173 (24%)   **0.8 (0.5,1.3)**
                     Control**   39/139 (28%)**   

     **Alcohol**      **VSD     **18/173 (10%)   **0.7 (0.4,1.5)**
                     Control**   20/139 (14%)**   
  ----------------- ----------- ----------------- -------------------
:::

Notice that we have to do a bit of arithmetic to get all the values.
**If 34 out of 173 VSD cases had a previous miscarriage
- then
139=173-34 did not. If 23 out of 142 controls had previous miscarriage
as a risk factor
- then 119 did not.**

For data like this
- you have to re-arrange things and then apply
weights. The following discussion talks about SPSS
- but the general
method works for most other statistical software.

To re-arrange the data
- you need to specify three variables: F
- D
- and
COUNT. **F takes the value of 1 for F+ and 0 for F-. D takes the value
of 1 for D+ and 0 for D-**. The 0-1 coding has some nice mathematical
properties
- but you could use 1 and 2 instead. **For each combination
of F and D we will record the sample size in COUNT**.

Here's what your re-arranged data would look like

![](../../../web/images/99/table01.gif)

**Enter the data
- and tell SPSS that W represents a weighting
variable**
- and you're ready to rock and roll. You do this by
selecting **Data | Weight Cases from the SPSS menu.**

![](../../../web/images/99/table02.gif)

Then select **Analyze | Descriptive Statistics | Crosstabs from the
SPSS menu** to create a two by two table.

![](../../../web/images/99/table03.gif)

Be sure to click on the **Statistics button** and select the **Risk
option box** to ask SPSS to compute the risk ratios.

![](../../../web/images/99/table04.gif)

I also usually find it useful to display the row percentages. To do
this
- click on the **Cells button**.

![](../../../web/images/99/table05.gif)

In the **Crosstabs: Cell Display dialog box**
- select the **Row
Percentages option box**.

Here's what the first part of the output looks like.

![](../../../web/images/99/table06.gif)

Notice that the rows and columns are reversed in this table. There are
several ways to change how the table is displayed
- but it is showing
essentially the same information in any order.

Here is what the second part of the output looks like.

![](../../../web/images/99/table07.gif)

By the way
- if you tried to use the crosstabs procedure without
weighting
- you would get exactly one observation in each cell. Pretty
boring
- eh?

![](../../../web/images/99/table08.gif)

**Summary**

Jinxed Jason can't figure out **how to enter data from a two by two
table into SPSS**. Professor Mean explains that **you need three
variables to represent a two by two table**. The first variable
indicates **the specific column** of your table and the second
variable indicates **the specific row** (or vice versa). The third
variable indicates **the count or frequency** for each intersection of
row and column. You do not include the row or column totals in your
data entry. You can then **select** **Analyze | Descriptive
Statistics | Crosstabs from the SPSS menu** **to analyze the data
from your two by two table**. You get additional analyses by selecting
the **Risk and/or Chi-square option boxes**.

**Further reading**

1.  **Incidence and risk factors for ventricular septal defect in "low
    risk" neonates.** Sands AJ
- Casey F
- Craig B
- Dornan J
- Rogers J
    and Mulholland H. Arch Dis Child Fetal Neonatal Ed
    1999:81(1);F61-F63. This paper is [available on the
    web](http://adc.bmjjournals.com/cgi/content/full/fetalneonatal;81/1/F61).

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/table.html
[sim2]: http://www.pmean.com/original_site.html
