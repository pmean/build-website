---
title: "Mixed up variable names in SAS"
author: "Steve Simon"
source: "http://blog.pmean.com/mixed-up-names/"
date: "2018-02-26"
categories: Blog post
tags:
- SAS software
output: html_document
page_update: partial
---

Some of my students in the Introduction to SAS class were having trouble
reading in a tab-delimited text file, and it's not too surprising,
because some of the student in the Introduction to R class were having
problems with the same file. Here's some details about the data set,
what problems it caused, and a couple of ways that you could fix
it.

<!---More--->

The data file is a freely available data set on the DASL (Data and Story
Library) website,

[lib.stat.cmu.edu/DASL/Datafiles/homedat.html](http://lib.stat.cmu.edu/DASL/Datafiles/homedat.html)

![Screenshot of the website
lib.stat.cmu.edu/DASL/Datafiles/homedat.html](http://www.pmean.com/18/images/housing_import01.png)

Notice how this website mixes the data in with the description of the
bad. This is a bad practice, for a variety of reasons, but for a data
set that is free, you shouldn't complain. The easiest way to read this
into SAS is to cut-and-paste the text file into a text editor like
notepad and save the file in your data subdirectory.

![Screenshot of the notepad editor with the data cut-and-pasted from the
website](http://www.pmean.com/18/images/housing_import02.png)

There are a couple of subtle things that you should notice about this
text file. First, notice how nicely aligned all the data values are. The
second, third, and fourth columns of data, for example, always starts
exactly in columns 9, 17, and 25. The evenness and the fact that the
column starts are exactly 8 characters apart is a pretty good hint that
this is a tab delimited file. It could be a space delimited file, with
multiple spaces instead of a single tab, though, so you should
investigate further. One additional hint, which I can't show with a
static screenshot is how the cursor will tend to jump as you move left
and right. You wouldn't see that sort of jump with a space delimited
file.

A second thing to notice is that there is a blank link between the
variable names and the data. This makes the file easier to read on the
screen, but is a minor problem for SAS. I'll leave that blank line in
for now.

A third thing to notice, and this is super subtle, is that the variable
names do not line up with the data beneath them. This is a hint that the
first row is NOT tab delimited, but space delimited. You can see that by
scrolling left and right in the very first line of the file. No jumping!
This causes all sorts of problems.

So here is the SAS code that I wrote to read in the file.

    * housing_import.sas;
    * written by Steve Simon;
    * February 26, 2018;

    libname MEDB5507
      "c:/Users/simons/Dropbox/u/DBHI/classes/2018a_sas/dat";
    filename housing
      "c:/Users/simons/Dropbox/u/DBHI/classes/2018a_sas/dat/housing.txt";
    proc import
        datafile=housing
        dbms=dlm
      out=MEDB5507.housing_v01 replace;
      delimiter='09'x;
      getnames=yes;
    run;
    proc print
        data=MEDB5507.housing_v01 (obs=10);
      title "Printout of housing_v01";
    run;

When you run the code, you get a strange warning.

    Number of names found is less than number of variables found.
    Name PRICE  SQFT  AGE FEATS   NE    CUST     COR         TAX truncated to
    PRICE__SQFT__AGE_FEATS___NE____C.
    Problems were detected with provided names.  See LOG.

There are two warnings actually. The first is that the number of names
at the top of the file does not match the number of variables found in
the data below. The second warning is that the name of the first
variable had to be truncated.

SAS is having problems with this file because it can't separate the
eight names found in the first line of code. Those eight names were
separated by one or more blanks, and SAS was expecting (as you told it
by the delimiter='09'x statement) that those names would be separated by
tabs.

![Screenshot of the output from PROC PRINT, results even worse than
before](http://www.pmean.com/18/images/housing_import03.png)

As you can see from PROC PRINT, the names were mucked up, and first line
of data is all missing values, but everything else looks just fine.

There are several ways to fix this. One way that DOESN'T work is to
change from a tab delimiter to a space delimiter. When you do that, the
variable names come in just fine, but the data is mucked up. You see
this with a warning.

    Number of names found is greater than number of variables found.
    Number of names found is greater than number of variables found.

The results from PROC PRINT show that you have just jumped from the
frying pan into the fire.

![Screenshot of the output from PROC PRINT, results not so
good](http://www.pmean.com/18/images/housing_import04.png)

The first way that does work is to patch up the file after the fact with
the RENAME command.\
Here's the SAS code to do this.

    data MEDB5507.housing_v01a;
      set MEDB5507.housing_v01 (
        firstobs=2
        rename=(
          PRICE__SQFT__AGE_FEATS___NE____C=PRICE
          VAR2=SQFT
          VAR3=AGE
          VAR4=FEATS
          VAR5=NE
          VAR6=CUST
          VAR7=COR
          VAR8=TAX
        )
      );
    run;
    proc print
        data=MEDB5507.housing_v01a (obs=18);
      title "Printout of housing_v01a";
    run;

![Screenshot of the output from PROC PRINT, much better this
time](http://www.pmean.com/18/images/housing_import05.png)

You still have to fix the missing value codes, which use an asterisk
rather than a dot, but that's something I showed in an earlier file.

You can also skip the first two lines of the file and specify the
variable names with an INPUT statement.

    data MEDB5507.housing_v03 replace;
      infile housing delimiter='09'x firstobs=2 ;
      input
        price
        sqft
        age $
        feats
        ne
        cust
        cor
        tax $
    ;
    run;
    proc print
        data=MEDB5507.housing_v03 (obs=18);
      title "Printout of housing_v03";
    run;

A third way is to retype the first line of the file using the tab key
rather than the space bar between variable names.

![Text file, shown in notepad, with the first line
re-typed](http://www.pmean.com/18/images/housing_import06.png)

Here's the SAS code for reading in the recoded file.

    proc import
        datafile=housing_recoded
        dbms=dlm
      out=MEDB5507.housing_v04 replace;
      delimiter='09'x;
      getnames=yes;
    run;
    proc print
        data=MEDB5507.housing_v04 (obs=18);
      title "Printout of housing_v01";
    run;

AS you can see, there is more than one way to skin a cat.


