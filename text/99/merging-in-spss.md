---
title: Merging files in SPSS
source: http://www.pmean.com/99/merging.html
author: Steve Simon
date: 1999-01-15
categories:
- Blog post
tags:
- Being updated
- Data management
- Dear Professor Mean
- SPSS software
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean, I get a strange error message when I try to merge two files in SPSS. What is going on? -- Computing Cheryl*

<!---More--->

Dear Computing,

Merging is tricky and here are a few things you have to look out for.

First make sure that the KEY VARIABLES are sorted in both files. **Unsorted data will often cause problems with a merge.**

Also **make sure you are not mixing apples and oranges**. If the KEY VARIABLES in one data set are numeric, but in the other data set they are strings, then you have problems. You also might have problems if both are strings. but the lengths of the strings differ. So if the key variable in the first data set is a string of length 8 but it is a string of length 20 in the other data set, you may have trouble merging.

Second, **identify the type of merge** you are doing:
- one-to-one
- one-to-many
- or many-to-one.
 
A **one-to-one merge** occurs when each record in your first data set corresponds to a single record in your second data set. Possibly there might be some records in one data set that don't have a partner in the other data set. That's fine, but make sure that you don't have two records in the second data set that would match with the same record in the first data set. That would be the computer equivalent of bigamy which is not allowed in a one-to-one merge.
 
If you have a one-to-one merge, select the BOTH FILES PROVIDE CASES option.

A **one-to-many merge** occurs when a single record in your first data set might correspond to multiple records in the second data set. An example might be when your first data set contains information about the hospital that a patient was born in, and your second data set contains information about any hospital stays after discharge from the birth hospital. You can only be born in a single hospital, but you might have multiple hospital stays after your birth. With this option, bigamy is allowed, but only in a single direction. A record in the first data set can be linked to more than one record in the second data set, but a record in the second data set is never paired with more than one record in the first data set. Sort of like the type of bigamy where a husband can have more than one wife, but a wife can't have more than one husband.

If you have a one-to-many merge, select the WORKING DATA FILE IS KEYED TABLE option.
 
A **many-to-one merge** is just the same except that the multiple records are in the first data set and not the second. This is like the situation where a wife can have more than one husband but not the reverse.

If you have a many-to-one merge, select the EXTERNAL FILE IS KEYED TABLE option.

For the record, **it is impossible to do a many-to-many merge in SPSS**. A many-to-many merge would equivalent to multiple husbands and wives and is just too chaotic to contemplate. If you really wanted to do a many-to-many merge, you would create a third file which shows which keys from the first file are linked with which keys from the second file. You would have to merge the first file with this master file and then merge the result with the second file.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/merging.html
[sim2]: http://www.pmean.com/original_site.html
