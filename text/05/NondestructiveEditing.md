---
title: Non-destructive data editing
author: Steve Simon
source: http://www.pmean.com/05/NondestructiveEditing.html
date: 2005-11-02
category: Blog post
tags: Data management
output: html_document
---
**[StATS]:** **Non-destructive data editing
(November 2, 2005)**. [Category: Data
management](../category/DataManagement.html)

> I recently worked on a project looking at patients having two
> different types of operations, with and without collar sutures. The
> data set that the researchers sent to me had some inconsistencies,
> though. In one portion of the spreadsheet, the averages for the with
> and without groups were calculated based on row order, which was
> effectively the same as the date since the worksheet was sorted by
> date. In another portion of the spreadsheet, the two groups were
> defined based on a column indicating the number of collar sutures (0
> meant without, of course, and any non-zero meant with). When I asked
> about this, the researchers fixed the data set by changing all the
> zeros in that column after a certain date to a non-zero value. But
> then when I ran some side effect data, the numbers did not match their
> original calculations. It turns out that one patient was actually
> ineligible because he/she had an open rather than laproscopic
> operation and two of the patients after a certain date who seemed to
> have a positive number of collar sutures actually had zero. There were
> several other changes along these lines, and I realized that I
> couldn\'t very easily backtrack from one version of the data set to
> another or to document exactly what changes had been made.
>
> So I decided that from then on, I was going to edit the data in a
> non-destructive mode. For example, if I need to delete several rows of
> data, I would create a new column that would be 0 for the rows that I
> wanted to keep and 1 for the rows I needed to delete. Then I would use
> a programming statement to remove the rows. That way, I would know
> exactly which rows were deleted and I could \"undelete\" them just by
> changing the code. For a column of data like number of collar sutures,
> I would add a column next to it with the revised values. I would first
> copy the original columns and then make changes in the copy. That way,
> I could read off exactly which values changed and I could go back to
> the original data if necessary.
>
> It\'s a bit more work and uses a bit of extra storage space, but in
> data sets with a large number of possibly conflicting changes, this
> gives you a bit of security.

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Non-destructive data editing
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

