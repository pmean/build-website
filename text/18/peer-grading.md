---
title: "Peer grading in Introduction to R
- SPSS
- SAS"
author: "Steve Simon"
source: "http://blog.pmean.com/peer-grading/"
date: "2018-03-22"
categories:
- Blog post
tags:
- R software
- SAS software
- SPSS software
output: html_document
page_update: partial
---

I've gotten some helpful feedback that I need to encourage more
interactions among students in the on-line classes
- Introduction to R,
Introduction to SPSS
- and Introduction to SAS. No just interactions of
the students with the teacher
- but interactions between the students.

In many online classes this is done by encouraging online discussion of
the material in the class. This is not so easy
- however
- for these three
classes. I can just imagine myself posting the following on Blackboard.
"Tell me what you think about the read.csv function in R."

There are a couple of ways
- however
- that make sense for technical
classes like these.

<!---More--->

An obvious strategy is to encourage students to comment on anything they
find confusing in the videotaped lectures. For example
- as student might
say

"I got a strange error message when I tried to import the dataset with
"read.csv(file=fn
- header=TRUE)"

When you see this
- rather than answer it right away
- ask

"Did anyone else have this problem?"

Then wait a bit. If you're lucky
- another student might chime in and say

"I had that problem also
- but when I stripped the first line from the
file
- and changed the option to "header=FALSE" it worked just fine.
Except
- I lost the variable names for each of the columns of data."

Then another student might chime in and say

"I got the variable names back by cut-and paste of the first line into
the R program itself. I had to reformat a bit
- but it worked nicely."

That's the theory
- anyway. It mimics the situation in a class where one
person asks a question
- and another student answers the question before
the instructor can (which is ideal from the instructor's perspective).

Now
- it is hard to get students to offer commentary
- either online or in
a live class
- but that's something that you need to encourage if you
want to be a good teacher. I must confess that I am not nearly as good
at this as I should be. I tend to dominate any classroom discussion
- to
the detriment of myself and my students. But I'm working on it.

Another strategy for encouraging student interactions is to require
peer-grading of assignments. These are pass/fail classes
- so I'm not
interested in a grade per se. What I want is some helpful commentary
about the good things and bad things in another student's assignment.

Again this is tricky for a programming class. Someone shares the code
they used and the output that the code produced
- and what is there to
comment on other than the trivial comment that it worked.

One thing that you can get one students to critique about another
student's work is the quality of the documentation. One thing these
classes need to emphasize more is placing a greater emphasis on
documentation.

So a student might submit a project where they imported a text file,
created value labels
- and recoded obvious outliers as missing values.
The first student submits their code and output
- but also [their data
dictionary and their changelog](../changes-to-classes/index.html). The
second student provided feedback by answering the questions

1.  Did you understand the information in the data dictionary?
2.  is there any information that you wanted to see in the data
    dictionary that wasn't there?

In order for peer evaluation to work at its best
- you need to make sure
that the second student is not working on the exact same data set that
the first student is working on. It's easy to overlook a poorly
documented data dictionary for a data set that you're already intimately
familiar.

Fortunately
- there are so many open source data sets out there that it
won't be hard to give each student a different data set to work on.

A second thing that one student can critique about another student's
work is the quality of the interpretation of the output. This requires a
change in emphasis again. These classes do ask for interpretations when
appropriate
- but when the output is just a two by two crosstabulation
like

           Dead Alive
    Female  154   308
    Male    709   142

there's only so much you can say. So these classes need to incorporate
things like a Fisher's Exact Test for any two by two crosstabulation
- so
that students can say that males have a statistically significant
increase in mortality in this data set compared to females.

I don't want to go too deeply into statistical tests in these classes.
My goal is to teach coding
- not statistics. But adding a few more tests
and confidence intervals
- very simple ones
- will allow for more
interesting interpretation of the output.

So assignments should ask for the output and the code (for R and SAS)
and the log (for SAS). But it should also ask for a brief report (no
more than one page) interpreting the results. When the first student
submits the report
- ask the second student to address the following
questions

1.  Did you understand the interpretation provided?
2.  Was it consistent with the raw output?
3.  Was there anything else you wanted to see in the interpretation?


