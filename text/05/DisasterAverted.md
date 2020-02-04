---
title: A disaster averted
author: Steve Simon
source: http://www.pmean.com/05/DisasterAverted.html
date: 2005-05-16
category: Blog post
tags: Data management
output: html_document
---
**[StATS]:** **A disaster averted (May 16, 2005)**.
[Category: Data management](../category/DataManagement.html)

> I\'m working on a microarray experiment of prenatal liver samples.
> When I was trying to normalize the data, I noticed that three of the
> arrays had rather unusual properties. When trying to normalize array
> 6287 versus the median array, for example, the R vs I plot looked like
>
![](../../../web/images/05/DisasterAverted01.gif)
>
> which was much more scattered than most of the other plots, such as
> 7446.
>
![](../../../web/images/05/DisasterAverted02.gif)
>
> When I plotted pairs of arrays versus each other, it became even more
> apparent. Here is what 6287 versus 7446 looked like.
>
![](../../../web/images/05/DisasterAverted03.gif)
>
> Compare this to 7446 versus 7447.
>
![](../../../web/images/05/DisasterAverted04.gif)
>
> It turns out that the order of the genes were not the same in all of
> the files. For example in file 6287, the first ten genes were
>
> 1.  1007\_s\_at
> 2.  1053\_at
> 3.  117\_at
> 4.  121\_at
> 5.  1255\_g\_at
> 6.  1294\_at
> 7.  1316\_at
> 8.  1320\_at
> 9.  1405\_i\_at
> 10. 1431\_at
>
> while in file 7446, the first ten genes were
>
> 1.  117\_at
> 2.  121\_at
> 3.  177\_at
> 4.  179\_at
> 5.  320\_at
> 6.  336\_at
> 7.  564\_at
> 8.  632\_at
> 9.  823\_at
> 10. 1053\_at
>
> By assuming that all the files listed their genes in the exact same
> order, I had effectively shuffled the values of three of the arrays
> and thereby ruined any analyses. To fix this, I had to sort the CSV
> files to insure that the gene names were in the same order for each
> file. Then I added a couple of extra lines of code to double-check
> that the files were now in a consistent order. Details of the code are
> in [Stats: Importing data from a microarray
> experiment.](../model/arrayImport.htm)

> I should have been more careful at the beginning, but at least I
> caught the problem before I ran any serious analyses. Whew!
>
> The big lesson learned here is to always check things as you go along.
> Sometimes an obvious assumption about your data may be mistaken.

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
**[StATS]:** **A disaster averted (May 16, 2005)**.
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->
