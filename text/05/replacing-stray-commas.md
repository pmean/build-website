---
title: More on regular expressions
author: Steve Simon
source: http://www.pmean.com/05/RegularExpressions-05.html
date: 2005-07-21
categories:
- Blog post
tags:
- Being updated
- Data management
output: html_document
page_update: partial
---
**[StATS]:** **More on regular expressions (July 21,
2005)** [Category: Data management](../category/DataManagement.html)

As I work more and more with microarrays, the more I realize that having
a knowledge of regular expressions will help. For example, I had a comma
separated file (.CSV) and it had an extra comma at the end of every
line. I wanted to remove those commas, but not any of the others.

It turns out that my text editor (textpad) will allow search and replace
on regular expressions. So I searched for

- ,\$

and replaced it with a null string. The dollar sign says to match a
string only if it is at the end of a line. If I had wanted to replace
any commas that begin a line of text, I could have searched for

- \^,

You can find an [earlier version][sim1] of this page on my [website][sim2].

[sim1]: http://www.pmean.com/05/RegularExpressions.html
[sim2]: http://www.pmean.com