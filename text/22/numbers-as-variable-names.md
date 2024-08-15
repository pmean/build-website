---
title: "What it means when your variable names are numbers"
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

More than one of my students had trouble importing a text file and ended up with numbers as variable names. Here's what went wrong.

<!---more--->

Take a look at this screenshot from some SAS output.

![Figure 1. SAS output from proc print](http://www.pmean.com/new-images/22/numbers-as-variable-names-01.png)

The variable names are numbers! What has happened is that the students used proc import (a good choice) to get data from a text file. What they did not know is that the default in proc import is to get the names for each variable from the first line of the file. For three of the files, the first line was actual data and not variable names. So SAS took that actual data (1, 1.4, 1.1, and 0.7) and used those as the variable names.

To avoid this, you must use the command

```
  getnames=no;
```

as part of proc import. Note that getnames is a subcommand within proc import. It starts on its own line and ends with a semicolon.

Interestingly, you can have the reverse problem. If your data has variable names in the first line of data and you don't point this out to SAS, you can get into a bit of trouble. SAS will treat those names as data, and if it is expecting numbers for some or all of your variables, it will convert those names to missing values. This adds an extra and unneeded row to your data. It's not a fatal error, but you should avoid this problem if you can.

If you have variable names in the first row of data, I would recommend that you switch from reading your data in as part of a data step to using proc import to read your data. If you use proc import, be sure to use the command

```
  getnames=yes;
```

You can instead add the option

```
  firstobs=2
```

to your infile statement to skip names in the first row of your data file.
