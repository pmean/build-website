---
title: Date calculations in SPSS
source: http://www.pmean.com/99/dates.html
author: Steve Simon
date: 1999-08-18
categories:
- Blog post
tags:
- Being updated
- Data management
- SPSS software
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean
- I am trying to use dates in SPSS for certain calculations. For example
- I want to use a compute statement in SPSS to create a new variable called duration of injury (durinj). I know that I must subtract the date of injury from the date of interview. However
- when I do this
- I get a number in the millions. What am I doing wrong? -- Stumped Sharon*

<!---More--->

**Dear Stumped,**

Maybe your patients were waiting for their HMO to approve a visit to a
specialist.

**Short explanation**

**SPSS stores date/time values as the number of seconds since October
14
- 1582** (the start of the Gregorian calendar). If you specify only a
date and not a time
- then SPSS sets the time to midnight. **When you
subtract two dates
- you get the duration of injury in seconds**. Divide
by 86,400 (=24*60*60) to get the duration of injury in days. Divide
again by 7
- 30
- or 365.25 to get duration in weeks
- months
- or years.

**More details**

To see what SPSS is doing
- reformat the date as a number. You will see
something with a whole lot of digits. The date of 1/1/2000
- for example,
the date when all the antiquated software in the world will crash
- is
just a little more than 13 billion seconds to SPSS. Fortunately
- SPSS
allocates more than two digits here.

**To subtract one column of numbers from another in SPSS
- you select
TRANSFORM | COMPUTE from the menu**. Tell SPSS what name you want for
this difference in the TARGET VARIABLE field. Then select the first
variable and add it to the NUMERIC EXPRESSION field. Type in a minus
sign (or click on the minus button in the mini calculator). Finally,
select the second variable and add it to the NUMERIC EXPRESSION field
after the minus sign.

If you are using dates
- then this time interval is expressed in seconds.
Place parentheses around the entire expression. Then place a slash at
the end
- followed by 86400. **Dividing by 86400 changes the units from
seconds to days**.

**Example**

A common example using dates is computing length of stay in the
hospital.

<img src="http://www.pmean.com/02/images/dates01.gif">

The data shown above represents the birthdate (dob)
- date of admission
to the hospital (dateadm)
- and date of discharge from the hospital
(datedsc) for newobrn babies admitted with a diagnosis of dehydration.
To compute length of stay
- you need to select TRANSFORM | COMPUTE from
the SPSS menu.

<img src="http://www.pmean.com/02/images/dates02.gif">

The figure shown above is the dialog box that you get. Type in a new
name in the TARGET VARIABLE field. The formula for computing length of
stay is

(datedsc-dateadm)/(24*60*60)

which you should type into the NUMERIC EXPRESSION field. Then click on
the OK button.

<img src="http://www.pmean.com/02/images/dates03.gif">

This figure shown above indicates that you have successfully computed
length of stay as the difference between two date values.
Congratulations.

**Summary**

Stumped Sharon is having problems with some calculations using dates in
SPSS. Professor Mean explains that **SPSS stores data values as the
number of seconds since October 14
- 1582**. So when you calculate the
difference between two date values
- you see the number of seconds
between the two events. Divide this difference by 86,400 (=24 hours *
60 minutes * 60 seconds) to re-express this as days.

**Further reading**

Raynald Levesque has a nice web tutorial about dates in SPSS.

1.  **Dates Tutorial**. Raynald Levesque. Accessed September 7
- 2001.
    <http://pages.infinit.net/rlevesqu/LearningSyntax.htm#DateTutorial>

**Update**

I attended a web seminar on the new enhancements in version 13.0 of SPSS
software. The most notable change is in date calculations.

Date and time variables in SPSS have always been difficult. I have a web
page showing some of the [issues involved with computing the difference
between two dates](dates.html). SPSS has now added a Data and Time
Wizard. Select TRANSFORM | DATE/TIME from the menu. Here's the first
dialog box from that menu.

<img src="http://www.pmean.com/02/images/dates04.gif">

This is a very pleasant surprise
- since dates are a source of constant
confusion for me and for the people I work with. There were other
enhancements
- but to me this is the only important one.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/dates.html
[sim2]: http://www.pmean.com/original_site.html
