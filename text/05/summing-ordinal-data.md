---
title: Summing ordinal data
author: Steve Simon
source: http://www.pmean.com/05/OrdinalData.html
date: 2005-04-05
categories:
- Blog post
tags:
- Being updated
- Descriptive statistics
output: html_document
page_update: partial
---
**[StATS]: Summing ordinal data (April 5, 2005)**

You have a questionnaire which asks several related questions on a
Likert scale (1=Strongly Disagree, 2=Disagree, etc.). You want to add
these items together and then report an average. Is this a legitimate
thing to do?

It depends on who you talk to. There is no real consensus in the
research community. That means that you are free to use whatever
approach you want, but prepare yourself for the possibility that your
supervisor/your dissertation committee/the journal peer reviewer will
force you to switch to the "other" way.

Basically, when you assign numbers like 1, 2, 3, 4, and 5 to the
categories strongly disagree, disagree, neutral, agree, strongly agree,
you are making an assumption that the difference between any two
successive values is comparable. So a shift from disagree to neutral is
comparable to a shift from neutral to agree. Equivalently, you are
assuming that a patient who strongly disagrees with half of the
statements and is neutral on the remaining half is comparable to a
patient who simply disagrees with all items on the scale.

A perfectly reasonable alternative is to assign the values -3, -1, 0, 1,
3 to the five categories. This assignment makes the assumption that a
strong disagreement is three times as serious as a simple disagreement.

Since there is more than one reasonable way to assign numbers to the
categories, you might wish to use an ordinal model that provides the
same answer no matter what values you decide to assign.

This is not unlike the process of assigning grades. When you calculate a
grade point average, you assign the numbers 0, 1, 2, 3, and 4 to the
grades F, D, C, B, and A. Is this a reasonable thing to do? It is if you
believe that a student with two B's is comparable to a student with an
A and a C. Or more extremely, you would believe that a student with two
C's is comparable to a student with an A and an F.

Perhaps you could assign alternate numbers: A=100, B=90, C=80, D=70,
F=0. That would penalize someone quite strongly for a single F, much
more so than the scoring system that everyone uses.

One alternative to averaging is to rank the data. With a small number of
ordinal categories, the ranks would have a lot of ties. It seems like a
reasonable approach, but it can sometimes give nonsensical results.
Consider a salary survey that asks for your yearly salary using the
following categories:

- 0 to 10 thousand dollars
- 10 to 20 thousand dollars
- 20 to 50 thousand dollars
- 50 to 100 thousand dollars
- more than 100 thousand dollars

Suppose that the number of people responding in each category is

- 49 people select 0 to 10 thousand dollars
- 21 people select 10 to 20 thousand dollars
- 9 people select 20 to 50 thousand dollars
- 3 people select 50 to 100 thousand dollars
- 3 people select more than 100 thousand dollars

Then the average ranks are 25, 60, 75, 81, and 84. This says that the
difference between 0 to 10<U+FFFD> and 10 to 20 (45 units) is three times more
severe than the difference between 10 to 20<U+FFFD> and 20 to 50 (15 units).
Even worse, the difference between 0 to 10 and 10 to 20 is fifteen times
more severe than the difference between 50 to 100 and more than 100.

A much better approach for this type of data is to assign the midpoint
to each interval and assign a reasonably large value (say 150 thousand
or 200 thousand) to the last interval.

There isn't any real consensus, so you can probably find a
justification for just about any type of approach in the list of
readings offered below. I have no problem with averaging ordinal data,
because I haven't seen that many situations where using something more
complex has resulted in a substantively different conclusion.

**Further reading**

- **Regression models for ordinal responses: a review of methods and
applications.** Ananth CV, Kleinbaum DG. International Journal of
Epidemiology 1997: 26(6); 1323-33.
- **Pearson's R and Coarsely Categorized Measures.** Bollen KA, Barb
K. American Sociological Review 1981: 46; 232-39.
- **Tutorial in Biostatistics: A review of tests for detecting a
monotone dose-response relationship with ordinal response data.**
Chuang-Stein C, Agresti A. Statistics in Medicine 1997: 16(22);
2599-618.
- **[Logistic
Regression](http://www2.chass.ncsu.edu/garson/pa765/logistic.htm%20)**.
Garson GD, College of Humanities and Social Sciences, North Carolina
State University. Accessed on 2003-08-28.
www2.chass.ncsu.edu/garson/pa765/logistic.htm
- **Alternative models for ordinal logistic regression.** Greenland S.
Stat Med 1994: 13(16); 1665-77.
- **Multivariable prognostic models: issues in developing models,
evaluating assumptions and adequacy, and measuring and reducing
errors.** Harrell FE, Jr., Lee KL, Mark DB. Stat Med 1996: 15(4);
361-87.
- **Development of a clinical prediction model for an ordinal outcome:
the World Health Organization Multicentre Study of Clinical Signs
and Etiological agents of Pneumonia, Sepsis and Meningitis in Young
Infants. WHO/ARI Young Infant Multicentre Study Group.** Harrell FE,
Jr., Margolis PA, Gove S, Mason KE, Mulholland EK, Lehmann D, Muhe
L, Gatchalian S, Eichenwald HF. Statistical Medicine 1998: 17(8);
909-44.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9595619&dopt=Abstract)
- **Multivariate Analysis and Ordinal Data.** Henry F. American
Sociological Review 1982: 47; 299-307.
- **Ordinal Measures in Multiple Indicator Models: A Simulation of
Categorization Error.** Johnson D, Creech J. American Sociological
Review 1983: 48; 398-407.
- **Multivariate Analysis of Ordinal Variables.** Kim J. American
Journal of Sociology 1975: 81; 261-98.
- **Multivariate Analysis of Ordinal Variables Revisited.** Kim J.
American Journal of Sociology 1978: 84; 448-56.
- **The Assignment of Numbers to Rank Order Categories.** Labovitz S.
American Sociological Review 1970: 35; 515-24.
- **The Use of Pearson's R with Ordinal Data.** O'Brien R. American
Sociological Review 1979: 44; 851-57.
- **Likelihood ratios with confidence: sample size estimation for
diagnostic test studies.** Simel DL, Samsa GP, Matchar DB. J Clin
Epidemiol 1991: 44(8); 763-70.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=1941027&dopt=Abstract)
- **Sample size and power estimation for studies with health related
quality of life outcomes: a comparison of four methods using the
SF-36.** Walters SJ. Health Qual Life Outcomes 2004: 2(1); 26.
[\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15161494&dopt=Abstract)
[\[Abstract\]](http://www.hqlo.com/content/2/1/26/abstract) [\[Full
text\]](http://www.hqlo.com/content/2/1/26)
[\[PDF\]](http://www.hqlo.com/content/pdf/1477-7525-2-26.pdf)
- **[Data Levels and
Measurement](http://www2.chass.ncsu.edu/garson/pa765/datalevl.htm%20)**.
Garson GD, North Carolina State University. Accessed on 2003-11-19.
www2.chass.ncsu.edu/garson/pa765/datalevl.htm

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/OrdinalData.html
[sim2]: http://www.pmean.com

