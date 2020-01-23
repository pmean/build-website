---
title: Watch out for ambiguous data
author: Steve Simon
source: http://www.pmean.com/07/AmbiguousData.html
date: 2007-02-14
category: Blog post
tags: Data management
output: html_document
---
**[StATS]:** **Watch out for ambiguous data
(February 14, 2007)**. [Category: Data
management](../category/DataManagement.html)

> Someone brought me a data set with some interesting values. It serves
> as a good example about why you need to carefully review simple
> descriptive statistics before you plunge into a complex analysis.
>
> The following table shows frequencies for a string variable called
> \"RaceID\". This variable used single letter codes to represent race
> and ethnicity.
>
> ![](images/AmbiguousData01.gif){width="435" height="227"}
>
> Note that two of the letter codes are blank. This is bad form, as it
> forces you to guess whether blank means unknown, other, or \"I
> haven\'t completed my data entry yet\".
>
> Also notice that there are two entries for \"W\". The first entry is
> actually a blank followed by W, which the computer interprets as a
> different category than a W without a preceding blank.
>
> The code for A is also ambiguous. Is it Asian-American,
> African-American, or maybe American Indian?
>
> Finally, there is a C category, probably Caucasian, and a W category,
> probably White. Should these two categories be combined?
>
> Although it does not happen in this data set, another problem occurs
> when both lower and upper case letters are used. SPSS and most other
> programs interpret lower and upper case versions of the same letter as
> different categories, but most people would intend them to be the same
> category.
>
> There are some SPSS functions that can help fix up some of these
> ambiguous situations. the LTRIM function, for example, will remove any
> leading blanks. The LOWER function converts any uppercase letters to
> lowercase while the UPCAS function does the reverse..

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
**[StATS]:** **Watch out for ambiguous data
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

