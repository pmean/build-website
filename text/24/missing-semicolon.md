---
title: "What happens when you leave out a semicolon in SAS?"
source: "New"
author: Steve Simon
date: 2024-07-15
categories:
- Blog post
tags:
- SAS software
output: html_document
page_update: no
---

SAS uses semicolons at the end of each statement. This allows you to stretch a long program statement across two or more lines. I want to show what happens when you forget a semicolon.

<!---more--->

Here is a program I wrote for one of my classes (with a minor modification). It runs just fine.

```{}
* 5507-02-simon-hw-q1.sas
* author: Steve Simon
* creation date: 2021-06-14
* purpose: to list the cigarette brand with the highest tar
* license: public domain;

%let path=q:/introduction-to-sas;

ods pdf file=
    "&path/results/5507-02-simon-hw-q1.pdf";

libname perm
    "&path/data";

proc sort 
    data=perm.cigarettes;
  by descending tar;
run;

proc print
    data=perm.cigarettes(obs=1);
  title1 "M02-Q1. What brand has the highest tar?";
  title2 "BullDurham has the highest level of tar";
run;

ods pdf close;
```

This program produces the following output.

![](http://www.pmean.com/new-images/24/missing-semicolon-01.png)

Notice how some SAS statements in this program are indented, such as

```{}
  by descending tar;
```

This provides a visual clue that the `by` statement is associated with the `proc sort` statement two lines above.

Some statements are split across two separate lines, such as

```{}
proc sort 
    data=perm.cigarettes;

```

I also included a few blank lines to make different parts of the program stand out more clearly. 

The indenting, line splitting, and blank lines are not needed all that much for a simple program like this. Nevertheless, take a look at the program without them.

```{}
* 5507-02-simon-hw-q1.sas
* author: Steve Simon
* creation date: 2021-06-14
* purpose: to list the cigarette brand with the highest tar
* license: public domain;
%let path=q:/introduction-to-sas;
ods pdf file="&path/results/5507-02-simon-hw-q1.pdf";
libname perm "&path/data";
proc sort data=perm.cigarettes;
by descending tar;
run;
proc print data=perm.cigarettes(obs=1);
title1 "M02-Q1. What brand has the highest tar?";
title2 "BullDurham has the highest level of tar";
run;
ods pdf close;
```

This program has one advantage, perhaps, in that you can easily fit it all on a single screen. Other than that, the density makes it difficult for you to quickly read and understand this program.

So I'm glad that SAS allows you to lay out your code in a slightly clearer and more readily comprehended style. A problem arises, however, when you leave out a semicolon where it is needed. 

Suppose, for example, that you leave a semicolon off of the `title1` statement.

```{}
proc print
    data=perm.cigarettes(obs=1);
  title1 "M02-Q1. What brand has the highest tar?"
  title2 "BullDurham has the highest level of tar";
run;
```

The output changes.

![](http://www.pmean.com/new-images/24/missing-semicolon-02.png)

Without the semicolon, SAS interpreted the statement `title2` and the text for `title2` as part of `title1`. This produces a rather ugly looking title.

This is a minor problem, but sometimes leaving out a semicolon will prevent the entire program from working properly. If you left the semicolon off of the last `run` statement, 

```{}
run
ods pdf close;
```

your final line closing the pdf file would be gobbled up and tacked up at the end of your run statement. This would produce the following error in your log window.

![](http://www.pmean.com/new-images/24/missing-semicolon-03.png)

Worse still, the `ods pdf close` statement gets lost, so you lose your pdf file as well.

As a general rule if you get a weird error message that seems to make no sense, look to see if that line or the line above is missing a semicolon.
