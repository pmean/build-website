---
title: Microsoft Excel Pivot Tables
author: Steve Simon
date: 2004-08-05
categories:
- Blog post
tags:
- Statistical computing
output: html_document
page_update: partial
---
Someone at my church wanted some advice about exploring relationships
in a survey that he had taken. He asked a bunch of demographic
questions (age, sex, income, etc.) and then some yes/no questions. He
had the data in an Excel spreadsheet and didn't quite know what to do
with it.

I'm not a big fan of Excel for statistical analysis, but a few simple
pivot tables would be a nice start.

Select DATA | PIVOT TABLE OR PIVOT CHART from the menu. The office
assistant (for me it's the cat because I hate that little paperclip),
then offers a chance to look at some help files. Take a look at this
to get comfortable with how a Pivot Table works.

![pivot01.gif not found.](http://www.pmean.com/new-images/04/pivot01.png)

The default choices in step 1 (Microsoft Excel database; PivotTable)
both work well, so don't change anything here. Click on the NEXT
button.

![pivot02.gif not found.](http://www.pmean.com/new-images/04/pivot02.png)

If you are lucky in step 2, Microsoft Excel will select your data
range for your. It helps if you place the cursor in the upper left
hand corner of the data set before you started this. I had forgotten
to do this, so I clicked on the little colorful button to the right of
the RANGE field and then highlight the two corners of the data set you
are trying to summarize.

![pivot03.gif not found.](http://www.pmean.com/new-images/04/pivot03.png)

Then click on the NEXT button.

![pivot04.gif not found.](http://www.pmean.com/new-images/04/pivot04.png)

In step 3, you tell Excel to where to place the Pivot Table. I usually
like to place this in a new worksheet. Click on the FINISH button. You
might think you are done, but Microsoft just lied to you. You're not
really finished. You now have a floating window.

![pivot05.gif not found.](http://www.pmean.com/new-images/04/pivot05.png)

and the skeleton of your Pivot Table.

![pivot06.gif not found.](http://www.pmean.com/new-images/04/pivot06.png)

Now you layout the variables in the table. Here I want the age group
to be in the rows, so I drag and drop AgeGp from the PivotTable Field
List to the Drop Row Fields Here.

![pivot07.gif not found.](http://www.pmean.com/new-images/04/pivot07.png)

Then I drag and drop survey question 1 into the Drop Data Items Here
area.

![pivot08.gif not found.](http://www.pmean.com/new-images/04/pivot08.png)

Microsoft assumes that I am interested in a count, but what I actually
want is a percentage. So I right click on the gray Count of 1 cell and
select FIELD SETTINGS from the popup menu. What I ask for is an
average.

![pivot09.gif not found.](http://www.pmean.com/new-images/04/pivot09.png)

This person was nice to code his YES/NO variables as 1 and 0, so an
average of these values is exactly the proportion of YES responses.

![pivot10.gif not found.](http://www.pmean.com/new-images/04/pivot10.png)

Click on the PERCENT button to tidy up the format a bit.

![pivot11.gif not found.](http://www.pmean.com/new-images/04/pivot11.png)

This actual data shows that the proportion of YES responses was high
is just about every age group.

This is just a start. Pivot Tables allow you to interact with several
related variables. I would not use Excel for a really in depth
statistical analysis, but it does a reasonable job with simple data
summaries.

You can find an [earlier version](http://www.pmean.com/04/pivot.html) of this page on my [original website](http://www.pmean.com/original_site.html).
