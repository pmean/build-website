---
title: Another regular expression tip
author: Steve Simon
source: http://www.pmean.com/06/RegularExpressionsA.html
date: 2006-05-23
category:
- Blog post
tags:
- Data management
output: html_document
---
**[StATS]:** **Another regular expression tip (May
23, 2006)**. [Category: Data
management](../category/DataManagement.html)

I had a large text file and I had to find the first example of a line
that did NOT begin with the letter A. That\'s easier said than done, but
you can use some special symbols in regular expressions to do this.

Just search for

-   \^\[\^A\]

The first caret (\^) tells you that you need to restrict your attention
to strings that begin a new line. The meaning of the caret changes when
it is inside brackets. Inside brackets, the caret means find anything
except the following character.

If you wanted to search for any line that does not begin with a letter,
use the following

-   \^\[\^A-Za-z\]

To find the first line that does not begin with a blank, use

-   \^\[\^ \]

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
**[StATS]:** **Another regular expression tip (May
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

