---
title: String manipulations in R
author: Steve Simon
source: http://www.pmean.com/05/StringsR.html
date: 2005-05-10
categories:
- Blog post
tags:
- Being updated
- Data management
- R software
output: html_document
page_update: partial
---
As part of my efforts to analyze microarray data, I am finding that I
need to do simple string manipulations in R. Here is a list of functions
that might help.

- paste() combines several strings together into a single string.
- substr() selects substrings.
- format() makes a set of numbers print out more nicely.

There are several functions that will convert one string into another
string.

- chartr() converts specific characters in a string to different
characters.
- tolower() converts all the letters in a string to lower case.
- toupper() converts all the letters in a string to upper case.
- casefold() will perform either of the two conversions shown above.

Several functions help find matches between two lists.

- a %in% b returns a logical value of TRUE for each value of a which
can be found somewhere in list b and FALSE if that value cannot be
found.
- pmatch(), match(), charmatch() work similarly but with subtle
variations.

Several functions will use regular expressions.

- grep() searches for matches to a pattern.
- strsplit() splits a string into several pieces.

A nice tutorial, by the way, on regular expressions is at:

- [en.wikibooks.org/wiki/Programming:Perl\_Regular\_expressions](http://en.wikibooks.org/wiki/Programming:Perl_Regular_expressions)

There are several string manipulation functions found in the limma
package, including

- makeUnique() is found in the limma package and adds numbers to the
ends of duplicate strings to give each one a unique name.
- trimWhiteSpace() is found in the limma package and removes leading
and trailing blanks from a string.

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/StringsR.html
[sim2]: http://www.pmean.com
