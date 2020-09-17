---
title: String manipulations in R
author: Steve Simon
source: http://www.pmean.com/05/StringsR.html
date: 2005-05-10
category: Blog post
tags: Data management, R software
output: html_document
---
**[StATS]:** **String manipulations in R (May 10,
2005)**

As part of my efforts to analyze microarray data, I am finding that I
need to do simple string manipulations in R. Here is a list of functions
that might help.

-   paste() combines several strings together into a single string.
-   substr() selects substrings.
-   format() makes a set of numbers print out more nicely.

There are several functions that will convert one string into another
string.

-   chartr() converts specific characters in a string to different
    characters.
-   tolower() converts all the letters in a string to lower case.
-   toupper() converts all the letters in a string to upper case.
-   casefold() will perform either of the two conversions shown above.

Several functions help find matches between two lists.

-   a %in% b returns a logical value of TRUE for each value of a which
    can be found somewhere in list b and FALSE if that value cannot be
    found.
-   pmatch(), match(), charmatch() work similarly but with subtle
    variations.

Several functions will use regular expressions.

-   grep() searches for matches to a pattern.
-   strsplit() splits a string into several pieces.

A nice tutorial, by the way, on regular expressions is at:

-   [en.wikibooks.org/wiki/Programming:Perl\_Regular\_expressions](http://en.wikibooks.org/wiki/Programming:Perl_Regular_expressions)

There are several string manipulation functions found in the limma
package, including

-   makeUnique() is found in the limma package and adds numbers to the
    ends of duplicate strings to give each one a unique name.
-   trimWhiteSpace() is found in the limma package and removes leading
    and trailing blanks from a string.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Data
management](../category/DataManagement.html) or [Category: R
software](../category/RSoftware.html).
<!---More--->
software](../category/RSoftware.html).
management](../category/DataManagement.html) or [Category: R
for pages similar to this one at [Category: Data
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **String manipulations in R (May 10,
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at [Category: Data
management](../category/DataManagement.html) or [Category: R
software](../category/RSoftware.html).
--->

