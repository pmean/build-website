---
title: A complex subgroup definition
source: http://www.pmean.com/13/subgroup.html
author: Steve Simon
date: 2013-03-25
categories:
- Blog post
tags:
- SPSS software
output: html_document
page_update: complete
---

I got a question about a complex definition of a subgroup for data in SPSS. I've changed a few details, but the gist of the question goes like this:

<!---More--->

I have a SPSS version 20 data base where I have the variables below: FIES1 FIES2 ACTHDR1 ACTHDR2 PNS1 PNS2 and PATRxGp The variables FIES1 and FIES2 are categorical variables (Qualitative Nominal) which can take the values: M1, M2, M3, G2, M1+G2, M1+G3, M2+G1, M2+G2, M2+G3, M3+G1, M3+G2 and M3+G3, all these values stand for different treatments and combination of treatments for a disease. The variables ACTHDR1, ACTHDR2 and PNS1, PNS2 can take the values IN1, IBU1 or D1 all these values standing for different treatments and combination of treatments.

From these data I want to determine some subsets of patient groups of treatment regimens using the following structure:

```
If FIES1 = FIES2 and FIES1 = M1 or M2 or M3 or G2 or M1+G1 or M1+G2 or M1+G3 or M2+ G1 or M2+G2 or M2+G3 or M3+G1 or M3+G2 or M3+G3 and ACTHDR1 = ACTHDR2 and ACTHDR1 = None and PNS1 = PNS2 and PNS1 = None or IN1 or IBU1 or D1 Then, PATRxGp = A

If FIES1 = FIES2 and FIES1 = ACT1 or ACT2 or ACT 3 or ACT4 And If ACTHDR1 = ACTHDR2 = None or IN1 or IBU1 or D1 and CPNSAD1 = PNS2 = None or IN1 or IBU1 or D1 Then, PATRxGp = B
```

I know SAS does this very impressively but How can I do it using SPSS version 20.

Since you've used SAS before, a simple solution would be to import the data into SAS, do your calculations there and export it back into SPSS. There's a chance that something might get lost in all the translation (e.g., missing value codes or value labels), so be careful.

Within SPSS, it is easiest to select TRANSFORM | COMPUTE from the menu and type a boolean-like syntax into the dialog box. Alternately, you can use the Syntax window and type in something like

```
COMPUTE PATRxGp_A=(FIES1 = FIES2)&((FIES1 = "M1") | (FIES1 = "M2") | ... | (PNS1 = "D1")
COMPUTE PATRxGp_B=(FIES1 = FIES2)&((FIES1 = "ACT1") | (FIES1 = "ACT2") | ... | (PNS1 = "D1")
EXECUTE.
```

This creates two 0-1 variables which equals 1 if your boolean expression is TRUE and 0 if it is FALSE.

Be very careful about the proper use of AND (&) and OR (|) and use parentheses liberally to insure that the logic you intended is followed through with precision. For a situation as complex as this, you also might consider creating some intermediate variables to simplify the coding.

This gets you 90% of the way there. You then need to combine PATRxGp_A and PATRxGp_B into a new variable PATRxGp using the same basic logic.

```
COMPUTE PATRxGp=(PATRxGp_A = 1) + 2*(PATRxGp_B = 1)
EXECUTE.
```

which creates a variable which is 1 for A, 2 for B and 0 for neither (check for 3 which indicates overlapping subgroups, which should be impossible if I am reading your question correctly). If you want to use "A" and "B" rather than number codes, you can use RECODE or VALUE LABELS, depending on your preferred data format.

If you had heartburn over this, it was probably because you were looking at RECODE, which works well only if a single variable is involved in the calculation of the subgroup. Sometimes you can get it to work with an IF statement, but it's best to look at COMPUTE when multiple variables are involved. Finally, anytime you create a new variable from one or more old variables, run CROSSTABS to check if the results are what you expected.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/13/subgroup.html
[sim2]: http://www.pmean.com/original_site.html
