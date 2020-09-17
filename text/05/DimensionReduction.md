---
title: Dimension reduction in a microarray experiment
author: Steve Simon
source: http://www.pmean.com/05/DimensionReduction.html
date: 2005-05-25
category: Blog post
tags: 
output: html_document
---
**[StATS]:** **Dimension reduction in a microarray
experiment (May 25, 2005)**.

> Given the large number of genes in a microarray experiment, you need
> to find some way of looking at subsets or linear combinations of these
> genes. Assume that you have G genes and M microarrays and that the
> normalized signals are in a matrix X with G rows and M columns. Assume
> that information about the particular tissues (phenotypic data) is in
> a matrix Y with G rows and P columns.
>
> Often you will find more interpretable results for these procedures
> when you center the rows of X so that they have a mean of zero, or
> standardize the rows of X so that they will also have a standard
> deviation of one.
>
> **Principal components**. A simple approach that looks at linear
> combinations of  the columns of X (the genes) that have the largest
> amount of variation. Alternately, you can look at linear combinations
> of the rows of X (the arrays) that have the largest amount of
> variation. These linear combinations are often interesting, and you
> can find it useful sometimes to plot these linear combinations versus
> some of the phenotypic data. There are two functions in R, prcomp and
> princomp, that perform principal components analysis.
>
> **Singular value decomposition**. This is a tool that allows you to
> simultaneously look at principal components both from the perspective
> of the rows (genes) and the columns (arrays). A plot of the first two
> dimensions of the singular value decomposition is known as a biplot.
> There is an svd function in the base package of R that performs
> singular value decomposition.
>
> **Canonical correlation**. This represents linear combinations of the
> rows (genes) or columns (arrays) of X that are maximally associated
> with the phenotypic data. There is a cancorr function in the base
> package of R that performs canonical correlation.
>
> **Partial least squares and latent root regression** are methods that
> try to find linear combinations of the rows of X that are the
> strongest predictors of the phenotypic data. The R package has
> libraries (pls and plsgenomics) that perform partial least squares
> regression.
>
> **Further reading:**
>
> -   **[Partial Least Squares
>     (PLS)](http://www.statsoft.com/textbook/stpls.html%20)**. StatSoft
>     Inc. Accessed on 2005-05-25. www.statsoft.com/textbook/stpls.html
> -   **[Partial Least Squares (PLS) Regression
>     \[PDF\]](http://www.utdallas.edu/~herve/Abdi-PLS-pretty.pdf%20)**.
>     Abdi H, published in Lewis-Beck M., Bryman, A., Futing T. (Eds.)
>     (2003). Encyclopedia of Social Sciences Research Methods. Thousand
>     Oaks (CA): Sage. Accessed on 2005-05-25.
>     www.utdallas.edu/\~herve/Abdi-PLS-pretty.pdf

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Dimension reduction in a microarray
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

