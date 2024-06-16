---
title: How to randomize
source: http://www.pmean.com/99/random.html
author: Steve Simon
date: 1999-08-18
categories:
- Blog post
tags:
- Being updated
- Randomization
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

*Dear Professor Mean
- I need to randomize the order in which I give
treatments and controls in my research study
- but I don't know how to
randomize. Can you show me what to do? -- Baffled Beth*

Dear Baffled,

Here's a lightbulb randomization joke: *take to in How many a screw
does statisticians it lightbulb?*

There are also two quotes that are relevant here: "*Random selection is
too important to be left to chance*" and "*Random is not haphazard*".
The latter quote can be found in Statistically Speaking. A Dictionary of
Quotations by C.G. Gaither and A.E. Cavazos-Gaither.

**Short answer**

The simplest way to randomize is to

1.  list your treatments and controls in a systematic order,
2.  attach a random number to each row
- and
3.  sort by the random number.

This works for simple randomization
- block randomization
- and
randomization in a cross-over design.

**Why randomization is important.**

I'm glad that you are interested in randomization. Some people think it
is fine just to alternate regularly between treatment and control. But
there are two problems with this.

First
- if you've watched plants grow in a garden
- you will notice that
they tend to have a large-small-large-small pattern
- especially if they
are planted too tightly together. The plants are competing for
resources. If one plant gets a small lead
- its increased consumption
will make the plants on either side of it grow more slowly. If you
alternated between treatment and control in this garden
- you would
notice a difference that is entirely independent of the treatment.

This same sort of large-small pattern can occur in medical situations.
For example
- if a doctor spends too much time with his/her first
patient
- it increases the probability that the next patient will get
less time (in order to keep things on schedule).

A second problem with alternating is that many studies are blinded. An
alternating schedule may make it easy for someone to guess what patients
get what treatment
- ruining the blinding.

**Example**

Let me show you this in Excel
- but the general method works well for any
program that can generate random numbers. Suppose we have a study with
twelve patients
- six treatment and six control. List C and T alternating
down in the first twelve rows of the first column of the spreadsheet. In
the second column
- place the RAND() function in each of the first twelve
rows. Here is what you have:

![](../../../web/images/99/random01.gif)
height="278"}

Your random numbers will be different than these. Otherwise
- they
wouldn't be random now
- would they?

To randomize
- sort the data by the second column. Notice that the
systematic order of the first column has been scrambled.

![](../../../web/images/99/random02.gif)
height="278"}

By the way
- when you try this on your spreadsheet
- you will notice that
after the sort
- the random numbers are recalculated. This seems a bit
disconcerting
- since the sorted numbers randomly change to different
(and unsorted) values. You had to look really
- really fast to see the
sorted numbers.

When I work out these examples
- I freeze the random numbers by pasting
their values only into a third column (select EDIT | PASTE SPECIAL) and
then deleting the second column. That's why the random numbers in my
example stayed sorted. It doesn't make much difference
- though
- what
happens with the second column; it's the first column we are interested
in.

**What is block randomization?**

If there is the possibility that the experiment will not reach your
target sample size
- then sometimes randomization can leave an imbalance
due to the (bad) luck of the draw. For example
- if the previous
experiment ended halfway
- we would have had four treatment patients and
only two controls. This is not too terrible
- but for a larger sample,
the discrepancies can get quite problematic.

A solution to this problem is to divide your study up into blocks and
then randomize within each block. If the study ends at a block boundary,
then you are guaranteed to have perfect balance between treatments and
controls. If a study ends in the middle of a block
- there might be some
imbalance
- but probably much less than with regular randomization.

In Excel
- we would arrange the T and C values systematically and then
add a column with a block number. The third column would be our random
numbers. Here is what it would look like.

![](../../../web/images/99/random03.gif)
height="278"}

Now we sort the numbers
- by block and by random number within block.

![](../../../web/images/99/random04.gif)
height="278"}

Notice that the first block has the order TCTC
- the second has CTCT
- and
the third has CCTT.

**How do I randomize in a matched pairs study?**

You can randomize a matched pairs study the same way as with block
randomization. In a matched study
- every patient gets both the treatment
and the control (separated by enough time so that the effect of one
cannot carry over into the other). It is important to randomize the
order in which the patients get the treatment and the control.

The easy way to do this is to allocate two rows for each patient and
label the rows T and C in a systematic order. Add random numbers and
then sort within each patient.

Here's an a example of how we would set up a matched pairs example for
six patients.

![](../../../web/images/99/random05.gif)
height="278"}

Sort the data by patient and by random number within each patient.

![](../../../web/images/99/random06.gif)
height="278"}

Notice that patients 1,3
- and 4 get the control first and patients 2
- 5,
and 6 get the treatment first.

**Assigning random id numbers for anonymization**

Suppose you want to create an identification code that is effectively
random. You want to avoid medical record numbers because they would
compromise security. There are several approaches that work. A simple
approach is to list the numbers 1001
- 1002
- etc.
- but this gives a hint
as to when the subject joined the study. A better approach is to list
those numbers and then sort them in a random order. These numbers can
then be cut-and-pasted next to the medical record numbers.

Here's the medical record number
- a sequential ID
- and a column of
random numbers.

![](../../../web/images/99/random07.gif)

Sort the last two columns only to get a shuffled list of IDs.

![](../../../web/images/99/random08.gif)

Keep this list in a secure location. Use only the ID column when sending
your data out beyond the hospital. This approach protects the privacy of
individual subjects.

Whenever you are concerned about privacy in a research study
- it is a
good idea to discuss your concerns with your IRB (Institutional Review
Board).

**Update**

In an August 10
- 2005 [weblog](../08/weblog.asp) entry
- I discuss how
the use of randbetween() function leads to problems with a random amount
of imbalance being created. For example
- the spreadsheet I was given had
223 people randomized to the first group and only 177 randomized to the
second group. This is well within sampling error
- but still leads to a
slight inefficiency in the analysis.

**Summary**

Baffled Beth does not know **how to properly randomize subjects for her
research study**. Professor Mean explains how randomization differs from
allocating the treatment and control in an alternative fashion. He shows
a **simple approach for randomization**
- which involves

1.  arranging your treatments in a systematic order,
2.  attaching a column of random number to this list
- and
3.  sorting by the random number column.

He then shows examples for s**imple randomization
- block randomization,
and randomization in a matched pairs study**.

**Further Reading**

There's an interesting two page article in the British Medical Journal
on randomisation (notice the alternate spelling. I feel so intellectual
when I replace all my z's with s's.)

1.  **Altman DG
- Bland JM "How to randomise"** BMJ 1999 Sep 11;
    319(7211): 703-704. A nice introductory guide. This article is
    [available on the
    web](http://www.bmj.com/cgi/content/full/319/7211/703). I've
    drafted a [web letter to the editor](../01/random42.html) in
    response to this article
- which they [published at their
    site](http://www.bmj.com/cgi/eletters/319/7211/703).

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/99/random.html
[sim2]: http://www.pmean.com/original_site.html
