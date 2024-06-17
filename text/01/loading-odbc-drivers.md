---
title: Loading ODBC drivers from the Microsoft Data Access Pack
author: Steve Simon
date: 2001-01-24
categories:
- Blog post
tags:
- Being updated
- Data management
- SPSS software
output: html_document
page_update: partial
---

This page is obsolete, but I am keeping it here for sentimental reasons.

Here are excerpts from some emails posted to the SPSSX-L listserver on September 10-11, 2000. These emails describe how to load special drivers for ODBC - especially the driver for Access 97.

#### First message

If the application is ODBC compliant - which would include most modern database programs - then you can use the SPSS Data Driver 32. 

The SPSS Data Driver allows ODBC compliant applications to read SPSS system files directly - via ODBC. 

The SPSS Data Driver 32 is included in the SPSS Data Access Pack on the SPSS 10.0 CD-ROM. To install the driver - insert your SPSS CD-ROM. 

The autoplay screen should appear. Click on Install SPSS Data Access Pack. At the first screen - click Next - and then accept the license agreement. 

At the next screen- you can select the location where you want the files to be installed. Then click Next.

At the Select Components screen - check the box next to SPSS Data Driver 32. Then - click Next and follow the remaining steps in the wizard. 

This will install the SPSS Data Driver into your ODBC Data Sources Control panel.

To configure the driver - go to Start->Settings->Control Panel.

Double click on Data Sources (ODBC). On the User DSN tab - click Add.

Scroll down until you see SPSS Data Access 32 (*.sav) - and select it.

Click Finish. A small dialog box will appear - named Setup. 

In the box next to Data Source: type in a name for the Data Source. In the box next to Database: type in the full path to the directory where your SPSS data file is located. Then click OK. Click OK again on the Database Administrator. When you use the data source within your  application - the driver will display each SPSS data file in the directory as a separate table.

In general - ODBC can only read in 255 variables at a time.

#### Second message

On the SPSS 9.0 CD-ROM - the Microsoft Data Access Pack (which includes the Microsoft Access ODBC Driver) is in the folder called "ODBC Drivers". Double click on the file called dataacc.exe to install.

You can also download the Microsoft Data Access Pack directly from Microsoft's webpage at [www.microsoft.com/data](http://www.microsoft.com/data). They call it the Microsoft Data Access Components - or MDAC.

#### Third message

I also found a copy on the Access 97 CD. I knew it had to be somewhere on the SPSS CD but after searching the SPSS web site to no avail I then tried Microsoft's site (no luck) and then the Access disc. I told it to reload Access using the Add/Remove feature and found the driver that way. The trick seems to be know what to call something (like "data access pack") when roaming around discs & web sites.

#### Fourth message

You need the driver for the application that contains the data. Since the data are in Access 97 - you will need the Access ODBC driver. (If the data were in SPSS - you would need the SPSS ODBC driver.) Microsoft ODBC drivers are located in the system subdirectory of your windows directory. The file names begin with ODBC and have a .DLL extension. If they have been wiped out or corrupted, you can reinstall them by reinstalling Access. The following technical note contains related information that may be useful.

+ [support.microsoft.com/support/kb/articles/Q237/5/75.ASP](http://support.microsoft.com/support/kb/articles/Q237/5/75.ASP).

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/01/mdac.html
[sim2]: http://www.pmean.com/original_site.html
