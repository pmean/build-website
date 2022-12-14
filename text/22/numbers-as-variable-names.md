---
title: "What it means when your variable names are numbers"
author: "Steve Simon"
date: "2022-12-12"
output:
  html_document: default
category: Blog post
tags: SAS software
source: new
---

More than one of my students had trouble importing a text file and ended up with numbers as variable names. Here's what went wrong.

<!---more--->

Take a look at this screenshot from some SAS output.

![Figure 1. SAS output from proc print](http://www.pmean.com/new-images/22/numbers-as-variable-names-01.png)

The variable names are numbers! What has happened is that the students used proc import (a good choice) to get data from a text file. What they did not know is that the default in proc import is to get the names for each variable from the first line of the file. For three of the files, the first line was actual data and not variable names. So SAS took that actual data (1, 1.4, 1.1, and 0.7) and used those as the variable names.

To avoid this, you must use the command

```{}
  getnames=no;
```

as part of proc import. Note that getnames is a subcommand within proc import. It starts on its own line and ends with a semicolon.