---
title: "Reading text data into SAS"
author: "Steve Simon"
date: "2018-02-09"
source: "http://blog.pmean.com/text-data-into-sas/"
categories: Blog post
tags:
- SAS software
output: html_document
page_update: partial
---

Some of my students in my Introduction to SAS class are having trouble
with a particular data set. Here are some screen shots showing how SAS
can read this file in several different ways.

<!---More--->

There are four videos that you can listen to instead of reading this
handout.

-   <http://www.pmean.com/18/images/backpain01/backpain_import_part1.mp4>
-   <http://www.pmean.com/18/images/backpain01/backpain_import_part2.mp4>
-   <http://www.pmean.com/18/images/backpain01/backpain_import_part3.mp4>
-   <http://www.pmean.com/18/images/backpain01/backpain_import_part4.mp4>

Here is what SAS looks like when you fire it up.

![What the SAS screen looks like when you first open
it](http://www.pmean.com/18/images/backpain01/01-sas-screen-at-opening.png)

The default arrangement is atrocious in my opinion. There may be a way
to change this, but I don't know how.

![SAS screen with a blank editor
window](http://www.pmean.com/18/images/backpain01/02-sas-screen-blank-editor-window.png)

Here, I've ditched the useless left panel and maximized the EDITOR
window. Load the SAS program backpain\_import.sas.

    libname MEDB5507
      "c:/Users/simons/Dropbox/u/DBHI/classes/2018a_sas/dat";
    filename backpain
      "c:/Users/simons/Dropbox/u/DBHI/classes/2018a_sas/dat/backpain.txt";
    data MEDB5507.backpain_v01 replace;
      infile backpain delimiter='09'x firstobs=2 ;
      input
        Subject
        Group $
        Match
        Age
        Height
        Weight
        Event $
        Years /* also try Years $ */
        WeekDist
        Dominant $
        DF_Iliopsoas
        DF_Rectus
        DF_ITBTFL
        DF_Hamstring
        DL_Iliopsoas
        DL_Rectus
        DL_ITBTFL
        DL_Hamstring
        NF_Iliopsoas
        NF_Rectus
        NF_ITBTFL
        NF_Hamstring
        NL_Iliopsoas
        NL_Rectus
        NL_ITBTFL
        NL_Hamstring
    ;
    run;
    proc print
        data=MEDB5507.backpain_v01;
      var Subject Group Years;
      title "Printout of first import attempt";
    run;

Let's take this apart, line by line.

    libname MEDB5507
      "c:/Users/simons/Dropbox/u/DBHI/classes/2018a_sas/dat";

The LIBNAME statement takes the long and ugly path where I store my
files and assigns it the nickname "MEDB5507<U+2033>. Your LIBNAME statement, of
course, will look different, and you may prefer a different nickname.

    filename backpain
      "c:/Users/simons/Dropbox/u/DBHI/classes/2018a_sas/dat/backpain.txt";

The FILENAME statement takes the full path and filename for the location
of the file we want to use repeatedly and assigns it the nickname
backpain.

    data MEDB5507.backpain_v01 replace;
      infile backpain delimiter='09'x firstobs=2 ;

The DATA statement has a two part name. The part before the dot tells
SAS to use the folder associated with the nickname MEDB5507. The part
after the dot gives the name of the file.

The REPLACE option tells SAS that if it encounters an existing file with
the same name, it's okay to overwrite it with the new file.

      infile backpain delimiter='09'x firstobs=2 ;

The INFILE statement tells SAS where to find the input. Using the
backpain nickname that we created earlier with the FILENAME statement
shortens our code a bit, You could have used LIBNAME
"C:/YOUR\_VERY\_LONG\_PATH/FILENAME.TXT" and that would have worked
also.

The DELIMITER option tells SAS that this is a tab delimited file. 09 is
hexadecimal for the tab character. Knowing what delimiter to use is part
of the challenge of reading in text data.

The FIRSTOBS option tells SAS to start on the second row and ignore what
appears on the first row.

![Website list of backpain
data](http://www.pmean.com/18/images/backpain01/10-website-listing-of-backpain-data.png)

Here's what the file looks like, if you don't remember. This listing is
a bit difficult to read because of the line wrapping.

![Website list of backpain data, lower
half](http://www.pmean.com/18/images/backpain01/11-website-listing-of-backpain-data-lower-half.png)

Scroll down to the bottom and you'll notice a handful of NA values.
These are missing value codes using the R convention, and not the SAS
convention. We'll find out in just a minute that these NA values are the
cause of all our indigestion.

      input
        Subject
        Group $
        Match
        Age
        Height
        Weight
        Event $
        Years /* also try Years $ */
        WeekDist
        Dominant $
        DF_Iliopsoas
        DF_Rectus
        DF_ITBTFL
        DF_Hamstring
        DL_Iliopsoas
        DL_Rectus
        DL_ITBTFL
        DL_Hamstring
        NF_Iliopsoas
        NF_Rectus
        NF_ITBTFL
        NF_Hamstring
        NL_Iliopsoas
        NL_Rectus
        NL_ITBTFL
        NL_Hamstring
    ;

Back to the code, when you are reading in data using this approach, you
have to list the variable names. This is a big difference between this
approach and PROC IMPORT (which we will see later). PROC IMPORT can get
your variable names from the first line of the file.

For any alphanumeric data, such as the Group variable, you have to warn
SAS by placing a dollar sign after the variable.

Years is a numeric variable, or at least that's what SAS thinks. We'll
come back to this later and warn SAS that Years is not numeric to get
quite different results.

    proc print
        data=MEDB5507.backpain_v01;
      var Subject Group Years;
      title "Printout of first import attempt";
    run;

I always like to print all of my data after reading it in, but to make
things easier, I will only print three of the variables: Subject, Group,
and Years.

![LOG window after running the first
part](http://www.pmean.com/18/images/backpain01/16-log-window.png)

If you run the first part of the program, this is what you log window
looks like. Please note that SAS will put you at the bottom of the log
file, but you should always start at the very top when reviewing the log
window.

Page down to see the Invalid data note.

     NOTE: Invalid data for Years in line 24 31-32.
     RULE:     ----+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8----+----9----+----0                      

     24  CHAR  23.Sedentary.5.31.173.75.None.NA.0.Right.-7.-8.-8.56.30.26.18.98.-6.-4.-8.56.28.32.24.104 89
         ZONE  33056666767703033033303304666044030566670230230230330330330330330230230230330330330330333
         NUMR  2393545E41299593191739759EFE59E1909297849D79D89D89569309269189989D69D49D89569289329249104
     Subject=23 Group=Sedentar Match=5 Age=31 Height=173 Weight=75 Event=None Years=. WeekDist=0 Dominant=Right DF_Iliopsoas=-7
     DF_Rectus=-8 DF_ITBTFL=-8 DF_Hamstring=56 DL_Iliopsoas=30 DL_Rectus=26 DL_ITBTFL=18 DL_Hamstring=98 NF_Iliopsoas=-6 NF_Rectus=-4
     NF_ITBTFL=-8 NF_Hamstring=56 NL_Iliopsoas=28 NL_Rectus=32 NL_ITBTFL=24 NL_Hamstring=104 _ERROR_=1 _N_=23

It occurs on the 24th line of data, the first line with the R code of NA
for missing. There are several more of these.

![OUTPUT window after the running the first
part](http://www.pmean.com/18/images/backpain01/18-output-window.png)

These INVALID DATA notes did not prevent your program from running. The
output from PROC PRINT looks very nice.

![OUTPUT window, bottom
half](http://www.pmean.com/18/images/backpain01/19-output-window-bottom-half.png)

Scroll down to the very bottom and notice that the 23rd subject and all
the later subjects have had their NA values converted to a dot, the SAS
code for a missing value.

You can avoid all those irritating "Invalid data" messages fairly
easily.

    data MEDB5507.backpain_v02 replace;
      infile backpain delimiter='09'x firstobs=2 ;
      input
        Subject
        Group $
        Match
        Age
        Height
        Weight
        Event $
        Years $ 
        WeekDist
        Dominant $
        DF_Iliopsoas
        DF_Rectus
        DF_ITBTFL
        DF_Hamstring
        DL_Iliopsoas
        DL_Rectus
        DL_ITBTFL
        DL_Hamstring
        NF_Iliopsoas
        NF_Rectus
        NF_ITBTFL
        NF_Hamstring
        NL_Iliopsoas
        NL_Rectus
        NL_ITBTFL
        NL_Hamstring
      ;
      if (Years="NA") then Years=".";
      Years_num=input(Years, 3.0);
    run;
    proc print
        data=MEDB5507.backpain_v02;
      var Subject Group Years Years_num;
      title "Printout of second import";

Notice the very small change in the input statement.

        Years $

Since Years is a mixture of numbers and NA codes, you can read it in as
alphanumeric. That will avoid the Invalid data messages.

      if (Years="NA") then Years=".";

Then convert the missing code in R (NA) to the missing code in SAS (.).

      Years_num=input(Years, 3.0);

Then use the input function to convert to numeric. The second argument,
3.0, means up to 3 digits with no decimal places.

Now let's see what happens when you try to read in the data set using
PROC IMPORT.

    proc import
     datafile=backpain
     dbms=dlm
     out=MEDB5507.backpain_v03 replace;
     delimiter='09'x;
     getnames=yes;
    run;
    proc print
     data=MEDB5507.backpain_v03;
     var Subject Group Years;
     title "Printout of third import";
    run;

This is the code. Notice how short it is, mostly because you don't have
to tell SAS what the names of the variables are. SAS figures the names
out from the first line of the data file (thanks to the getnames=yes
option). You also don't have to tell SAS which variables are numeric and
which are alphanumeric.

The LOG window, however, looks quite a bit different than the code.

    148 /**********************************************************************
    149 * PRODUCT: SAS
    150 * VERSION: 9.4
    151 * CREATOR: External File Interface
    152 * DATE: 14FEB18
    153 * DESC: Generated SAS Datastep Code
    154 * TEMPLATE SOURCE: (None Specified.)
    155 ***********************************************************************/

    156 data MEDB5507.BACKPAIN_V03 ;
    157 %let _EFIERR_ = 0; /* set the ERROR detection macro variable */
    158 infile BACKPAIN delimiter='09'x MISSOVER DSD firstobs=2 ;
    159 informat Subject best32. ;
    160 informat Group $6. ;
    161 informat Match best32. ;
    162 informat Age best32. ;
    163 informat Height best32. ;
    164 informat Weight best32. ;
    165 informat Event $6. ;
    166 informat Years best32. ;
    167 informat WeekDist best32. ;
    168 informat Dominant $5. ;
    169 informat DF_Iliopsoas best32. ;
    170 informat DF_Rectus best32. ;
    171 informat DF_ITBTFL best32. ;
    172 informat DF_Hamstring best32. ;
    173 informat DL_Iliopsoas best32. ;
    174 informat DL_Rectus best32. ;
    175 informat DL_ITBTFL best32. ;
    176 informat DL_Hamstring best32. ;
    177 informat NF_Iliopsoas best32. ;
    178 informat NF_Rectus best32. ;
    179 informat NF_ITBTFL best32. ;
    180 informat NF_Hamstring best32. ;
    181 informat NL_Iliopsoas best32. ;
    182 informat NL_Rectus best32. ;
    183 informat NL_ITBTFL best32. ;
    184 informat NL_Hamstring best32. ;
    185 format Subject best12. ;
    186 format Group $6. ;
    187 format Match best12. ;
    188 format Age best12. ;
    189 format Height best12. ;
    190 format Weight best12. ;
    191 format Event $6. ;
    192 format Years best12. ;
    193 format WeekDist best12. ;
    194 format Dominant $5. ;
    195 format DF_Iliopsoas best12. ;
    196 format DF_Rectus best12. ;
    197 format DF_ITBTFL best12. ;
    198 format DF_Hamstring best12. ;
    199 format DL_Iliopsoas best12. ;
    200 format DL_Rectus best12. ;
    201 format DL_ITBTFL best12. ;
    202 format DL_Hamstring best12. ;
    203 format NF_Iliopsoas best12. ;
    204 format NF_Rectus best12. ;
    205 format NF_ITBTFL best12. ;
    206 format NF_Hamstring best12. ;
    207 format NL_Iliopsoas best12. ;
    208 format NL_Rectus best12. ;
    209 format NL_ITBTFL best12. ;
    210 format NL_Hamstring best12. ;
    211 input
    212 Subject
    213 Group $
    214 Match
    215 Age
    216 Height
    217 Weight
    218 Event $
    219 Years
    220 WeekDist
    221 Dominant $
    222 DF_Iliopsoas
    223 DF_Rectus
    224 DF_ITBTFL
    225 DF_Hamstring
    226 DL_Iliopsoas
    227 DL_Rectus
    228 DL_ITBTFL
    229 DL_Hamstring
    230 NF_Iliopsoas
    231 NF_Rectus
    232 NF_ITBTFL
    233 NF_Hamstring
    234 NL_Iliopsoas
    235 NL_Rectus
    236 NL_ITBTFL
    237 NL_Hamstring
    238 ;
    239 if _ERROR_ then call symputx('_EFIERR_',1); /* set ERROR detection macro variable */
    240 run;

This is the code that PROC IMPORT generated.

