---
title: SPSS syntax for Poisson Regression, Marta Garcia-Granero, PhD
source: http://www.pmean.com/03/poiss_syntax.html
author: Steve Simon
date: 2003-07-29
categories:
- Blog post
tags:
- Poisson regression 
- Obsolete page
output: html_document
page_update: complete
---

Note: you can now run Poisson regression directly from the SPSS menus, so this syntax is no longer needed. I am keeping it here because I am an electronic packrat.

Here is a nice example of how to run Poisson Regression in SPSS. It was originally posted on the SPSSX-L listerver on July 16, 2003 and is posted here with the author's permission.

```
* Dataset *

DATA LIST list / id(f2.0) agegroup(f8.0) smoker(f1.0) pyears(f8.0)
deaths(f4.0).
BEGIN DATA
1 0 0 18790 2
2 1 0 10673 12
3 2 0 5712 28
4 3 0 2585 28
5 4 0 1462 31
6 0 1 52407 32
7 1 1 43248 104
8 2 1 28612 206
9 3 1 12663 186
10 4 1 5317 102
END DATA.
DOCUMENT 'Coronary deaths from British male doctors. Doll & Hill
(Nat Cancer Inst Monog 1996; 19:205-68)'.
VARIABLE LABELS agegroup "Age group".
VALUE LABELS agegroup
0 "35-44 years"
1 "45-54 years"
2 "55-64 years"
3 "65-74 years"
4 "75-84 years".
VARIABLE LABELS smoker "Smoking status".
VALUE LABELS smoker
0 "No"
1 "Yes".
WEIGHT BY deaths .

DISPLAY DICTIONARY.

COMPUTE age=40 + agegroup*10.
FORMATS age(F8.0).
EXECUTE.

* Reference category must be the last and have to be recoded *

RECODE agegroup (0=5) .
ADD VALUE LABELS agegroup 0 "" 5 "35-44 years".
RECODE smoker (0=2) .
ADD VALUE LABELS smoker 0 "" 2 "No".
EXECUTE.

SAVE OUTFILE='c:/temp/Poissonreg.sav'.

FREQUENCIES
VARIABLES=agegroup smoker
/ORDER VARIABLES .

GENLOG
agegroup smoker /CSTRUCTURE=pyears
/MODEL=POISSON
/PRINT FREQ RESID ESTIM
/PLOT NONE
/CRITERIA =DELTA(0)
/DESIGN agegroup .
GENLOG
agegroup smoker /CSTRUCTURE=pyears
/MODEL=POISSON
/PRINT FREQ RESID ESTIM
/PLOT NONE
/CRITERIA =DELTA(0)
/DESIGN smoker .
GENLOG
agegroup smoker /CSTRUCTURE=pyears
/MODEL=POISSON
/PRINT FREQ RESID ESTIM
/PLOT NONE
/CRITERIA =DELTA(0)
/DESIGN agegroup smoker .
GENLOG
agegroup smoker /CSTRUCTURE=pyears
/MODEL=POISSON
/PRINT ESTIM
/PLOT NONE
/DESIGN agegroup smoker agegroup*smoker .

* Model with quantitative variable "age" instead of "agegroup"
*.
* If "id" variable not present, compute it first:
* COMPUTE id=$casenum.

GENLOG
id smoker WITH age /CSTRUCTURE=pyears
/MODEL=POISSON
/PRINT ESTIM
/PLOT NONE
/DESIGN age smoker age*smoker .
```

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/03/poiss_syntax.html
[sim2]: http://www.pmean.com/original_site.html
