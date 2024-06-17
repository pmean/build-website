---
title: BMJ letter
author: Steve Simon
source: http://www.pmean.com/01/random42.html
date: 2001-10-11
categories:
- Blog post
tags:
- Being updated
- Randomization in research
output: html_document
page_update: partial
---
Here's a letter I submitted to the web letters to the editor for the
British Medical Journal in response to an article about randomisation
([BMJ 1999 Sep
11;319(7211):703-704](http://www.bmj.com/cgi/content/full/319/7211/703)).

**A simple approach for randomisation.**

I'm glad that the British Medical Journal is devoting space to
pragmatic aspects of research such as the article "How to randomise"
by Douglas G. Altman and J. Martin Bland. I want to supplement their
fine article by outlining an alternative approach for randomisation.
This approach is simple and intuitive, and you can apply it in a variety
of research settings.

In essence, you can randomise by following these three steps:

1.  arrange your treatments in a single column in a systematic order,
2.  create a second column of random numbers, and
3.  sort by these random numbers.

This approach has intuitive appeal. Sorting on a set of random numbers
produces a random ordering.

Let's look at a simple example. Suppose we want to allocate three
treatments (T1, T2, and T3) randomly to a total of twelve subjects.

First, arrange your treatments in a systematic order. This is what your
data would look like:

`T1 T2 T3 T1 T2 T3 T1 T2 T3 T1 T2 T3`

Next, generate a second column of random numbers. You can find a random
number generating function in most software. In Microsoft Excel, for
example, you would use the RAND() function. The table below shows what
you would get. Actually, you will get something different. If it
weren't different, your numbers wouldn't be random, would they?

`T1 0.02338 T2 0.00018 T3 0.50797 T1 0.03322 T2 0.35942 T3 0.23288 T1 0.59740 T2 0.63826 T3 0.20776 T1 0.47897 T2 0.90778 T3 0.41530`

Finally, you sort this table by the column of random numbers. Your
treatments now have a random and unpredictable order.

`T2 0.00018 T1 0.02338 T1 0.03322 T3 0.20776 T3 0.23288 T2 0.35942 T3 0.41530 T1 0.47897 T3 0.50797 T1 0.59740 T2 0.63826 T2 0.90778`

That was easy, wasn't it? With this approach, you don't have to worry
about throwing out some of the random numbers, even when the number of
treatments doesn't divide easily into 10 or 100.

You can set up a randomisation like this in five minutes using a simple
spreadsheet. Spreadsheets have the annoying feature of recalculating a
new set of random numbers after any operation, including a sort, but
this is only a cosmetic problem.

The approach I have outlined extends readily to more complex situations
like block or stratified random sampling. Let's look at the same
research design, and let's randomize separately within blocks of size
six.

First, you need to lay out your treatments and blocks in a systematic
fashion. Then add a column of random numbers.

`T1 B1 0.4280 T2 B1 0.7577 T3 B1 0.0912 T1 B1 0.3344 T2 B1 0.4102 T3 B1 0.5281 T1 B2 0.2790 T2 B2 0.8477 T3 B2 0.0850 T1 B2 0.3631 T2 B2 0.4929 T3 B2 0.0537`

To restrict your randomisation to within individual blocks, apply a
multiple column sort, specifying the block column first and then the
random number column.

`T3 B1 0.0912 T1 B1 0.3344 T2 B1 0.4102 T1 B1 0.4280 T3 B1 0.5281 T2 B1 0.7577 T3 B2 0.0537 T3 B2 0.0850 T1 B2 0.2790 T1 B2 0.3631 T2 B2 0.4929 T2 B2 0.8477`

This is much simpler than the approach suggested by Altman and Bland;
you don't have to list the 90 possible orderings of three treatments
within a block of six.

You can use this same approach to randomise a stratified study or a
crossover study. Just lay out your design systematically, add random
numbers, and apply a multiple column sort.

Here is another adaptation of this approach that allows you to make a
random selection from a small population of patients:

1.  list your patients in a systematic or arbitrary order,
2.  generate a random number for each patient,
3.  sort by the random numbers, and
4.  select your patients from the top of the sorted list.

Let's look at an example where you have 13 patients and you need to
randomly select five. A table after sorting by the random numbers might
look like this:

`P02 0.09299 P05 0.16621 P11 0.39768 P09 0.48882 P01 0.49291 P06 0.51756 P13 0.52436 P04 0.56682 P07 0.58734 P10 0.79923 P12 0.93658 P08 0.96063 P03 0.96669`

You would select patients 2, 5, 11, 9, and 1.

You can even use this approach to generate a randomisation light bulb
joke: "*take to in How many a screw does statisticians it lightbulb?*"

In summary, if you want to randomise, attach a column of random numbers.
Sorting by these random numbers will produce an unpredictable ordering
of your treatments. This approach extends easily to a variety of
research settings.

Steve Simon, Research Biostatistician, Children's Mercy Hospital,
Kansas City MO, USA

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/01/random42.html
[sim2]: http://www.pmean.com/original_site.html
