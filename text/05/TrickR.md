---
title: A simple trick in R
author: Steve Simon
source: http://www.pmean.com/05/TrickR.html
date: 2005-10-11
categories:
- Blog post
tags:
- R software
output: html_document
---
**[StATS]:** **A simple trick in R (October 11,
2005)**

> There may be times when you have a string in R that represents a
> specific R command. How would you run this command. This was answered
> recently on the Bioconductor mailing list. You use the eval() and
> parse() functions. Here's an example:
>
> > `R.function <- "mas"      R.args <- "data.raw"      R.command <- paste(R.function,"(",R.args,")",sep="")      R.command            [1] "mas(data.raw)"            eval(parse(text=method))`
>
> The parse() function turns the string into an unevaluated expression
> and the eval() function evaluates this expression.
>
> The do.call() function can also work.
>
> > `do.call(R.function,list(R.args))`
>
> This sort of thing is useful if you need to loop through a sequence of
> commands, a sequence of of arguments, or a sequence of models. I'll
> try to show an example where you could not do this through a simpler
> approach when I have time.

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: R
software](../category/RSoftware.html).
<!---More--->
software](../category/RSoftware.html).
for pages similar to this one at [Category: R
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]:** **A simple trick in R (October 11,
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: R
software](../category/RSoftware.html).
--->

