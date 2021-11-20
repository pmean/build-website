---
title: More on regular expressions
author: Steve Simon
source: http://www.pmean.com/05/RegularExpressions-05.html
date: 2005-07-21
categories:
- Blog post
tags:
- Data management
output: html_document
---
**[StATS]:** **More on regular expressions (July 21,
2005)** [Category: Data management](../category/DataManagement.html)

As I work more and more with microarrays, the more I realize that having
a knowledge of regular expressions will help. For example, I had a comma
separated file (.CSV) and it had an extra comma at the end of every
line. I wanted to remove those commas, but not any of the others.

It turns out that my text editor (textpad) will allow search and replace
on regular expressions. So I searched for

-   ,\$

and replaced it with a null string. The dollar sign says to match a
string only if it is at the end of a line. If I had wanted to replace
any commas that begin a line of text, I could have searched for

-   \^,

This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children's Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children's Mercy

<!---Do not use
**[StATS]:** **More on regular expressions (July 21,
This page was written by Steve Simon while working at Children's Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children's Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

