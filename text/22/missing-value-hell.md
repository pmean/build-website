---
title: "Missing value hell"
author: "Steve Simon"
date: "2022-10-23"
output:
  word_document: default
  html_document: default
categories: Blog post
tags:
- Data management
source: new
page_update: complete
---

There's no mincing words here. Missing values are hell for every statistician. Here are a few examples.

### The null license plate

Joseph Tartaro thought it would be funny to get the following California vanity license plate.

![Figure 1. Null license plate](http://www.pmean.com/new-images/22/missing-value-hell-01.png)

The joke is that NULL is the missing value code used by many databases. But, as described in Wired Magazine, his life turned into a living hell. Police officers will always write the license plate number of any car that was caught speeding or parking illegally. Well, almost always. In the very rare cases that the officer forgets, this is converted to a NULL value in the database. This is then matched to Joseph Tartaro and the ticket was sent his way.

He got hundreds of tickets worth tens of thousands of dollars. He got tickets from all over California--Corona, Fresno, Rancho Cucamonga--mostly to places he'd never been. These tickets were written for all sorts of different automobiles that he had never driven--Mercedes, Toyotas. You name it, he was driving it. This was not an easy problem to fix.

This is caused by a programming error. The four letters N-U-L-L are not the same thing as the internal code of Null in a database. But a programmer writes a statement like

```
if var="NULL" then ...
```

and everything goes to hell.

### The \$9,700 bargain

A while back I was browsing through the geekier parts of Office Max and noticed the following tag.

![Figure 2. Printer pricing tag](http://www.pmean.com/new-images/22/missing-value-hell-02.jpg)

The computer database used the common practice of using all 9's to denote a missing value. That's fine, but then whoever programmed the calculation of how much saving you would get blew it. They calculated the savings a simple subtraction that ended up ignoring the obvious missing value code. So you can sue Office Max for false advertising, thanks to their careless programmers.

### Recodes with missing values

If you recode any variable, always account for missing values first and last. So start off any recodes with the case where the original variable is missing and end with a catch-all code. Consider a variable for gender with 1 for male, 2 for female, and some missing values. Then a recode in SAS might look like

```
if missing(gender) then gender_label="Unknown";
  else if gender=1 then gender_label="Male";
  else if gender=2 then gender_label="Female";
  else gender_label="Error";
```

The syntax changes slightly with other statistical packages, but the general concept applies. Account for missing value codes first and then catch anything that fails to match at the end.

### Conclusions

Missing values are one of the most troublesome aspects of data management. Every statistical package stores missing values differently, so be sure to use the function that they provide for detecting missingness. Account for missing values at the start and at the end of any recodes.
