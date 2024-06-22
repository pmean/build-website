---
title: How wide can you make a line of your web page?
author: Steve Simon
source: http://www.pmean.com/08/HowWide-08.html
date: 2008-05-27
categories:
- Blog post
tags:
- Being updated
- Website details
output: html_document
page_update: partial
---
This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

When you are writing a web page, you do not have much control over how
it is displayed at a remote site. If you really wanted this level of
control, you should use a more rigid format, such as Adobe PDF files.
But there are some serious advantages to the reader to let him/her
control the display of a web page. As a web author, you should strive
to make your web pages look good under a reasonable set of
alternatives, such as differing screen sizes or differing font sizes.

Just about every browser will make reasonable line breaks in html code
to display paragraphs in a readable fashion. But I am finding that
certain things cause problems. If you list the explicit URL as part of
a webpage, this can often cause an awkward line break. Here is an
example. If I list the main page for my website in the middle of a
paragraph (<http://www.pmean.com>), it might look
okay, but it might be long enough to cause an odd page break.

I try to avoid these problems by stripping the redundant http://, by
placing the URL at the very start or very end of a paragraph or by
placing it as a separate bullet point.

Tables can also cause problems. I will sometimes create a table as an
image file. This has it's own problems, of course, and needs to be
used cautiously.

Another problem occurs when you display code for a program. First, it
helps a lot to use a monospace font. I use the <code> tag for this
rather than a specific font.

The line breaks for code need to be tightly controlled. The following
line of code, for example, is not one where you want the browser to
split the lines for you.

`barplot(table(accrual.hist),horiz=TRUE,axes=F,xlab=" ",ylab=" ",space=0,col="white",names.arg=rep("     ",39))`

Most browser windows will naturally try to insert a line break at a
blank, which will split the function argument

`xlab=" "`

right in the middle. A better approach would be to manually insert
line breaks where you want them to be.

`barplot(table(accrual.hist),horiz=TRUE,    axes=F,xlab=" ",ylab=" ",space=0,    col="white",names.arg=rep("     ",39))`

So how long a line of code should you plan for so that the browser
doesn't insert an odd line break that leads to confusion? There is no
guarantee, of course, but here are a few general suggestions.

Look at the following monospace text.

`                 1                    2                 3                    4                 5                    6                 7                    8    12345678901234567890123456789012345678901234567890123456789012345678901234567890`

On my screen, this display works well when the browser window is 800
pixels wide.

![](http://www.pmean.com/new-images/08/HowWide-0801.jpg)
height="229"}

(Note that I am violating one of my unofficial rules which is to keep
a graphic image to about 400 pixels!)

When the screen is 640 pixels wide, you need to use caution. Here it
turns out that anything much more than 60 columns of text will have
the potential for problems.

`                 1                    2                 3                    4                 5                    6   123456789012345678901234567890123456789012345678901234567890`

![](http://www.pmean.com/new-images/08/HowWide-0802.jpg)
height="229"}

At an extreme of 480 pixels wide, you can only fit about 45 columns
comfortably.

`                 1                    2                 3                    4   123456789012345678901234567890123456789012345`

![](http://www.pmean.com/new-images/08/HowWide-0803.jpg)
height="237"}

Does anyone use a web browser window this narrow? I don't know, but
designing for such a narrow window will help when the end user has a
larger font displayed by default.

![](http://www.pmean.com/new-images/08/HowWide-0804.jpg)
height="265"}

The screenshot above, for example, is what a 640 pixel window looks
like with the font size increased twice. Obviously 60 columns would
not work well with this combination of font size and window size.

It's impossible to design for every possible combination, of course.
But it does help to try a few experiments like this to see what will
happen.

This means that you should avoid long lines of code by inserting line
breaks yourself. Ideally, try to use code examples where no line of
code exceeds 45 columns. for complex programs, this is difficult to
achieve, so 60 columns might be a more reasonable limit.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/08/Howwide.html
[sim2]: http://www.pmean.com/original_site.html
