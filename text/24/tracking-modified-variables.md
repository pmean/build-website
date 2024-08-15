---
title: Tracking variable modifications in SAS
source: "New"
author: Steve Simon
date: 2024-07-28
categories:
- Blog post
tags:
- Data management
- SAS software
output: html_document
page_update: no
---

A student in my Introduction to SAS class posed an interesting question: after you transform some of your variables, how do you keep track of what the original variable is and what the modified variable is? This is actually quite difficult, at times, even for experienced data analysts. There are several steps that you can take that help. You can use more than one of these, if you think it helps.

<!---more--->



## New names

Use a new name, one that is descriptive. You might be tempted to do something like "height=height*2.54" to convert from inches to centimeters. It is better to use a fresh name, but not a generic one like "height1". A better choice would be "height_cm".

```{}
data storage.raw_data;
  set storage.raw_data;
  height_cm = height*254;
run;
```

## New datasets

Store the transformed variables in a new dataset.

```{}
data storage.metric_data;
  set storage.rawdata;
  height=height*2.54;
run;
```

## Comments

Use comments in your code.

```{}
* transform height to matric before analysis;
```
## Titles

Present descriptive information in your titles and/or footnotes.

```{}
title1 "Means and standard deviations computed on the metric scale.";
```

## Crosstabulations

Anytime you transform a categorical variables (such as by combining two or more categories), use a crosstabulation to compare the old and new categories.

```{}
proc freq data=recoded_data;
  table race*race_simplified;
  title1 "Checking the recoding of race into fewer groups",
run;
```

The resulting output will serve as a quality check as well as a reminder of what you did when you revisit your code six months later.

## Vigilance

Be constantly vigilant. A good data analyst is detail oriented and always checks that the results make sense. If you compute an average height in centimeters in adults and it is only 66.3, you probably were using the untransformed values, measured in inches.
