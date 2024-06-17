---
title: Spreadsheet or Database?
source: http://www.pmean.com/00/sheet.html
author: Steve Simon
date: 2000-01-28
categories:
- Blog post
tags:
- Ask Professor Mean
- Data management
output: html_document
page_update: partial
---
*Dear Professor Mean, I am not sure whether I should use a database or a spreadsheet to enter my data?*

**For data entry, there are several advantages for a database**. Databases easily allow you to implement **quality checks**. They also allow you to easily **integrate data from multiple sources**. Finally, they are more effective in **handling very large data sets.**

**On the other hand, spreadsheets are faster to set up and allow easier copying and duplication for data with repetitive patterns**. Before you choose, make sure that the statistical software can import data from your database or spreadsheet.

**Advantages of a database**

**First, databases allow you to implement quality checks in the data**. For example, one of your variables might be gender. It might be coded 1=Male, 2=Female, 9=Unknown (though if gender is unknown, you might want to look at the credentials of the doctor doing the examination). With a database, you could set up data entry in that field so that it would beep anytime you tried to enter something other than a 1, 2, or a 9.

Another quality check found in databases is insuring that the same id code is not assigned to two different subjects. Database specialists refer to this as checking for unique primary keys.

It's also possible to program a database to check for consistencies in dates. If the birth date is in 1994, for example, and the examination date is in 1987, then either your data are in error or you have an extremely far-sighted pre-natal care program.

Yet another example is checking the gender or age of the subject before allowing certain data to be entered. Male subjects, for example, would not normally have a hysterectomy in their medical history. Five year olds are rarely married or widowed. The range of quality checks you can include in a database is limited only by your imagination.

**Second, a database is effective at integrating data coming from a variety of sources**. For example, you might have data coming from a laboratory, a questionnaire, and from the medical records. A database makes it easy to properly link the information from all three sources.

Another example of where a database is extremely useful is in a multi-center clinical trial. The database offers a standard way for data entry that helps avoid the inconsistencies that can plague such studies.

Of course, if you have a data set so complex as to take information from three different sources, then you should definitely consult an expert early in the design of your study. Databases are nice, but they are no substitute for careful planning.

**Third, a database is more effective at handling very large data sets**. Unlike a spreadsheet, the entire data set does not have to fit into computer memory. Of course, this is a factor only when the data set on the order of tens of thousands of records or more. If your data set is smaller than this then fitting all of the data into computer memory is unlikely to be a problem.

**Advantages of a spreadsheet**

**On the other hand, spreadsheets can be up and ready for data entry faster than databases**. The extra time required by a database might be beneficial, but for a simple data entry situation, it might just as easily be overkill.

**Spreadsheets also are more efficient at copying and duplicating blocks of information**. This can be a time-saver for data sets with repetitive patterns, such as multi-factorial experiments.

**Other considerations**

**Before you choose, check to make sure that the statistics software can import your version of the spreadsheet or database**. SPSS for Windows, for example, can import Excel and Lotus spreadsheets, dBase format databases like FoxPro, as well as any database or spreadsheet which supports the ODBC (Open Data Base Connectivity) standard, like Access.

Before you make your choice, be sure to factor in any human considerations. **If the person doing data entry is much more comfortable with a spreadsheet than a database (or vice versa), that might outweigh some of the computer efficiencies**. On the other hand, keep in mind that software in general, and database software in particular, is getting easier to use. Don't let lack of experience keep you from trying a database. It's easier than you think.

**Summary**

In summary, databases allow for better error checking, for better integration of data from multiple sources, and for better handling of very large files. Spreadsheets are faster to get up and running, which can be an advantage for small tasks. Spreadsheets also have an advantage when there are repetitive patterns in the data.

Which to choose? It may come down to how large and complex your data set is. **The bigger and messier the data, the more a database can help**.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/sheet.html
[sim2]: http://www.pmean.com/original_site.html
