---
title: "What should go into a data codebook"
author: "Steve Simon"
source: "http://blog.pmean.com/data-codebook/"
date: "2014-05-31"
categories:
- Blog post
tags:
- Data management
output: html_document
page_update: complete
---

Before you start your data entry, you should create a data codebook. If
you don't have a data codebook when you hand your data over to someone
else, take the time to create one for their benefit and yours. The data
codebook contains a description of your data set. There's no standard
form for a data codebook, and what you describe may depend on a variety
of factors, such as the complexity of your data set, the number of
people involved in data collection and data entry, and the number of
people that you are likely to share your data with. Here are some of the
elements that you should think about putting in a data
codebook.

<!---More--->

The data codebook should have some general information about the data
set as a whole. This might include:

* A brief descriptive title for your project
* The purpose of the data collection
* The name of the person who collected the data
* The date(s) when the data was collected
* The name of the person who entered the data into the computer
* The date the data was entered into the computer

In a laboratory experiment, you might want to document the conditions
under which the experiment was run.

The data codebook, more importantly, documents information about each
variable in your data set (each column). This might include:

* the name you used for this column of data
* a longer description of this variable with no acronyms or
abbreviations
* the units of measurement (if applicable)
* the range of possible values
* explanation for any numeric codes,
* ESPECIALLY any codes for missing data

If there are several reasons why a measurement might be missing, you
should create SEVERAL missing value codes and document what each code
represents. This is important because the statistical handling of
missing values is strongly dependent on the reason the value is missing.

If you enter your data into a text file, the data codebook can document
the structure of your file. This would be the location of each variable
(which column the variable starts in and which column it ends in) for a
fixed width text file. It would be the delimiter that separates
individual data values in a delimited data file. If strings are
surrounded by quote marks, the codebook would note this, as well as
whether they were single (') or double (") quotes.

The data codebook is also a record of any choices that you make during
data entry that you need to remember throughout the entire data entry
process. If, for example, you are typing in the date of a visit to the
emergency room, what day do you assign to a patient that arrives exactly
at midnight? There's nothing wrong with using the same date that a
11:59pm visitor would have, and there's nothing wrong with putting a
midnight visitor on the following day (see [commentary on
this](http://www.nist.gov/pml/div688/times.cfm#midnight) at the National
Institute for Standards and Technology).? What does matter is that once
you decide how to resolve this ambiguous data value, you need to
document your choice so that every future value that is ambiguous in the
same way is handled in the same way.

There are some web pages that describe what should go into a codebook,
though the recommendations vary widely.

*
<http://www.icpsr.umich.edu/icpsrweb/ICPSR/support/faqs/2006/01/what-is-codebook>*
<http://dss.princeton.edu/online_help/analysis/codebook.htm>
* <http://www.sscnet.ucla.edu/issr/da/tutor/tutcode.htm>

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/data-codebook/
[sim2]: http://blog.pmean.com