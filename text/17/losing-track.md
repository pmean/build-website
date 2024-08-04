---
title: "Losing track of your transformed variables in R"
author: "Steve Simon"
source: "http://blog.pmean.com/losing-track/"
date: "2017-11-22"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

I got an interesting question from one of my students, and it illustrates a subtle issue that may confuse beginning R programmers. The student was trying to compute a ratio of brain weight to body weight in a small data set, but then was unable to calculate any summary statistics on that ratio. Here's what caused the problem.

<!---More--->

The original variables were in a data frame, called sl. There was a bit of an issue because body weight was measured in kilograms and brain weight was measured in grams. So the student first converted brain weight to kilograms with the statement

BrainWtKilo \<- sl\$BrainWt/1000

Something subtle is going on here and let me draw an analogy here. When newspapers report about various people in Afghanistan, they will report a single name and remind the readers parenthetically that many people in Afghanistan have only a single name. This is in contrast to the United States and much of the rest of the world where most people have (at least) two names, and one of the names indicates what family you belong to.

Notice that the original variable, sl\$BrainWt has two names, sl, and BrainWt. The name sl indicates that data frame in which the BrainWt variable "lives". The transformed variable has a single name. That means that your transformed variable has moved from the United States to Afghanistan. If you later try to use that variable using a two part name (sl\$BrainWtKilo) it's like looking for someone within the United States who actually lives in Afghanistan.

So, when you transform new variables in R, you have two choices:

+ Give the transformed variable a single name.

+ Give the transformed variable two names, and one of the names is the name of the data frame that the original variable came from.

I generally prefer the second approach, because it keeps the transformed variables close to the original variables, but either choice is fine. Just be sure to be consistent.

There are a few things that can help.

+ You can find the names of all the variables with a single name with the ls command. Just type ls() without any arguments inside the parentheses.

+ You can find the names of all of the variables within the same data frame using in the names command. Even better is the str command, because it tells you a bit more about each variable than just the name.

+ Always remember to do a quick review of any transformed variables with the summary function.


