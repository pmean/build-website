---
title: SPSS syntax for Poisson Regression, Marta Garcia-Granero, PhD
author: Steve Simon
source: http://www.pmean.com/03/poiss_syntax.html
date: 2003-07-29
category: Blog post
tags: 
output: html_document
---
****[StATS]:**** **SPSS syntax for Poisson
Regression, Marta Garcia-Granero, PhD (July 29, 2003)**

> Here is a nice example of how to run Poisson Regression in SPSS. It
> was originally posted on the SPSSX-L listerver on July 16, 2003 and is
> posted here with the author\'s permission.
>
> \* Dataset \*\
> \
> DATA LIST list / id(f2.0) agegroup(f8.0) smoker(f1.0) pyears(f8.0)
> deaths(f4.0).\
> BEGIN DATA\
> 1 0 0 18790 2\
> 2 1 0 10673 12\
> 3 2 0 5712 28\
> 4 3 0 2585 28\
> 5 4 0 1462 31\
> 6 0 1 52407 32\
> 7 1 1 43248 104\
> 8 2 1 28612 206\
> 9 3 1 12663 186\
> 10 4 1 5317 102\
> END DATA.\
> DOCUMENT \'Coronary deaths from British male doctors. Doll & Hill\
> (Nat Cancer Inst Monog 1996; 19:205-68)\'.\
> VARIABLE LABELS agegroup \"Age group\".\
> VALUE LABELS agegroup\
> 0 \"35-44 years\"\
> 1 \"45-54 years\"\
> 2 \"55-64 years\"\
> 3 \"65-74 years\"\
> 4 \"75-84 years\".\
> VARIABLE LABELS smoker \"Smoking status\".\
> VALUE LABELS smoker\
> 0 \"No\"\
> 1 \"Yes\".\
> WEIGHT BY deaths .\
> \
> DISPLAY DICTIONARY.\
> \
> COMPUTE age=40 + agegroup\*10.\
> FORMATS age(F8.0).\
> EXECUTE.\
> \
> \* Reference category must be the last and have to be recoded \*\
> \
> RECODE agegroup (0=5) .\
> ADD VALUE LABELS agegroup 0 \"\" 5 \"35-44 years\".\
> RECODE smoker (0=2) .\
> ADD VALUE LABELS smoker 0 \"\" 2 \"No\".\
> EXECUTE.\
> \
> SAVE OUTFILE=\'c:/temp/Poissonreg.sav\'.\
> \
> FREQUENCIES\
> VARIABLES=agegroup smoker\
> /ORDER VARIABLES .\
> \
> GENLOG\
> agegroup smoker /CSTRUCTURE=pyears\
> /MODEL=POISSON\
> /PRINT FREQ RESID ESTIM\
> /PLOT NONE\
> /CRITERIA =DELTA(0)\
> /DESIGN agegroup .\
> GENLOG\
> agegroup smoker /CSTRUCTURE=pyears\
> /MODEL=POISSON\
> /PRINT FREQ RESID ESTIM\
> /PLOT NONE\
> /CRITERIA =DELTA(0)\
> /DESIGN smoker .\
> GENLOG\
> agegroup smoker /CSTRUCTURE=pyears\
> /MODEL=POISSON\
> /PRINT FREQ RESID ESTIM\
> /PLOT NONE\
> /CRITERIA =DELTA(0)\
> /DESIGN agegroup smoker .\
> GENLOG\
> agegroup smoker /CSTRUCTURE=pyears\
> /MODEL=POISSON\
> /PRINT ESTIM\
> /PLOT NONE\
> /DESIGN agegroup smoker agegroup\*smoker .\
> \
> \* Model with quantitative variable \"age\" instead of \"agegroup\"
> \*.\
> \* If \"id\" variable not present, compute it first:\
> \* COMPUTE id=\$casenum.\
> \
> GENLOG\
> id smoker WITH age /CSTRUCTURE=pyears\
> /MODEL=POISSON\
> /PRINT ESTIM\
> /PLOT NONE\
> /DESIGN age smoker age\*smoker .\
> \
> HTH\
> \
> Marta Garcia-Granero
>
> Footnote: I was informed that some of the links listed in Marta
> Garcia-Granero\'s emails no longer work. I will investigate them when
> I get a chance.
>
> www.spss.com/tech/stat/Algorithms/11.5/genlog\_poisson.pdf
> www.spss.com/tech/answer/details.cfm?tech\_tan\_id=100006204
> www.spss.com/tech/answer/details.cfm?tech\_tan\_id=100007599
> www.spss.com/tech/answer/details.cfm?tech\_tan\_id=100010902
> www.spss.com/tech/answer/details.cfm?tech\_tan\_id=100010963
> www.spss.com/tech/answer/details.cfm?tech\_tan\_id=100011399

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at
<!---More--->
this one at
with general help resources. You can also browse for pages similar to
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
****[StATS]:**** **SPSS syntax for Poisson
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with general help resources. You can also browse for pages similar to
this one at
--->

