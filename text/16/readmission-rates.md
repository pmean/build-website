---
title: "Calculating 90 day readmission rates"
author: "Steve Simon"
source: "http://blog.pmean.com/readmission-rates/"
date: "2016-04-27"
categories: Blog post
tags:
- Longitudinal data
- Secondary data analysis
output: html_document
page_update: complete
---

Someone asked me how to calculate a 90 day readmission rate from a large database. It's a tricky problem because for many databases, it requires you to examine the data from a longitudinal perspective. Here's some general advice.

<!---More--->

If you're lucky the date of the first hospitalization and the date of the re-hospitalization are sitting side by side. That's almost never the case. The two dates could be anywhere. Let's look at one probable scenario and see how it might work. Your scenario is probably going to be different, but perhaps similar enough that you can work out the details.

In many data sets, your data is stored with multiple events per patient, each event on a separate row. If this is how your data set is organized, your very first step is to get a count of the number of patients. This is going to be less than the number of rows in your data set, of course, because each subject contributes at least one row. You can't be RE-admitted if you've never been to the hospital at all, so anyone who is not in the database is ineligible by definition.

How do you get a count of the number of patients? This depends a lot on the software that you use. One approach is to find and remove the duplicate patient numbers. Your software may do this for you, or you can trick it to do this for you. Here are a couple of tricks to remove duplicates.

One trick is to see if you can calculate ranks on an arbitrary variable in your data set. Admission or discharge date would be ideal, but any variable that can be ranked will do. Calculate the ranks but rank separately within each patient number. This might involve a BY command. When you do the rank make sure that there are no ties, especially no ties for the first rank. Once you have ranks, select only those ranks equal to 1. The resulting data set will have one row per patient and the number of rows in your data set is the number of patients.

Another trick is to calculate some aggregate statistics. It doesn't matter what the statistic is, it could be a mean or a standard deviation, for example, but the best aggregate statistics would be either a count of the number of non-missing records or the minimum value for some variable like admission date. Make sure that you calculate your aggregate statistics by patient number.

Whichever way you do it, make sure that you can calculate the number of patients in your data set, which is always going to be less than the number of rows of your original data set. If you can't calculate the number of patients, you might as well throw in the towel, because you won't be able to make any more progress.

An interesting ratio is the number of rows in the original data set divided by the number of rows in the new data set that has only one record per patient. That ratio is the number of hospital visits per patient (assuming that each row in your original data set corresponds to a separate hospital visit).

One you have a count on the number of patients in your group, you need to create a data set that has the "index visit" for each patient. The index visit is the visit which starts the clock ticking. The index visit might be the very first encounter in your data set, the one with the earliest date. Or it might be the visit that corresponds to a specific procedure being done.

In most problems, you would like to have a single index visit per patient. If you have multiple index visits, then you have difficulty computing a 90 day readmission rate because you have too many choices for what to put in your denominator. Talk it over with a statistician before you go down this road, because the complexities accumulate very rapidly if you have potentially multiple readmissions per patient.

If your index event is the earliest event, then you may already have this data set staring at you. If you ranked your data by patient number on admission date and then selected the values with rank equal to 1, then you're done. If you calculated an aggregate statistic that was a minimum date, then you're done. If you don't have these data sets staring back at you then, back up a few paragraphs, re-read what I wrote, and see if you can do this.

If your index event is a particular procedure or particular type of hospital visit, then use a filter of some sort (SELECT CASES in SPSS, for example) to identify the index event. Be sure to remove any visits that do not match your filter and save this under a fresh file name. Remember to keep your original data file intact.

One more thing, and this is important. Tie a string around your index finger so you don't forget this. When you store the information about the admission date of the index visit, be sure to also add an extra variable that represents the length of stay for the index visit.

Before you do anything else, count the number of rows in the data set that contains your index visit. If it is not equal to the number of patients in your data set, you need to resolve this discrepancy. Perhaps some of the patients in the original data set did not meet your eligibility criteria because they didn't have an encounter that would qualify as an index visit. Perhaps some of your patients have more than one index visit and you are comfortable with simplifying this by selecting the first index visit, or a randomly chosen index visit. Perhaps you made a mistake in the creation of the index visit.

You could either redefine your count of patients by declaring that some of the patients in the original file did not meet your eligibility criteria, or re-run the steps to create your data set with the index visit.

But whatever you do, reconcile this now. If your patient count does not equal the number or rows in your data set with the index visit, you won't be able to make any progress.

Now you need to create yet another data set. This is the data set of all visits that might qualify as a readmission event. How you define this might vary depending on the goals of your study, but one condition is pretty obvious. A visit can only qualify as a re-admission if it occurs after the index visit. So disqualify any visit that occurs before your index visit. It's easy to do this. I promise it's easy and I'll seal the promise with a golden bow. See below for details.

You might disqualify a visit as a readmission if it occurs on the very same day that the patient was discharged. This might represent not a readmission, but a transfer from one part of the hospital to another. In some studies, readmission on the same day might qualify. It depends a lot on your particular research question. Disqualifying any readmissions that occur on the discharge day is pretty easy also.

You also might disqualify a visit if it is is to the "wrong" part of the hospital, such as an outpatient visit. You do this by using a filter of some type.

The number of rows in the readmission visit data set might be more than the number of rows in your index visit data set because you might have several visits that qualify as a readmission visit. It might be less because some of your patients will not have any other visits to the hospital other than their index visit.

You might want to take some time here and filter out from the index visits from the readmission visit data set. If you don't do it now, be sure to do it later. Look for the last chance reminder.

Before you go any further, though, get a count of the number of patients in your readmission visit data set. This might be less than the number of rows in your readmission visit data set because you have multiple visits that might qualify as a readmission. Now compare this to the number of patients that you calculated earlier. The ratio of these two numbers is an upper bound on your 90 day readmission rate.

Now you need to merge your index visit data set with your readmission visit data set. This is a tricky merge for two reasons. First, some of the patients in the index visit data set will not have a corresponding row in the readmission visit data set.? Second, some of the patients in the index visit data set will have more than one corresponding row in the readmission visit data set.

As a side note, if there are multiple index visits per patient, the merge here becomes extremely messy. If you really wanted to have multiple index visits per patient, rethink things here one more time because what you are doing now is, in database parlance, a many-to-many merge. It causes even the bravest computer geeks to run away shrieking in terror.

Let's assume that you can get the index visit data set merged properly with the readmission visit data set. Now you have to do one more quality check. Count the number of patients in this data set. It will be fewer than the number of rows of the merged data set, I suspect, because it has at least one row for each patient found in the index visit data set, but each of these rows might be matched with multiple rows of the readmission visit data set. But what you're looking for is that the count of the number of patients will match the count that you computed as your very first step in this process.

Did they match? Good! Now figure out which readmission visit is important. You want to look at the difference in time between the index visit and each readmission visit. If the difference is negative, ignore that readmission visit. It's not a REadmission, it's a PREadmission. You might not have any negative differences because the index visit is defined as the first visit. Or maybe you filtered out any visits prior to the index visit already. But if not, remember that I made a golden bow promise to you earlier. Here's my delivery on that promise. A negative difference here is a fast and easy way to identify and eliminate visits occurred prior to the index visit.

Also ignore any difference that is larger than 90 days.Those may be bad news, but they occur too late to count in the 90 day readmission rate. Now you need to be a bit careful here. A 90 day readmission means that 90 days or fewer elapsed between the date of DISCHARGE from the index visit and the date of a readmission. So your calculation is just a bit more complicated than

-   readmission date - index visit date

It's actually

-   readmission date - (index visit date + length of stay on index visit)

Oh, you did remember to keep the length of stay information? Of course, you did. That's why you tied a string around your finger.

If the difference is a missing value, it's because the date of the readmission is missing. The date of the readmission is missing because your patient had no other visits besides the index visit.

Finally, depending on your problem you might ignore any difference that is exactly zero. And here's your last chance reminder. When you created the readmission visit data set, did you find an easy way to exclude the index visits? If not, this is your last chance reminder. The unfiltered index visits will show up here as a zero difference. It should be pretty easy to figure out which zero differences correspond to an index visit sneaking into the readmission visit data set and then getting merged back into itself. But easy only works if you make the effort here to look for it.

So those are all the disqualifications. Is there anything left? If yes, then count the patient as a readmission. Code this patient as a 1. If none of the readmission visits qualify, code this patient as a 0. The readmission rate is the number of patients with 1s and divide by the number of patients with 1s or 0s. If the number of 0s and 1s does not match your patient count, go back and fix things.

Wow! That was a lot of work and I was forced to be a bit vague about the details. But I want to emphasize one more time that you can't make any progress on estimating a readmission rate until you first know how many patients you are working with. It's an important quality check for all the tricky twists and turns that you took to get your answer and it ends up being your denominator in the readmission rate calculation. I told you it was important!

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/readmission-rates/
[sim2]: http://blog.pmean.com
