---
title: "Changes to the Introduction to R
- SAS
- and SPSS classes"
author: "Steve Simon"
source: "http://blog.pmean.com/changes-to-classes/"
date: "2018-03-21"
categories:
- Blog post
tags:
- R software
- SAS software
- SPSS software
output: html_document
page_update: partial
---

I have helped develop and have taught (along with other faculty in our
department) three one credit hour pass/fail classes: Introduction to R,
Introduction to SPSS
- and Introduction to SAS. These classes were
developed back in 2014-2015 and they are in need of some serious
updates. I will try to outline some of the updates that I think these
classes need in this blog post.

<!---More--->

The first big change is that all of these classes need to more closely
adapt to the recent standards in reproducible research. We do some of
this already
- but need to do more and need to make it more explicit.
This means that for every data set that the students use
- they need to
produce a data dictionary. And as they modify the data sets
- they need
to produce a changelog file.

Most of the data sets that I use in these classes already have good data
dictionaries
- but I want the students to cut-and-paste the relevant
portions into their own text file. They should then add a bit of
supplementary information
- if needed. Here's an example of a data
dictionary for the first file that I use in my Introduction to R class.
It is scarcely better than the data dictionary found at the second link
described in this file
- but it's important for students to see the
importance of creating a data dictionary that is stored locally.

    ~/introduction-to-r-part1/doc/data_dictionary_fd.txt
    Written by Steve Simon

    See ~/introduction-to-r-part1/README.md for an overview of everything.

    This file was downloaded from

    http://www.amstat.org/publications/jse/datasets/fat.dat.txt.

    A description of the file appears at

    https://ww2.amstat.org/publications/jse/datasets/fat.txt.

    It represents a study of body fat and body circumference measurements
    on 252 men. The data was first used in
    Penrose
- K.
- Nelson
- A.
- and Fisher
- A. (1985)
- "Generalized Body 
    Composition Prediction Equation for Men Using Simple Measurement 
    Techniques" (abstract)
- Medicine and Science in Sports and Exercise,
    17(2)
- 189.

    and later described in a publication

    Johnson (1996) "Fitting Percentage of Body Fat to Simple Body
    Measurements" Journal of Statistics Education.

    and stored in the data archive for this journal. The data set is 
    freely available for re-use for non-commercial purposes.

    There are 252 rows and 19 columns in this data set. It is stored as a
    text file with tab delimiters. There are no missing value codes in this data set.

    case
- Case Number
- a sequential number from 1 to 252.
    fat.b
- Percent body fat using Brozek's equation
- 457/Density - 414.2
    fat.s
- Percent body fat using Siri's equation
- 495/Density - 450
    dens
- Density (gm/cm^3)
    age
- Age (yrs)
    wt
- Weight (lbs)
    ht
- Height (inches)
    bmi
- Adiposity index = Weight/Height^2 (kg/m^2)
    ffw
- Fat Free Weight = (1 - fraction of body fat) * Weight
- using Brozek's formula (lbs)
    neck
- Neck circumference (cm)
    chest
- Chest circumference (cm)
    abdomen
- Abdomen circumference (cm) "at the umbilicus and level with the iliac crest"
    hip
- Hip circumference (cm)
    thigh
- Thigh circumference (cm)
    knee
- Knee circumference (cm)
    ankle
- Ankle circumference (cm)
    biceps
- Extended biceps circumference (cm)
    forearm
- Forearm circumference (cm)
    wrist
- Wrist circumference (cm) "distal to the styloid processes"

There are no hard and fast rules about what goes in a data dictionary,
but here are the elements that I included in this particular data
dictionary.

-   Where the data came from
- including urls and references
- if
    available
-   A brief description of the data
-   Licensing information for this data
-   The format of the data
- including information about delimiters
- if
    appropriate
-   The number of rows and columns in the data
-   The codes for missing values

The data dictionary also includes an entry for each variable with the
name of the variable
- a brief description
- and units of measurement
- if
appropriate. There are no categorical variables in this data set
- but if
there were
- you should include the values used and what they represent
(e.g.
- 1=male
- 2=female).

A data dictionary does not have to include all of the things I listed
above and it can include things that I did not include. Use your best
judgement to decide how much to document in the data dictionary.

The other thing I want to emphasize in these classes is a changelog
file. This file provides a historical record when new programs are
written and when new data sets are created. Here's a fictional example
of a changelog file.

    ~/introduction-to-r/doc/changelog.txt
    Written by Steve Simon

    See ~/introduction-to-r-part1/README.md for an overview of everything.

    ## 2018-02-20
    Created src
- doc
- data
- results directories and moved files into them.
    ## 2016-08-22
    Enhanced documentation of part1a.Rmd.
    ## 2016-08-18
    Created part1a.Rmd through part1d.Rmd by splitting part1.Rmd.
    ## 2016-08-08
    Updated README.md
    Export fd to a text file
- body.txt
    ## 2016-05-31
    Created github repository.
    Created README.md 
    Created part1.Rmd
    Imported data and stored it as fd in part1.RData
    Converted outlier in fd to NA and stored as fd1 in part1.RData
    Removed row with outlier from fd and stored as fd2 in part1.RData

Now
- I don't have a changelog.txt file for any of my projects. I rely on
git to produce something equivalent to a changelog file
- and pulled a
small fraction of the changes documented by git into the file above.

Git does not work as well for SAS and SPSS as it does for R
- so it makes
more sense to teach how to create a changelog file in all three classes.


