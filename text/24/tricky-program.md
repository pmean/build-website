---
title: A tricky program to debug
source: "New"
author: Steve Simon
date: 2024-04-26
categories:
- Blog post
tags:
- R programming
output: html_document
page_update: complete
---

I've had a couple of students bring me R programs that did not work. Looking at the output, I could not figure out why they did not work. It turns out that you have to look at the code itself and not the output. Let me show what happened using a very simple example.

<!---more--->

Let's suppose that I asked students in my Introduction to R class to write a program that prints ten random numbers from a standard normal distribution. You can do this with a single line.

    rnorm(10)

So your student creates the following program.

![](http://www.pmean.com/new-images/24/tricky-program-03.png)

and it produces the following output

![](http://www.pmean.com/new-images/24/tricky-program-01.png)

So where are the ten random numbers? They didn't print. Looking at the output by itself, you would not know why.

To understand what is going on here, you need to understand that RMarkdown (along with Jupyter and Quatro) allows you to run code from a variety of different languages. if you wanted to run Python code, you would enclose it in a program chunk that looks like

![](http://www.pmean.com/new-images/24/tricky-program-04.png)

If you wanted to run Julia code, you would use

![](http://www.pmean.com/new-images/24/tricky-program-05.png)

There are [many other languages][xie1] that you can insert here. 

[xie1]: https://bookdown.org/yihui/rmarkdown/language-engines.html

So what happens, when you forget to specify the language? What happens when you have a bare set of curly braces? What happens when you run the code shown below?

![](http://www.pmean.com/new-images/24/tricky-program-06.png)

Well, a bare set of curly braces tells RMarkdown to display the text inside the chunk as is, without any changes to the spacing or line breaks. I use this construct all the time to display code with proper indenting but without any desire to try to run the code.

It is easy enough to forget the "r" inside the curly braces. When you put it back in (see below),

![](http://www.pmean.com/new-images/24/tricky-program-07.png)

it produces the following output

![](http://www.pmean.com/new-images/24/tricky-program-02.png)

Voila! Problem solved.
