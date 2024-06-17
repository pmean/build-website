---
title: Data management for survival data
author: Steve Simon
date: 2002-08-27
categories:
- Blog post
tags:
- Being updated
- Survival analysis
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

Every project is different, of course, but here are some general concepts that may help you manage data a survival data analysis project.

Survival data will involve calculating the time between the various dates and noting when certain dates are present or absent.

In a study of bone marrow transplants for childhood cancer, we have up to four dates:

1.  Date of bone marrow transplant (always known)
2.  Date of last follow-up (always known)
3.  Date of relapse (sometimes censored)
4.  Date of death (sometimes censored)

The dates of relapse and death are censored because either they did not occur, or they occurred after the date of last follow-up.

![](http://www.pmean.com/new-images/02/srv_data-0201.gif)

The data shown above represents an example of this data. Notice that the relapse and death dates are missing (censored) for most of the subjects. In this particular context, the values are missing, for the most part, because the subject has not yet relapsed or died. It could represent, however, a subject for whom we have lost touch, so that we don't know anything about the relapse date or death date except that if it exists, it has to be later than the date of the last follow-up.

Also notice that at least one subjects has relapsed without dying and at least one subject died without having a relapse first.

![](http://www.pmean.com/new-images/02/srv_data-0202.gif)

Notice the formula here:

-   dth_days = (max(dth_date,fu_date)-op_date)/(24*60*60)

We want to account for the possibility that a patient died after their last follow-up, so we take the maximum value. The maximum value function will also handle missing values intelligently: if we have a follow-up date and the death date is missing, then only the follow-up date will be used in the calculation. SPSS stores date/time values as the number of seconds since October 14, 1582, so we adjust the value by dividing by 24 hours/day * 60 minutes/hour * 60 seconds/minute.

The new variable, dth_days, represents the number of days that the patient lived, when the death date is known. When the death date is missing, this variable represents the number of days that we followed-up on the patient, which is a lower bound for the number of days the patient lived.

![](http://www.pmean.com/new-images/02/srv_data-0203.gif)

To distinguish between the two situations, we create a variable, dth_code, which equals 1 when the patients is not missing a death date and 0 when the patient is missing a death date. We could have used a different code (e.g., 1 if the patient is missing a death date, and 2 if the patient is not missing a death date).

This is what the data looks like after the transformations.

![](http://www.pmean.com/new-images/02/srv_data-0204.gif)

We need to create similar variables for analysis of progression free survival. In this analysis, we note the time until relapse. If the relapse time is missing, we note the time until the last follow-up
instead.

For this analysis, the one key difference, is that it is possible to have a follow-up after relapse. So the formula for rel_days should be

-   rel_days = (min(rel_date,fu_date)-op_date)/(24*60*60)

The formula for rel_code will be

-   rel_code = ~ missing(rel_date)

These are not the only calculations possible. The time of the operation might be replaced by the time that the tumor was diagnosed or the time when therapy ended. You might also calculate a composite event, such as relapse and/or death within 100 days of the operation.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/srv_data.html
[sim2]: http://www.pmean.com/original_site.html
