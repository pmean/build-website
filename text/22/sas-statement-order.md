---
title: "Statement order in SAS programs"
author: "Steve Simon"
date: "2022-12-12"
output:
  html_document: default
categories: Blog post
tags:
- SAS software
source: new
page_update: complete
---

Someone asked about deciding how to know what order to put SAS programming statements in. I answered that you just need to use a bit of common sense.

<!---more--->

The ods statement will either store output in a file or stop storing output in a file. So normally, you would place the first ods statement before any procedure in SAS that produces output (e.g., proc print, proc means). Whether it goes before or after statements that do not produce output (such as the libname statement) is irrelevant. The ods statement that stops producing output goes at the very end of your program, unless you want to deliberately exclude some of the SAS output from your file.

The relative order of libname and filename are not important. Comment statements can go anywhere, though it makes sense to put the documentation header at the head of the file. Other comments should go near the program statements that they are commenting on. I like to put them before, but some people put them on the end of a line, sort of like a suffix, if they are short. After the code you are commenting on is fine also.

If you place a comment in the middle of a statement, use the /* */ delimiters rather than # ;.

So

```
proc means
    min max median /* used because of skewness */
    data=location.dataname;
  var x y;
  title "Descriptive statistics"
```

works while

```
proc means
    min max median # used because of skewness;
    data=location.dataname;
  var x y;
  title "Descriptive statistics"
```

does not. To be honest, I much prefer putting comments before the statements because (a) it helps to read the comment before you read the code, and (b) you can only squeeze in a very short comment in the middle. So I would have said something like

```
# We use the median rather than the mean because of skewness;
proc means
    min max median 
    data=location.dataname;
  var x y;
  title "Descriptive statistics"
```

If you create new data with a data step or proc import, that has to go before any SAS procedures that use that data.

Titles are pretty flexible. I generally put them right before the run statement associated with a procedure, but you can put them earlier, even before the proc statement. So

```
proc print
    data=location.dataname;
  var x y;
  title "Listing of dataname";
run;
```

works as does

```
proc print
    data=location.dataname;
  title "Listing of dataname";
  var x y;
run;
```

or

```
title "Listing of dataname";
proc print
    data=location.dataname;
  var x y;
run;
```

The only place you can't put it is between two lines associated with a single statement. So

```
proc print
  title "Listing of dataname";
    data=location.dataname;
  var x y;
run;
```

would produce an error.

Since the order of statements has some flexibility, you should develop a system that works for you and follow it consistently. Or if you work for a large organization, see if your organization has a set of coding practices. Or you can adopt the coding practices of someone more experienced. I'd be flattered if you wrote your code the way I do, but it might be smarter to code like your boss does.
