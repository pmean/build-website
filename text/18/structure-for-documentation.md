---
title: "A simple structure for documentation"
author: "Steve Simon"
source: "http://blog.pmean.com/structure-for-documentation/"
date: "2018-07-24"
categories:
- Blog post
tags:
- Statistical computing
- Teaching resources
output: html_document
page_update: complete
---

Everybody has different standards for documentation, - and if you are already using a standard you like, don't let me stop you. But if you've never used much documentation and decide that you need to do better, here's a guideline that I developed.

<!---More--->

I'm not the best myself at documentation, so I hesitate to offer too much advice. But here goes anyway. Your documentation should include:

-   Your name
    -   and (if you don't mind the publicity) your contact information
-   The date you created this program
    -    in some settings the date of last modification may also be helpful
-   A brief description of the purpose for the program
-   The programming language or statistical package that your program
    uses
    -   Yeah, yeah, it may be obvious that every program in the Introduction to SAS class is written in SAS, but this is still a good habit to develop
-   Any version requirements for your language or package
    -   if you're not sure, say that the program was tested on version x.x, but should run under any other recent version
-   specific add-ons that you needed
    -   or state explicitly that no add-ons or libraries are needed
-   other files (e.g., data) that you need to run this program
    -   and what directory those files are stored in,
-   An explanation of how to run this program
    -   again, this might be painfully obvious, but get in the habit of doing this
-   where you can find this program
    -   either a local directory location for a private program or a repository location if you are making the program available to anyone
-   Restrictions (if any) on who can use this program and how they can use it,

Not every program needs all of these elements, of course, and you may decide that other information is equally important.

How you structure this information is not important, but for your own sake try to develop a consistent format. I don't have a consistent format myself yet, but here's an example

```
This is a SAS program written by Steve Simon on July 21, 2018 and last
modified on July 24, 2018. It reads in a text file of fruit fly survival
times and produces an estimate of the median and quartiles of the
survival distribution. It was tested on SAS v9.4, but should run on any
recent version of SAS. It does not require any special add-ons or
libraries. To run this program, load it into the program editor of SAS
and click on the run icon. This program is not publicly available. It
stored in MyDocuments/survival/src folder on my laptop and requires a
data file, fruitfly.csv, found in the MyDocuments/survival/dat folder.
```







