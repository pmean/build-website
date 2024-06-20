---
title: "Displaying SPSS syntax commands"
source: New
author: Steve Simon
date: 2023-08-30
categories:
- Blog post
tags:
- SPSS software
output: html_document
page_update: complete
---

In SPSS, you can do all of your data manipulations and data analysis using the menus and dialog boxes. You also could use program code, which SPSS calls "syntax". Most SPSS users, in my experience, use menus and dialog boxes for everything, but there are times and reasons why you might want to switch to syntax.

<!---more--->

There are two reasons why you might want to switch to syntax. 

First, you might want to explain how you did your analysis to others who know SPSS reasonably well. Rather than saying, I clicked here and here, you show them the syntax that you used.

Second, you might want to repeat your analyses several different times with minor variations. You could run the same analysis on five very similar datasets, for example. Get the syntax working for one of the datasets, and then store and re-use it with just a change in one line to point to a different file.

It's not easy to learn syntax on your own, but one feature that helps a lot is to have SPSS display the syntax that it generates internally to run the choices that you made from the menus and dialog boxes.

To enable the display of syntax, select ```Edit | Options``` from the menu. Then click on the ```Viewer``` tab. Check the ```Display commands in the log``` option in the lower left corner.

Here's what the dialog box looks like.

![Figure 1. Screenshot from the SPSS options dialog box](http://www.pmean.com/new-images/23/display-commands-01.png)

Then finish by clicking on the ```OK``` button.

Here's a hypothetical example of how you might use syntax.

You get monthly report on patients who enter your clinical trial and you want to display the average age and the percentage male and female. Take one of the datasets, report-2023-01-01.sav, and bring it into SPSS by selecting ```File | Open | Data``` from the menu. Then calculate the averages using ```Analyze | Descriptive Statistics | Descriptives``` and the percentages using ```Analyze | Descriptive Statistics | Frquencies```. This is what your output looks like.

![Figure 2. Screenshot from the SPSS output window](http://www.pmean.com/new-images/23/display-commands-02.png)

You see five lines of syntax before the averages and two lines of syntax before the percentages. Open the syntax editor with ```File | New| Syntax```. Then cut and paste these lines from the output into the syntax editor. 

![Figure 3. Screenshot from the SPSS syntax window](http://www.pmean.com/new-images/23/display-commands-03.png)

You can then save this syntax, and then modify it every time a new datafile arrives.

You can also learn syntax by clicking on the ```Paste``` button that appears at the bottom of most dialog boxes. Here is the dialog box for descriptives.

![Figure 4. Screenshot from the SPSS descriptives dialog box](http://www.pmean.com/new-images/23/display-commands-04.png)

SPSS syntax is not something I recommend for beginners, but if you become reasonably experienced with this program, you should spend some time to learn it.
