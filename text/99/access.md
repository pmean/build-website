---
title: Importing database files into SPSS
author: Steve Simon
source: http://www.pmean.com/99/access.html
date: 1999-08-18
categories: Blog post
tags: Data management, SPSS software
output: html_document
---

*Dear Professor Mean, How do I import database files into SPSS? I don't want to re-type everything, because there are 70,000 records. The data are stored in a Microsoft Access file. -- Vexed Vidya*

<!---More--->

SPSS can import data from a variety of sources using a system known as ODBC (Object Data Base Connectivity). **ODBC has links to just about every database that you would ever need to use**.

**Short explanation**

I'll show you an example using Microsoft Access, but this would work just as well on other database systems, such as Oracle and Informix. **To import data from Access, select FILE | DATABASE CAPTURE | NEW QUERY from the SPSS menu.**

**More details**

**When you import data using ODBC, SPSS asks you what type of data source you want to import from**. On my system, I have the ability to import Access, Excel, and FoxPro files. Through Microsoft Windows, I can add the capability of importing from other sources like Oracle or Informix if I needed these formats.

**I can also specify a particular location that I want to import from on a repeated basis**. In the example I show later, you will see that I have defined data sources labelled "ghstudy", Menninger", "patient complaints", "Santos" and "x". Providing a pre-specified location for my import is especially useful for databases that are being updated on a regular basis. If you want to define such a source, you can click on the ADD DATA SOURCE button, but I will not provide any details about it in this handout.

After you specify the type of data you want to import, SPSS will ask you for the following details.

-   Where the data are located
-   The table or tables in your database you want to import

You also have the following options

-   Specifying relationships between tables
-   Selecting a subset of your data
-   Renaming some of the variables
-   Saving the query for re-use

**Saving the query for re-use is another way of simplifying repeated imports from the same data set**. Saving the query will save not only the location of hte database you want to import from, but also the information about subsets, changes in variable names, etc.

**Example**

Here is an example of importing an Access database with data from a growth hormone study. **Select** **FILE | DATABASE CAPTURE | NEW QUERY from the SPSS menu** **FILE | DATABASE CAPTURE | NEW QUERY from the SPSS menu**.

![](../../../web/images/99/access01.gif)

**The dialog box shown above allows you to select your data source**. Click on ACCESS 97 and then click on the NEXT button.

![](../../../web/images/99/access02.gif)

**The dialog box shown above asks you for a location for your Access database.** Be sure that you select the correct drive and folder. Then click on the file, and click on the OK button.

**SPSS gives you a list of all available tables and queries within this database**.

![](../../../web/images/99/access03.gif)

**The dialog box shown above gives you a list of all available tables and queries within this database**. Drag the table from the AVAILABLE TABLES field into the RETRIEVE FIELDS IN THIS ORDER field. If you want data from more than one table/query, repeat this process. If there are some variables you do not want to import, drag them out of the RETREIVE FIELDS IN THIS ORDER field.

**If you have a simple import, you can click on the FINISH button now**. If you click on the NEXT button instead, SPSS will give you some options to fine tune your import. You can

-   Specifying relationships between tables
-   Selecting a subset of your data
-   Renaming some of the variables
-   Saving the query for re-use

**Saving the query for re-use is another way of simplifying repeated imports from the same data set**. Saving the query will save not only the location of hte database you want to import from, but also the information about subsets, changes in variable names, etc.

**What should I do if Access files are not listed as a data source?**

On some computers, Access files are not listed as a data source in the database capture wizard dialog box. An example of this appears below.

![](../../../web/images/99/access04.gif)

In order to use these Microsoft Access files, you need to click on the ADD DATA SOURCE button. This calls up the following dialog box.

![](../../../web/images/99/access05.gif)

In the ODBC DATA SOURCE ADMINISTRATOR dialog box, you want to add a new data source. Click on the ADD button. You also have the option of removing a data format you no longer need (REMOVE button), or changing some of the options in a data format you already have (CONFIGURE button). When you click on the ADD button, you get the following dialog box.

![](../../../web/images/99/access06.gif)

In the CREATE A NEW DATA SOURCE dialog box, you have a list of ODBC data sources which you can add to your system. Highlight the driver you want (in this case the Access driver) and click on the FINISH button.

![](../../../web/images/99/access07.gif)

As the dialog box above shows, you're not quite finished yet. Tell the system a name and description for this format. A good name would be "Access files" and a good description would be "Microsoft Access 97 files (*.mdb)". If you repeatedly use the same database, you could even have the system select this database automatically (SELECT button). It's a good idea to set up a general driver first, so add a name and description and then click on the OK button.

![](../../../web/images/99/access08.gif)

Now your dialog box has the format you need. Click on the OK button to finish up. This format will appear every time now when you run a database capture in SPSS.

**What should I do if I can't find the driver for Microsoft Access in the CREATE NEW DATA SOURCE dialog box?**

If you are still having problems please let me know. I can suggest several options that might work.

1.  Call our tech support line and ask for help. Explain that your system does not have the ODBC drivers for Microsoft Access installed.

2.  The CD ROM for SPSS has a special folder called ODBC Drivers. Find the file dataacc.exe and run it. I have this CD ROM and will be willing to help you get it running.

3.  You can also go to <http://www.microsoft.com/data/>, the Microsoft Universal Data Access Web Site. Download the latest version of MDAC (Microsoft Data Access Components). I have not tried this, so I don't know how easy it is to install.

4.  You might also find MDAC on the Microsoft Access or Microsoft Office CD-ROM.

There are some more details in some [email messages](../01/mdac.html) that appeared on the SPSSX-L listserver on September 10-11, 2000.

**What if SPSS asks for a password?**

On some systems, SPSS will ask you for a password, even when the database you are trying to import does not have a password. There are several ways to work around this problem.

1. Configure a specific data source for your particular database. In the ODBC MICROSOFT ACCESS 97 dialog box, there is a SELECT button. Click on this button and tell SPSS where to find the particular database you are working with.

2. You can also use SPSS syntax to open the database. Here is an example.

```{}
GET DATA
/TYPE = ODBC
/CONNECT = "DSN=MS Access Database;"
"DBQ=C:/Windows\\Desktop\\test.mdb;"
/SQL = "SELECT * FROM [YOUR_TABLE_NAME]".
CACHE.
EXECUTE.
```

The above code uses a database language known as SQL. It is a very easy and very powerful language. Here is an example of using SQL to join two tables, rename some variables, and sort the results.

```{}
/SQL = "SELECT "
"T1.[Employee ID] AS idnum, "
"T2.[FullName] AS empname "
"FROM Table1 as T1 INNER JOIN Table2 AS T2 "
"ON T1.[Employee ID] = T2.[Employee ID] "
"ORDER BY T2.[LastName], T2.[FirstName]"
```

The information described above is taken from two web sites: the SPSS AnswerNet and Raynald Levesque's SPSS Syntax web page.

**Further reading**

+ **SPSS AnswerNet.** SPSS, Inc. Accessed June 25, 2002. *The SPSS AnswerNet allows you to search the same SPSS Technical Support database we use to locate solutions to problems.** <http://www.spss.com/tech/answer/index.cfm>
    
+ **SPSS syntax is a must!** Levesque, Raynald. Accessed on June
    25, 2002. *Don't satisfy yourself with the Graphic User Interface (GUI)! The GUI is fine (I use it every day); however, using syntax in addition of the GUI can easily increase productivity by a factor of 5 to 10 times for simple jobs. The increase can easily be 50 times or more for larger, complex jobs. Furthermore some of SPSS's features are only available through syntax. As a "bonus", syntax files work on all versions of SPSS, not just on Windows. There is something for everybody in the sample syntax's included here: some do simple things, are easy to understand and have a lot of comments; some do complex things and have either no comments or a lot of comments; others fall between these two extremes. Suggestions and code contributions are welcomed. Share what you know! Learn what you don't!* <http://pages.infinit.net/rlevesqu/SampleSyntax.htm>

**Summary**

Vexed Vidya wants to i**mport a Microsoft Access table into SPSS**. To import Access or other database formats, you use a system called ODBC. **Select FILE | DATABASE CAPTURE | NEW QUERY from the SPSS menu**. You will then specify where the data are located and the table or tables in your database you want to import.

