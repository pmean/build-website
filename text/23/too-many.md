---
title: Too many colors spoil the graph
source: "New"
author: Steve Simon
date: 2023-09-12
categories:
- Blog post
tags:
- Being updated
output: html_document
---

When you draw a graph, either a bar chart, a scatterplot, or even a pie chart, you have the choice of a broad range of colors that you can use. R, for example, has 657 different colors from aliceblue to yellowgreen. SAS has 13 shades of orange, 33 shades of blue, and 47 shades of green. They even have different shades of black. You have a wealth of colors, but you can't sue all of them in the same graph. The ideal number of colors is 2.

<!---more--->

Here's a brief exercise. It is adapted from an example ofTodd Iverson and Silas Bergen in a course they teach on data visualization. Set a time and count the number of 5's in this graph. 

![Figure 1. Counting exercise](http://www.pmean.com/new-images/23/too-many-01.png)

How long did it take you? Too long, is my guess. Let's try improve this task by using color.

![Figure 2. Counting exercise, revised using nine colors](http://www.pmean.com/new-images/23/too-many-02.png)

You probably did this faster, but not much faster and mostly because the numbers are in the same positions. Let's try one more time.

![Figure 3. Counting exercise, revised using two colors](http://www.pmean.com/new-images/23/too-many-03.png)

How faster were you this time? Much faster, I'm guessing and it wasn't just because of practice.

Use two colors when you want to draw emphasis to a particular subgroup on your graph. Okay, you might claim foul here. It's easier to pick the 5's, but not so easy to pick the 4's and 7's. Fair enough, but this is something you should always consider when drawing a graph. 

What elements of the graph do you want to emphasize? You can't emphasis some elements without de-emphasizing others.  If you use a different color for each group, you end up emphasizing none of the groups.

Here's another lesson that I learned from Naomi Robbins, another expert on data visualization. She points out that 
<span style="color: ##ff000;">you</span>
don't make every word in a sentence a different color. You use a single color to draw emphasis to a particular word or phrase. The same should be true for your graphs.

Restraint is also important for gradients. Often in a graph, you want to show changes in a continuous variable across a range of colors.

Here's a map with a transition from a very light red to a very dark red.

![Figure 4. Map of poverty rate](http://www.pmean.com/new-images/23/too-many-21.png)


![Figure 5. Map of poverty rate](http://www.pmean.com/new-images/23/too-many-22.png)

plot_usmap(data = statepop, values = "pop_2015", color = "red") + 
+     scale_fill_continuous(
+         low = "white", high = "red", name = "Population (2015)", label = scales::comma
+     ) + theme(legend.position = "right")