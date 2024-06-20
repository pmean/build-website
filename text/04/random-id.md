---
title: Random identification numbers
author: Steve Simon
date: 2004-07-26
categories:
- Blog post
tags:
- Randomization
output: html_document
page_update: partial
---
Someone asked me today for a set of random numbers. The purpose was to
create an ID code that could be used to track back to the original
records to resolve any inconsistencies or ambiguities. You should not
use a medical record number, of course, because sharing a patients
medical record number is a violation of HIPAA regulations. What you need
to do is to assign a different number and then keep a link between that
number and the patient's medical record number in a secure location
(like a locked filing cabinet).

Strictly speaking, the numbers do not need to be random. 1, 2, 3 would
work just fine. But the person I was working with didn't want the
record number to provide any clue as to whether the person appeared
early in the study or late.

You can generate a nice random number in Excel using the RANDBETWEEN
function. I used RANDBETWEEN (1000,9999) to create a set of random
numbers with exactly four digits.

Be sure to check that list to make sure no duplicates appear.

Another approach that also would have worked is to sort the sequential
numbers 1, 2, 3, etc. in a random order.

I have a page that describes some other approaches to [generating
randomization lists for assigning treatment versus
control](../plan/random.asp).

You can find an [earlier version](http://www.pmean.com/04/RandomID.html) of this page on my [original website](http://www.pmean.com/original_site.html).
